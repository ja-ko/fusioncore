# -*- coding: utf-8 -*-

import argparse
import sys
import logging
import configparser
import os
import time
import signal
from threading import Thread

from fusioncore import __version__
from fusioncore import I2C
from fusioncore import database

__author__ = "Jannik Kolodziej"
__copyright__ = "Jannik Kolodziej"
__license__ = "mit"

_logger = logging.getLogger(__name__)

main_esp: I2C.Device = None
making_tschunk = False
last_buzzer = 0.0


def tschunk_make():
    global main_esp, making_tschunk
    try:
        making_tschunk = True  # There won't be a race condition! I AM SURE!
        alc_time, lim_time = read_recipe()
        main_esp.air_enable()
        main_esp.valve_air_close()
        main_esp.valve_alc_open()
        time.sleep(alc_time)
        main_esp.valve_alc_close()
        main_esp.valve_lemon_open()
        time.sleep(lim_time)
        main_esp.valve_lemon_close()
        main_esp.air_disable()
        main_esp.valve_air_open()

    finally:
        making_tschunk = False


def read_config():
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'default.ini')
    config = configparser.ConfigParser()
    config.read(config_path)


def read_recipe():
    config_path = '/tmp/recipe'
    config = configparser.ConfigParser()
    config.read(config_path)

    alc_time = config['Recipe']['alc']
    lim_time = config['Recipe']['lim']

    return float(alc_time), float(lim_time)


def create_main_esp(bus):
    result = I2C.Device("main_esp", 0x23, bus)
    result.register_instrument(I2C.Instrument("sinus", 0x0))
    result.register_instrument(I2C.Instrument("trigger", 0x1))
    result.register_instrument(I2C.Instrument("flow_warm", 0x2))
    result.register_instrument(I2C.Instrument("flow_cold", 0x3))

    result.register_operation(I2C.Operation("air_enable", 0x2))
    result.register_operation(I2C.Operation("air_disable", 0x3))
    result.register_operation(I2C.Operation("valve_alc_open", 0x4))
    result.register_operation(I2C.Operation("valve_alc_close", 0x5))
    result.register_operation(I2C.Operation("valve_lemon_open", 0x6))
    result.register_operation(I2C.Operation("valve_lemon_close", 0x7))
    result.register_operation(I2C.Operation("valve_air_open", 0x8))
    result.register_operation(I2C.Operation("valve_air_close", 0x9))

    result.register_operation(I2C.Operation("pump_warm_enable", 0xa))
    result.register_operation(I2C.Operation("pump_warm_disable", 0xb))
    result.register_operation(I2C.Operation("compressor_enable", 0xc))
    result.register_operation(I2C.Operation("compressor_disable", 0xd))

    result.reset()
    time.sleep(1)
    return result


def update_device_instruments(devices):
    for device in devices:
        device.refresh_instruments()
    time.sleep(0.05)
    for device in devices:
        device.read_instrument_value_buffer()
    time.sleep(0.05)


def measure_rpi_temp():
    file = open('/sys/class/thermal/thermal_zone0/temp', 'r')
    temp = file.read()
    database.store("board_temp", "raspberry", int(temp)/1000.0)


def main_loop():
    with I2C.get_bus(1) as bus:
        global main_esp, last_buzzer
        main_esp = create_main_esp(bus)

        while True:
            frame_started = time.time()
            update_device_instruments([main_esp])
            database.measure_and_store(main_esp)
            if last_buzzer != main_esp.trigger() or os.path.isfile('/tmp/tschunk'):
                if os.path.isfile('/tmp/tschunk'):
                    os.remove('/tmp/tschunk')
                    if not making_tschunk:
                        Thread(target=tschunk_make).start()
                elif last_buzzer == 0.0:
                    last_buzzer = main_esp.trigger()
                else:
                    _logger.info("Trigger pressed")
                    last_buzzer = main_esp.trigger()
                    if not making_tschunk:
                        Thread(target=tschunk_make).start()

            _logger.debug("frame took %f seconds", (time.time() - frame_started))
            time.sleep(1.0 - (time.time() - frame_started))


def parse_args(args):
    """Parse command line parameters

    Args:
      args ([str]): command line parameters as list of strings

    Returns:
      :obj:`argparse.Namespace`: command line parameters namespace
    """
    parser = argparse.ArgumentParser(
        description="Just a Fibonacci demonstration")
    parser.add_argument(
        "--version",
        action="version",
        version="fusioncore {ver}".format(ver=__version__))
    parser.add_argument(
        dest="n",
        help="n-th Fibonacci number",
        type=int,
        metavar="INT")
    parser.add_argument(
        "-v",
        "--verbose",
        dest="loglevel",
        help="set loglevel to INFO",
        action="store_const",
        const=logging.INFO)
    parser.add_argument(
        "-vv",
        "--very-verbose",
        dest="loglevel",
        help="set loglevel to DEBUG",
        action="store_const",
        const=logging.DEBUG)
    return parser.parse_args(args)


def setup_logging(loglevel):
    """Setup basic logging

    Args:
      loglevel (int): minimum loglevel for emitting messages
    """
    logformat = "[%(asctime)s] %(levelname)s:%(name)s:%(message)s"
    logging.basicConfig(level=loglevel, stream=sys.stdout,
                        format=logformat, datefmt="%Y-%m-%d %H:%M:%S")


def sigint_handler(sig, frame):
    #database.list_measurements()
    sys.exit()


def main(args):
    """Main entry point allowing external calls

    Args:
      args ([str]): command line parameter list
    """

    signal.signal(signal.SIGINT, sigint_handler)

    read_config()

    # args = parse_args(args)
    setup_logging(logging.DEBUG)
    main_loop()


def run():
    """Entry point for console_scripts
    """
    main(sys.argv[1:])


if __name__ == "__main__":
    run()
