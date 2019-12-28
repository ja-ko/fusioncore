

from smbus2 import SMBus
from threading import Lock
import struct
import logging
import time
import sys

_logger = logging.getLogger(__name__)

def get_bus(bus):
    return SMBus(bus)


class Instrument:
    def __init__(self, name: str, offset: int):
        self.name = name
        self.offset = offset
        self.value = 0


class Operation:
    def __init__(self, name: str, opcode: int):
        self.name = name
        self.opcode = opcode


class Device:
    def __init__(self, name: str, address: int, bus: SMBus):
        self.name = name
        self.address = address
        self.instruments = {}
        self.operations = []
        self.bus: SMBus = bus
        self.lock = Lock()

        self.register_operation(Operation("refresh_instruments", 0x1))
        self.register_operation(Operation("reset", 0xff))

    def register_instrument(self, instrument: Instrument):
        self.instruments[instrument.offset] = instrument

        def get_instrumented_value():
            return instrument.value

        get_instrumented_value.__name__ = instrument.name
        self.__setattr__(instrument.name, get_instrumented_value)

    def register_operation(self, operation: Operation):
        self.operations.append(operation)

        def call_operation():
            try:
                self.lock.acquire()
                _logger.debug("Calling operation 0x%x", operation.opcode)
                self.bus.write_byte(self.address, operation.opcode)
                time.sleep(0.01)
            finally:
                self.lock.release()

        call_operation.__name__ = operation.name
        self.__setattr__(operation.name, call_operation)

    def read_instrument_value_buffer(self):
        try:
            self.lock.acquire()
            count = self.bus.read_byte(self.address)
            if count % 4 != 0:
                _logger.error("ALERT! Got corrupted byte-count. Resetting.")
                self.reset()
                return
            _logger.debug("Refreshing %d instrumented values", count/4)

            for i in range(0, count, 4):
                value = struct.unpack("f", bytes(self.bus.read_i2c_block_data(self.address, 0x0, 4)))[0]
                key = int(round(i/4))
                if key in self.instruments:
                    self.instruments[key].value = value
        finally:
            self.lock.release()

