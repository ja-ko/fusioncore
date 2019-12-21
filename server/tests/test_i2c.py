import unittest
import time
from fusioncore import I2C



class TestI2C(unittest.TestCase):
    def test_dynamic_method(self):
        dev = I2C.Device("test", 0x23, None)
        dev.register_operation(I2C.Operation("do_test", 0x17))
        dev.do_test()
        self.assertEqual(True, False)

    def test_read_instruments(self):
        dev = I2C.Device("test", 0x23, None)
        dev.register_instrument(I2C.Instrument("temp_1", 0x1))
        dev.register_instrument(I2C.Instrument("temp_2", 0x2))
        dev.register_instrument(I2C.Instrument("temp_3", 0x3))
        dev.refresh_instruments()
        time.sleep(0.02)



if __name__ == '__main__':
    unittest.main()
