
import datetime
import decimal

from pony.orm import *

from fusioncore import I2C

db = Database()


class Measurement(db.Entity):
    id = PrimaryKey(int, auto=True)
    name = Required(str)
    timestamp = Required(datetime.datetime, default=datetime.datetime.utcnow())
    value = Required(decimal.Decimal)


db.bind('sqlite', ':memory:')
db.generate_mapping(create_tables=True)


@db_session
def measure_and_store(*devices: I2C.Device):
    for device in devices:
        Measurement(name=device.name, value=(device.read()))


@db_session
def list_measurements():
    Measurement.select().show()
