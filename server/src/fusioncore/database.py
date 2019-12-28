
import datetime
import decimal

from pony.orm import *

from fusioncore import I2C

db = Database()


class Measurement(db.Entity):
    id = PrimaryKey(int, auto=True)
    device = Required(str)
    name = Required(str)
    timestamp = Required(datetime.datetime, default=datetime.datetime.utcnow)
    value = Required(decimal.Decimal)


db.bind(provider='postgres', user='postgres', password='', host='127.0.0.1', database='fusioncore')
db.generate_mapping(create_tables=True)


@db_session
def measure_and_store(*devices: I2C.Device):
    for device in devices:
        for key in device.instruments:
            instrument = device.instruments[key]
            Measurement(name=instrument.name, device=device.name, value=instrument.value)


@db_session
def store(name: str, device: str, value: float):
    Measurement(name=name, device=device, value=value)


@db_session
def list_measurements():
    Measurement.select().show()
