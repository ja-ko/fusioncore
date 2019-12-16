# -*- coding: utf-8 -*-

import argparse
import sys
import logging
import configparser
import os
import time
import signal

from fusioncore import __version__
from fusioncore import I2C
from fusioncore import database

__author__ = "Jannik Kolodziej"
__copyright__ = "Jannik Kolodziej"
__license__ = "mit"

_logger = logging.getLogger(__name__)


def read_config():
    config_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'default.ini')
    config = configparser.ConfigParser()
    config.read(config_path)


def main_loop():
    with I2C.get_bus(1) as bus:
        temperature_refrigerator_cold = I2C.Device("temperature_refrigerator_cold", 0x10, 0x1, bus)
        temperature_refrigerator_warm = I2C.Device("temperature_refrigerator_warm", 0x20, 0x1, bus)
        flow_refrigerator = I2C.Device("flow_refrigerator", 0x30, 0x1, bus)

        while True:
            database.measure_and_store(temperature_refrigerator_cold, temperature_refrigerator_warm, flow_refrigerator)
            time.sleep(1)



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


def sigint_handler():
    database.list_measurements()
    sys.exit()


def main(args):
    """Main entry point allowing external calls

    Args:
      args ([str]): command line parameter list
    """

    signal.signal(signal.SIGINT, sigint_handler())

    read_config()

    args = parse_args(args)
    setup_logging(args.loglevel)
    _logger.debug("Starting crazy calculations...")
    print("The {}-th Fibonacci number is {}".format(args.n, fib(args.n)))
    _logger.info("Script ends here")


def run():
    """Entry point for console_scripts
    """
    main(sys.argv[1:])


if __name__ == "__main__":
    run()
