

from smbus2 import SMBus


def get_bus(bus):
    return SMBus(bus)


class Device:
    def __init__(self, name: str, address: int, register: int, bus: SMBus):
        self.name = name
        self.address = address
        self.register = register
        self.bus = bus

    def read(self):
        raise NotImplementedError

    def write(self):
        raise NotImplementedError


