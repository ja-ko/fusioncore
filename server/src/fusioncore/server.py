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


def tschunk_make():
    global main_esp, making_tschunk
    if making_tschunk:
        return
    try:
        making_tschunk = True  # There won't be a race condition! I AM SURE!
        main_esp.test()
        time.sleep(2.75)
        main_esp.test2()
    finally:
        making_tschunk = False


def read_config():
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'default.ini')
    config = configparser.ConfigParser()
    config.read(config_path)


def create_main_esp(bus):
    result = I2C.Device("main_esp", 0x23, bus)
    result.register_instrument(I2C.Instrument("sinus", 0x0))
    result.register_operation(I2C.Operation("test", 0x2))
    result.register_operation(I2C.Operation("test2", 0x3))
    return result


def update_device_instruments(devices):
    for device in devices:
        device.refresh_instruments()
    time.sleep(0.05)
    for device in devices:
        device.read_instrument_value_buffer()
    time.sleep(0.05)


def main_loop():
    with I2C.get_bus(1) as bus:
        global main_esp
        main_esp = create_main_esp(bus)

        while True:
            frame_started = time.time()
            update_device_instruments([main_esp])
            database.measure_and_store(main_esp)

            logging.debug("frame took %f seconds", (time.time() - frame_started))
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
