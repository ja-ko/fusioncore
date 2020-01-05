EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "FusionCore Expansion"
Date "2020-01-04"
Rev "A"
Comp "JKO"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5834BC4A
P 1200 9800
F 0 "H1" H 1050 9900 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1200 9650 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1100 9800 60  0001 C CNN
F 3 "" H 1100 9800 60  0001 C CNN
	1    1200 9800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5834BCDF
P 2200 9800
F 0 "H2" H 2050 9900 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2200 9650 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2100 9800 60  0001 C CNN
F 3 "" H 2100 9800 60  0001 C CNN
	1    2200 9800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5834BD62
P 1200 10350
F 0 "H3" H 1050 10450 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 1200 10200 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 1100 10350 60  0001 C CNN
F 3 "" H 1100 10350 60  0001 C CNN
	1    1200 10350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5834BDED
P 2250 10350
F 0 "H4" H 2100 10450 60  0000 C CNN
F 1 "3mm_Mounting_Hole" H 2250 10200 60  0000 C CNN
F 2 "project_footprints:NPTH_3mm_ID" H 2150 10350 60  0001 C CNN
F 3 "" H 2150 10350 60  0001 C CNN
	1    2250 10350
	1    0    0    -1  
$EndComp
$Comp
L raspberrypi_hat:OX40HAT J3
U 1 1 58DFC771
P 2500 1250
F 0 "J3" H 2850 1350 50  0000 C CNN
F 1 "40HAT" H 2200 1350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2500 1450 50  0001 C CNN
F 3 "" H 1800 1250 50  0000 C CNN
	1    2500 1250
	1    0    0    -1  
$EndComp
Text Label 3150 7400 2    60   ~ 0
3V3_PI
Text Label 7200 1650 2    60   ~ 0
5V_PI
Wire Wire Line
	6450 1650 6600 1650
Text Label 5350 1650 0    60   ~ 0
5V
Wire Wire Line
	5350 1650 5800 1650
Text Notes 5200 1000 0    118  ~ 24
5V Powered HAT Protection
Text Notes 4950 1300 0    60   ~ 0
This is the recommended 5V rail protection for \na HAT with power going to the Pi.\nSee https://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
$Comp
L raspberrypi_hat:DMG2305UX Q1
U 1 1 58E14EB1
P 6200 1650
F 0 "Q1" V 6350 1800 50  0000 R CNN
F 1 "DMG2305UX" V 6350 1600 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 1750 50  0001 C CNN
F 3 "" H 6200 1650 50  0000 C CNN
	1    6200 1650
	0    -1   -1   0   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 1 1 58E1538B
P 5900 2250
F 0 "Q2" H 6100 2325 50  0000 L CNN
F 1 "DMMT5401" H 6100 2250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6100 2175 50  0000 L CIN
F 3 "" H 5900 2250 50  0000 L CNN
	1    5900 2250
	-1   0    0    1   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 2 1 58E153D6
P 6500 2250
F 0 "Q2" H 6700 2325 50  0000 L CNN
F 1 "DMMT5401" H 6700 2250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6700 2175 50  0000 L CIN
F 3 "" H 6500 2250 50  0000 L CNN
	2    6500 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 58E15896
P 5800 2850
F 0 "R23" V 5880 2850 50  0000 C CNN
F 1 "10K" V 5800 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 5730 2850 50  0001 C CNN
F 3 "" H 5800 2850 50  0001 C CNN
	1    5800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 58E158A1
P 6600 2850
F 0 "R24" V 6680 2850 50  0000 C CNN
F 1 "47K" V 6600 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 6530 2850 50  0001 C CNN
F 3 "" H 6600 2850 50  0001 C CNN
	1    6600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58E15A41
P 5800 3050
F 0 "#PWR01" H 5800 2800 50  0001 C CNN
F 1 "GND" H 5800 2900 50  0000 C CNN
F 2 "" H 5800 3050 50  0000 C CNN
F 3 "" H 5800 3050 50  0000 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 58E15A9E
P 6600 3050
F 0 "#PWR02" H 6600 2800 50  0001 C CNN
F 1 "GND" H 6600 2900 50  0000 C CNN
F 2 "" H 6600 3050 50  0000 C CNN
F 3 "" H 6600 3050 50  0000 C CNN
	1    6600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3050 5800 3000
Wire Wire Line
	6600 3050 6600 3000
Wire Wire Line
	6600 2450 6600 2550
Wire Wire Line
	6200 1900 6200 2550
Wire Wire Line
	6200 2550 6600 2550
Connection ~ 6600 2550
Wire Wire Line
	5800 2450 5800 2600
Wire Wire Line
	6100 2250 6100 2600
Wire Wire Line
	5800 2600 6100 2600
Connection ~ 5800 2600
Wire Wire Line
	6300 2600 6300 2250
Connection ~ 6100 2600
Wire Wire Line
	5800 2050 5800 1650
Connection ~ 5800 1650
Wire Wire Line
	6600 2050 6600 1650
Connection ~ 6600 1650
$Comp
L raspberrypi_hat:CAT24C32 U2
U 1 1 58E1713F
P 2100 5850
F 0 "U2" H 2450 6200 50  0000 C CNN
F 1 "CAT24C32" H 1850 6200 50  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2100 5850 50  0001 C CNN
F 3 "" H 2100 5850 50  0000 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 58E17715
P 2350 7400
F 0 "R6" V 2430 7400 50  0000 C CNN
F 1 "3.9K" V 2350 7400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2280 7400 50  0001 C CNN
F 3 "" H 2350 7400 50  0001 C CNN
	1    2350 7400
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 58E17720
P 2350 7650
F 0 "R8" V 2430 7650 50  0000 C CNN
F 1 "3.9K" V 2350 7650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 2280 7650 50  0001 C CNN
F 3 "" H 2350 7650 50  0001 C CNN
	1    2350 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 7400 2150 7400
Wire Wire Line
	1250 7650 2150 7650
Wire Wire Line
	2150 7500 1250 7500
Wire Wire Line
	2150 7750 1250 7750
Wire Wire Line
	2150 7750 2150 7650
Connection ~ 2150 7650
Wire Wire Line
	2150 7500 2150 7400
Connection ~ 2150 7400
Wire Wire Line
	2500 7400 2700 7400
Wire Wire Line
	2700 7650 2500 7650
Connection ~ 2700 7400
Text Label 1250 7400 0    60   ~ 0
ID_SD_EEPROM_pu
Text Label 1250 7500 0    60   ~ 0
ID_SD_EEPROM
Text Label 1250 7650 0    60   ~ 0
ID_SC_EEPROM_pu
Text Label 1250 7750 0    60   ~ 0
ID_SC_EEPROM
Wire Wire Line
	3450 6050 2600 6050
Wire Wire Line
	2600 5950 3450 5950
Text Label 3450 6050 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 3450 5950 2    60   ~ 0
ID_SC_EEPROM_pu
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 58E18D32
P 750 6100
F 0 "J9" H 750 6250 50  0000 C CNN
F 1 "CONN_01X02" V 850 6100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 750 6100 50  0001 C CNN
F 3 "" H 750 6100 50  0000 C CNN
	1    750  6100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R29
U 1 1 58E19E51
P 1550 6250
F 0 "R29" V 1630 6250 50  0000 C CNN
F 1 "10K" V 1550 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1480 6250 50  0001 C CNN
F 3 "" H 1550 6250 50  0001 C CNN
	1    1550 6250
	-1   0    0    1   
$EndComp
Text Label 2400 5350 2    60   ~ 0
3V3_PI
Wire Wire Line
	2100 5350 2400 5350
Wire Wire Line
	2100 5350 2100 5450
$Comp
L power:GND #PWR03
U 1 1 58E1A612
P 1050 5750
F 0 "#PWR03" H 1050 5500 50  0001 C CNN
F 1 "GND" H 1050 5600 50  0000 C CNN
F 2 "" H 1050 5750 50  0000 C CNN
F 3 "" H 1050 5750 50  0000 C CNN
	1    1050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5650 1300 5750
Wire Wire Line
	1050 5650 1300 5650
Wire Wire Line
	1600 5750 1300 5750
Connection ~ 1300 5750
Wire Wire Line
	1300 5850 1600 5850
$Comp
L power:GND #PWR04
U 1 1 58E1AF98
P 1050 6150
F 0 "#PWR04" H 1050 5900 50  0001 C CNN
F 1 "GND" H 1050 6000 50  0000 C CNN
F 2 "" H 1050 6150 50  0000 C CNN
F 3 "" H 1050 6150 50  0000 C CNN
	1    1050 6150
	1    0    0    -1  
$EndComp
Text Notes 3250 5350 0    60   ~ 0
EEPROM WRITE ENABLE
$Comp
L Device:R R11
U 1 1 58E22900
P 1300 6100
F 0 "R11" V 1380 6100 50  0000 C CNN
F 1 "DNP" V 1300 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.84x1.00mm_HandSolder" V 1230 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0001 C CNN
	1    1300 6100
	0    1    1    0   
$EndComp
Text Notes 1550 7050 0    118  ~ 24
Pullup Resistors
Text Notes 2000 4800 0    118  ~ 24
HAT EEPROM
Text Notes 850  9500 0    118  ~ 24
Mounting Holes
Text Notes 1550 1000 0    118  ~ 24
40-Pin HAT Connector
Text Label 700  3150 0    60   ~ 0
GND
Wire Wire Line
	1900 3150 700  3150
Text Label 700  2550 0    60   ~ 0
ID_SD_EEPROM
Wire Wire Line
	1900 2550 700  2550
Text Label 700  2450 0    60   ~ 0
GND
Wire Wire Line
	1900 2450 700  2450
Text Label 700  1650 0    60   ~ 0
GND
Wire Wire Line
	1900 1650 700  1650
Text Label 700  1250 0    60   ~ 0
3V3_PI
Wire Wire Line
	1900 1250 700  1250
Wire Wire Line
	3100 1850 4300 1850
Wire Wire Line
	3100 2150 4300 2150
Wire Wire Line
	3100 2550 4300 2550
Wire Wire Line
	3100 2650 4300 2650
Wire Wire Line
	3100 2850 4300 2850
Text Label 4300 1850 2    60   ~ 0
GND
Text Label 4300 2150 2    60   ~ 0
GND
Text Label 4300 2650 2    60   ~ 0
GND
Text Label 4300 2550 2    60   ~ 0
ID_SC_EEPROM
Text Label 4300 2850 2    60   ~ 0
GND
Text Label 4300 1450 2    60   ~ 0
GND
Wire Wire Line
	3100 1450 4300 1450
Text Label 4300 1350 2    60   ~ 0
5V_PI
Wire Wire Line
	3100 1350 4300 1350
Text Label 4300 1250 2    60   ~ 0
5V_PI
Wire Wire Line
	3100 1250 4300 1250
Wire Wire Line
	2700 7650 2700 7400
Text Notes 1200 5200 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
Text Notes 1100 7250 0    60   ~ 0
These are just pullup resistors for the I2C bus on the EEPROM.\nThe resistor values are per the HAT spec.
$Comp
L power:GND #PWR05
U 1 1 58E3CC10
P 2100 6350
F 0 "#PWR05" H 2100 6100 50  0001 C CNN
F 1 "GND" H 2100 6200 50  0000 C CNN
F 2 "" H 2100 6350 50  0000 C CNN
F 3 "" H 2100 6350 50  0000 C CNN
	1    2100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6250 2100 6350
Text Label 1800 6550 2    60   ~ 0
3V3_PI
Wire Wire Line
	1800 6550 1550 6550
Wire Wire Line
	1550 6550 1550 6400
Wire Wire Line
	1450 6050 1550 6050
Wire Wire Line
	1550 6000 1550 6050
Wire Wire Line
	1050 5650 1050 5750
Connection ~ 1300 5650
Wire Wire Line
	1450 6050 1450 6100
Connection ~ 1550 6050
Wire Wire Line
	950  6100 1050 6100
Wire Wire Line
	1050 6150 1050 6100
Connection ~ 1050 6100
Wire Wire Line
	950  6000 1550 6000
Wire Wire Line
	6600 2550 6600 2700
Wire Wire Line
	5800 2600 5800 2700
Wire Wire Line
	6100 2600 6300 2600
Wire Wire Line
	5800 1650 5950 1650
Wire Wire Line
	6600 1650 7200 1650
Wire Wire Line
	2150 7650 2200 7650
Wire Wire Line
	2150 7400 2200 7400
Wire Wire Line
	2700 7400 3150 7400
Wire Wire Line
	1300 5750 1300 5850
Wire Wire Line
	1300 5650 1600 5650
Wire Wire Line
	1550 6050 1600 6050
Wire Wire Line
	1550 6050 1550 6100
Wire Wire Line
	1050 6100 1150 6100
Text Label 11950 1400 0    50   ~ 0
3V3
Text Label 700  2050 0    50   ~ 0
3V3_PI
Wire Wire Line
	12950 1400 13750 1400
Text Label 11950 1600 0    50   ~ 0
GND
Wire Wire Line
	11950 1600 12150 1600
Connection ~ 12150 1600
Wire Wire Line
	12150 2000 12150 1800
Connection ~ 12150 1800
Wire Wire Line
	12450 2500 12300 2500
Wire Wire Line
	12300 2500 12300 1500
Connection ~ 12300 1400
Wire Wire Line
	11950 1400 12300 1400
Connection ~ 12300 1500
Wire Wire Line
	12300 1500 12300 1400
Text Label 11950 1700 0    50   ~ 0
5V
Wire Wire Line
	12050 1900 12050 1700
Connection ~ 12050 1700
Wire Wire Line
	12050 1700 11950 1700
Text Label 11950 2100 0    50   ~ 0
PWRG
Text Label 11950 2200 0    50   ~ 0
5VSTB
Wire Wire Line
	12050 2400 12050 2300
Text Label 11950 2300 0    50   ~ 0
12V
Wire Wire Line
	12950 1500 13750 1500
Text Label 13550 1500 0    50   ~ 0
-12V
Text Label 13500 1700 0    50   ~ 0
PS_ON
Wire Wire Line
	12950 1800 14000 1800
Wire Wire Line
	12950 1900 14000 1900
Wire Wire Line
	14000 1900 14000 1800
Wire Wire Line
	12950 2000 14000 2000
Wire Wire Line
	14000 2000 14000 1900
Connection ~ 14000 1900
Text Label 13650 2100 0    50   ~ 0
NC
Wire Wire Line
	12950 2500 13400 2500
Wire Wire Line
	14000 2500 14000 2000
Connection ~ 14000 2000
Wire Wire Line
	14000 1800 14000 1600
Connection ~ 14000 1800
Wire Wire Line
	14000 1600 14000 1000
Wire Wire Line
	14000 1000 12150 1000
Wire Wire Line
	12150 1000 12150 1600
Connection ~ 14000 1600
Wire Wire Line
	13750 1400 13750 1050
Wire Wire Line
	13750 1050 12300 1050
Wire Wire Line
	12300 1050 12300 1400
Wire Wire Line
	12950 2300 13500 2300
Wire Wire Line
	13500 2200 13500 2300
Connection ~ 13500 2300
Wire Wire Line
	13500 2300 13750 2300
Wire Wire Line
	12950 2400 13500 2400
Wire Wire Line
	13500 2400 13500 2300
Text Label 13650 2300 0    50   ~ 0
5V
Text Notes 12450 950  0    118  ~ 24
ATX Connector
Wire Wire Line
	13400 2500 13400 2600
Connection ~ 13400 2500
Wire Wire Line
	13400 2500 14000 2500
$Comp
L power:GND #PWR0101
U 1 1 5E1AC1EE
P 13400 2600
F 0 "#PWR0101" H 13400 2350 50  0001 C CNN
F 1 "GND" H 13405 2427 50  0000 C CNN
F 2 "" H 13400 2600 50  0001 C CNN
F 3 "" H 13400 2600 50  0001 C CNN
	1    13400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1550 700  1550
Text Label 700  1550 0    50   ~ 0
1W
Text Notes 12550 3500 0    118  ~ 24
1 Wire Port
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5E1CBB14
P 13550 3900
F 0 "J2" H 13630 3942 50  0000 L CNN
F 1 "Temp_1" H 13630 3851 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 13550 3900 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 13550 3900 50  0001 C CNN
	1    13550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 3800 13000 3800
Wire Wire Line
	13000 3800 13000 3600
Wire Wire Line
	12450 3900 12700 3900
Text Label 12450 3600 0    50   ~ 0
3V3_PI
$Comp
L Device:R R1
U 1 1 5E1E3589
P 12700 3750
F 0 "R1" H 12770 3796 50  0000 L CNN
F 1 "4.7K" H 12770 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_01005_0402Metric" V 12630 3750 50  0001 C CNN
F 3 "~" H 12700 3750 50  0001 C CNN
	1    12700 3750
	1    0    0    -1  
$EndComp
Connection ~ 12700 3600
Wire Wire Line
	12700 3600 12450 3600
Connection ~ 12700 3900
Wire Wire Line
	12700 3600 13000 3600
Wire Wire Line
	12700 3900 13100 3900
Wire Wire Line
	12450 4000 13200 4000
Text Label 12450 3900 0    50   ~ 0
1W
Text Notes 13300 6100 0    118  ~ 24
Pumps
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E1EE561
P 15150 6150
F 0 "J6" H 15230 6142 50  0000 L CNN
F 1 "Pump_Water_Cold" H 15230 6051 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6150 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6150 50  0001 C CNN
	1    15150 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5E1F4E96
P 13550 4350
F 0 "J4" H 13630 4392 50  0000 L CNN
F 1 "Temp_2" H 13630 4301 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 13550 4350 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 13550 4350 50  0001 C CNN
	1    13550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 3800 13000 4250
Wire Wire Line
	13000 4250 13350 4250
Connection ~ 13000 3800
Wire Wire Line
	13100 3900 13100 4350
Wire Wire Line
	13100 4350 13350 4350
Connection ~ 13100 3900
Wire Wire Line
	13100 3900 13350 3900
Wire Wire Line
	13200 4000 13200 4450
Wire Wire Line
	13200 4450 13350 4450
Connection ~ 13200 4000
Wire Wire Line
	13200 4000 13350 4000
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5E2262F5
P 15150 6450
F 0 "J7" H 15230 6442 50  0000 L CNN
F 1 "Pump_Water_Warm" H 15230 6351 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6450 50  0001 C CNN
	1    15150 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5E22672E
P 15150 6750
F 0 "J8" H 15230 6742 50  0000 L CNN
F 1 "Pump_Air" H 15230 6651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6750 50  0001 C CNN
	1    15150 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5E226FE2
P 15150 7050
F 0 "J10" H 15230 7042 50  0000 L CNN
F 1 "Pump_Misc_1" H 15230 6951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 7050 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 7050 50  0001 C CNN
	1    15150 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5E227566
P 15150 7350
F 0 "J11" H 15230 7342 50  0000 L CNN
F 1 "Pump_Misc_2" H 15230 7251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 7350 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 7350 50  0001 C CNN
	1    15150 7350
	1    0    0    -1  
$EndComp
Connection ~ 13450 8400
Wire Wire Line
	13450 8400 13450 8600
$Comp
L power:GND #PWR0102
U 1 1 5E284F13
P 13450 8600
F 0 "#PWR0102" H 13450 8350 50  0001 C CNN
F 1 "GND" H 13455 8427 50  0000 C CNN
F 2 "" H 13450 8600 50  0001 C CNN
F 3 "" H 13450 8600 50  0001 C CNN
	1    13450 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 7450 14850 7450
Wire Wire Line
	14050 7150 14850 7150
Wire Wire Line
	13450 6850 14850 6850
Wire Wire Line
	12850 6550 14850 6550
Wire Wire Line
	12250 6250 14850 6250
Wire Wire Line
	14950 6150 14650 6150
Text Label 11500 6150 0    50   ~ 0
12V
Wire Wire Line
	12100 6150 12100 6450
Wire Wire Line
	12100 6450 14650 6450
Connection ~ 12100 6150
Wire Wire Line
	12100 6150 11500 6150
Wire Wire Line
	12100 6450 12100 6750
Wire Wire Line
	12100 6750 14650 6750
Connection ~ 12100 6450
Wire Wire Line
	12100 6750 12100 7050
Wire Wire Line
	12100 7050 14650 7050
Connection ~ 12100 6750
Wire Wire Line
	12100 7050 12100 7350
Wire Wire Line
	12100 7350 14650 7350
Connection ~ 12100 7050
Wire Wire Line
	11950 8200 11950 8000
Wire Wire Line
	11950 8000 11500 8000
Text Label 11500 8000 0    50   ~ 0
Pump_WC
Wire Wire Line
	12550 8200 12550 7900
Wire Wire Line
	12550 7900 11500 7900
Wire Wire Line
	13150 8200 13150 7800
Wire Wire Line
	13150 7800 11500 7800
Wire Wire Line
	13750 8200 13750 7700
Wire Wire Line
	14650 7450 14650 8000
Wire Wire Line
	14050 7150 14050 8000
Wire Wire Line
	13450 6850 13450 8000
Wire Wire Line
	12850 8000 12850 6550
Wire Wire Line
	11500 7700 13750 7700
Wire Wire Line
	12250 6250 12250 8000
Wire Wire Line
	11500 7600 14350 7600
Wire Wire Line
	14350 7600 14350 8200
Text Label 11500 7900 0    50   ~ 0
Pump_WW
Text Label 11500 7800 0    50   ~ 0
Pump_A
Text Label 11500 7700 0    50   ~ 0
Pump_M1
Text Label 11500 7600 0    50   ~ 0
Pump_M2
NoConn ~ 13750 2100
NoConn ~ 13750 1500
$Comp
L Transistor_FET:2N7002 Q7
U 1 1 5E25072D
P 14550 8200
F 0 "Q7" H 14755 8246 50  0000 L CNN
F 1 "AO3400A" H 14755 8155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14750 8125 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 14550 8200 50  0001 L CNN
	1    14550 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 8400 14050 8400
Wire Wire Line
	14650 8400 14050 8400
Connection ~ 14050 8400
$Comp
L Transistor_FET:2N7002 Q6
U 1 1 5E229573
P 13950 8200
F 0 "Q6" H 14155 8246 50  0000 L CNN
F 1 "AO3400A" H 14155 8155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14150 8125 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13950 8200 50  0001 L CNN
	1    13950 8200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q5
U 1 1 5E25D46D
P 13350 8200
F 0 "Q5" H 13555 8246 50  0000 L CNN
F 1 "AO3400A" H 13555 8155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13550 8125 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13350 8200 50  0001 L CNN
	1    13350 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 8400 12850 8400
Wire Wire Line
	12850 8400 13450 8400
Connection ~ 12850 8400
$Comp
L Transistor_FET:2N7002 Q4
U 1 1 5E2649AC
P 12750 8200
F 0 "Q4" H 12955 8246 50  0000 L CNN
F 1 "AO3400A" H 12955 8155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12950 8125 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12750 8200 50  0001 L CNN
	1    12750 8200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5E2672F5
P 12150 8200
F 0 "Q3" H 12355 8246 50  0000 L CNN
F 1 "AO3400A" H 12355 8155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12350 8125 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12150 8200 50  0001 L CNN
	1    12150 8200
	1    0    0    -1  
$EndComp
Text Notes 9200 8400 0    118  ~ 24
Valves
$Comp
L Connector_Generic:Conn_01x02 J21
U 1 1 5E436BCD
P 10550 10700
F 0 "J21" V 10422 10780 50  0000 L CNN
F 1 "Valve_Air_Out" V 10650 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 10550 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 10550 10700 50  0001 C CNN
	1    10550 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 5E45E98B
P 10200 10700
F 0 "J20" V 10072 10780 50  0000 L CNN
F 1 "Valve_Air_Rum" V 10400 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 10200 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 10200 10700 50  0001 C CNN
	1    10200 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J19
U 1 1 5E45F317
P 9850 10700
F 0 "J19" V 9722 10780 50  0000 L CNN
F 1 "Valve_Air_Lime" V 9950 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 9850 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 9850 10700 50  0001 C CNN
	1    9850 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J18
U 1 1 5E4604B2
P 9500 10700
F 0 "J18" V 9372 10780 50  0000 L CNN
F 1 "Valve_M4" V 9700 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 9500 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 9500 10700 50  0001 C CNN
	1    9500 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J17
U 1 1 5E460EBD
P 9150 10700
F 0 "J17" V 9022 10780 50  0000 L CNN
F 1 "Valve_M3" V 9250 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 9150 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 9150 10700 50  0001 C CNN
	1    9150 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 5E4621A2
P 8800 10700
F 0 "J16" V 8672 10780 50  0000 L CNN
F 1 "Valve_M2" V 9000 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 8800 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 8800 10700 50  0001 C CNN
	1    8800 10700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 5E462CF7
P 8450 10700
F 0 "J15" V 8322 10780 50  0000 L CNN
F 1 "Valve_M1" V 8550 10650 50  0000 C TNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 8450 10700 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 8450 10700 50  0001 C CNN
	1    8450 10700
	0    1    1    0   
$EndComp
Wire Wire Line
	11050 10300 10550 10300
Wire Wire Line
	8450 10300 8450 10500
Wire Wire Line
	8800 10300 8800 10500
Connection ~ 8800 10300
Wire Wire Line
	8800 10300 8750 10300
Wire Wire Line
	9150 10500 9150 10300
Connection ~ 9150 10300
Wire Wire Line
	9150 10300 9100 10300
Wire Wire Line
	9500 10500 9500 10300
Connection ~ 9500 10300
Wire Wire Line
	9500 10300 9450 10300
Wire Wire Line
	9850 10500 9850 10300
Connection ~ 9850 10300
Wire Wire Line
	9850 10300 9800 10300
Wire Wire Line
	10200 10500 10200 10300
Connection ~ 10200 10300
Wire Wire Line
	10200 10300 10150 10300
Wire Wire Line
	10550 10500 10550 10300
Connection ~ 10550 10300
Wire Wire Line
	10550 10300 10500 10300
Text Label 11050 10300 0    50   ~ 0
12V
$Comp
L Transistor_FET:2N7002 Q14
U 1 1 5E4ABE26
P 10550 9850
F 0 "Q14" H 10755 9804 50  0000 L CNN
F 1 "AO3400A" H 10755 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10750 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 10550 9850 50  0001 L CNN
	1    10550 9850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q13
U 1 1 5E4BE4F8
P 10200 9500
F 0 "Q13" H 10405 9454 50  0000 L CNN
F 1 "AO3400A" H 10405 9545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10400 9425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 10200 9500 50  0001 L CNN
	1    10200 9500
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q12
U 1 1 5E4C2530
P 9850 9150
F 0 "Q12" H 10055 9104 50  0000 L CNN
F 1 "AO3400A" H 10055 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 9075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9850 9150 50  0001 L CNN
	1    9850 9150
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q11
U 1 1 5E4C91A1
P 9500 9850
F 0 "Q11" H 9705 9804 50  0000 L CNN
F 1 "AO3400A" H 9705 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9500 9850 50  0001 L CNN
	1    9500 9850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q10
U 1 1 5E4F8845
P 9150 9500
F 0 "Q10" H 9355 9454 50  0000 L CNN
F 1 "AO3400A" H 9355 9545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9350 9425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9150 9500 50  0001 L CNN
	1    9150 9500
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q9
U 1 1 5E5006E3
P 8800 9150
F 0 "Q9" H 9005 9104 50  0000 L CNN
F 1 "AO3400A" H 9005 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9000 9075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 8800 9150 50  0001 L CNN
	1    8800 9150
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 10500 10450 10050
Wire Wire Line
	10450 9650 10450 8650
Wire Wire Line
	10100 9300 10100 8650
Wire Wire Line
	9750 8950 9750 8650
Wire Wire Line
	9750 8650 10100 8650
Connection ~ 10100 8650
Wire Wire Line
	10100 8650 10450 8650
Wire Wire Line
	9400 9650 9400 8650
Wire Wire Line
	9400 8650 9600 8650
Connection ~ 9750 8650
Wire Wire Line
	9050 9300 9050 8650
Connection ~ 9400 8650
Wire Wire Line
	8700 8950 8700 8650
Wire Wire Line
	8700 8650 9050 8650
Connection ~ 9050 8650
Wire Wire Line
	9050 8650 9400 8650
$Comp
L power:GND #PWR08
U 1 1 5E594643
P 9600 8650
F 0 "#PWR08" H 9600 8400 50  0001 C CNN
F 1 "GND" H 9605 8477 50  0000 C CNN
F 2 "" H 9600 8650 50  0001 C CNN
F 3 "" H 9600 8650 50  0001 C CNN
	1    9600 8650
	1    0    0    -1  
$EndComp
Connection ~ 9600 8650
Wire Wire Line
	9600 8650 9750 8650
$Comp
L power:GND #PWR010
U 1 1 5E5A0C99
P 12450 4000
F 0 "#PWR010" H 12450 3750 50  0001 C CNN
F 1 "GND" H 12455 3827 50  0000 C CNN
F 2 "" H 12450 4000 50  0001 C CNN
F 3 "" H 12450 4000 50  0001 C CNN
	1    12450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 10500 10100 9700
Wire Wire Line
	9750 10500 9750 9350
Wire Wire Line
	9400 10500 9400 10050
Wire Wire Line
	9050 10500 9050 9700
Wire Wire Line
	8350 10050 8350 10500
$Comp
L Transistor_FET:2N7002 Q8
U 1 1 5E5DDBAC
P 8450 9850
F 0 "Q8" H 8655 9804 50  0000 L CNN
F 1 "AO3400A" H 8655 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8650 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 8450 9850 50  0001 L CNN
	1    8450 9850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 9650 8350 8650
Wire Wire Line
	8350 8650 8700 8650
Connection ~ 8700 8650
Wire Wire Line
	10750 9850 11050 9850
Wire Wire Line
	10400 9500 11050 9500
Wire Wire Line
	10050 9150 11050 9150
$Comp
L Device:D_Small D8
U 1 1 5E696028
P 14750 6200
F 0 "D8" H 14750 6313 50  0000 C CNN
F 1 "D_Small" H 14750 6314 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6200 50  0001 C CNN
F 3 "~" V 14750 6200 50  0001 C CNN
	1    14750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 6250 14850 6200
Connection ~ 14850 6250
Wire Wire Line
	14850 6250 14950 6250
Wire Wire Line
	14650 6200 14650 6150
Connection ~ 14650 6150
Wire Wire Line
	14650 6150 12100 6150
$Comp
L Device:D_Small D9
U 1 1 5E6B2A9C
P 14750 6500
F 0 "D9" H 14750 6613 50  0000 C CNN
F 1 "D_Small" H 14750 6614 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6500 50  0001 C CNN
F 3 "~" V 14750 6500 50  0001 C CNN
	1    14750 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D10
U 1 1 5E6B341B
P 14750 6800
F 0 "D10" H 14750 6913 50  0000 C CNN
F 1 "D_Small" H 14750 6914 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6800 50  0001 C CNN
F 3 "~" V 14750 6800 50  0001 C CNN
	1    14750 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D11
U 1 1 5E6B3AD9
P 14750 7100
F 0 "D11" H 14750 7213 50  0000 C CNN
F 1 "D_Small" H 14750 7214 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 7100 50  0001 C CNN
F 3 "~" V 14750 7100 50  0001 C CNN
	1    14750 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D12
U 1 1 5E6B4237
P 14750 7400
F 0 "D12" H 14750 7513 50  0000 C CNN
F 1 "D_Small" H 14750 7514 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 7400 50  0001 C CNN
F 3 "~" V 14750 7400 50  0001 C CNN
	1    14750 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 7450 14850 7400
Connection ~ 14850 7450
Wire Wire Line
	14850 7450 14950 7450
Wire Wire Line
	14650 7400 14650 7350
Connection ~ 14650 7350
Wire Wire Line
	14650 7350 14950 7350
Wire Wire Line
	14850 7150 14850 7100
Connection ~ 14850 7150
Wire Wire Line
	14850 7150 14950 7150
Wire Wire Line
	14650 7100 14650 7050
Connection ~ 14650 7050
Wire Wire Line
	14650 7050 14950 7050
Wire Wire Line
	14850 6850 14850 6800
Connection ~ 14850 6850
Wire Wire Line
	14850 6850 14950 6850
Wire Wire Line
	14650 6800 14650 6750
Connection ~ 14650 6750
Wire Wire Line
	14650 6750 14950 6750
Wire Wire Line
	14850 6550 14850 6500
Connection ~ 14850 6550
Wire Wire Line
	14850 6550 14950 6550
Wire Wire Line
	14650 6500 14650 6450
Connection ~ 14650 6450
Wire Wire Line
	14650 6450 14950 6450
$Comp
L Device:D_Small D7
U 1 1 5E722F61
P 10500 10400
F 0 "D7" V 10500 10468 50  0000 L CNN
F 1 "D" V 10545 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 10500 10400 50  0001 C CNN
F 3 "~" V 10500 10400 50  0001 C CNN
	1    10500 10400
	0    1    1    0   
$EndComp
Connection ~ 10500 10300
Wire Wire Line
	10500 10300 10200 10300
$Comp
L Device:D_Small D6
U 1 1 5E724ED9
P 10150 10400
F 0 "D6" V 10150 10468 50  0000 L CNN
F 1 "D" V 10195 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 10150 10400 50  0001 C CNN
F 3 "~" V 10150 10400 50  0001 C CNN
	1    10150 10400
	0    1    1    0   
$EndComp
Connection ~ 10150 10300
Wire Wire Line
	10150 10300 9850 10300
$Comp
L Device:D_Small D5
U 1 1 5E7255DA
P 9800 10400
F 0 "D5" V 9800 10468 50  0000 L CNN
F 1 "D" V 9845 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 9800 10400 50  0001 C CNN
F 3 "~" V 9800 10400 50  0001 C CNN
	1    9800 10400
	0    1    1    0   
$EndComp
Connection ~ 9800 10300
Wire Wire Line
	9800 10300 9500 10300
$Comp
L Device:D_Small D4
U 1 1 5E725BB4
P 9450 10400
F 0 "D4" V 9450 10468 50  0000 L CNN
F 1 "D" V 9495 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 9450 10400 50  0001 C CNN
F 3 "~" V 9450 10400 50  0001 C CNN
	1    9450 10400
	0    1    1    0   
$EndComp
Connection ~ 9450 10300
Wire Wire Line
	9450 10300 9150 10300
$Comp
L Device:D_Small D3
U 1 1 5E726193
P 9100 10400
F 0 "D3" V 9100 10468 50  0000 L CNN
F 1 "D" V 9145 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 9100 10400 50  0001 C CNN
F 3 "~" V 9100 10400 50  0001 C CNN
	1    9100 10400
	0    1    1    0   
$EndComp
Connection ~ 9100 10300
Wire Wire Line
	9100 10300 8800 10300
$Comp
L Device:D_Small D2
U 1 1 5E726763
P 8750 10400
F 0 "D2" V 8750 10468 50  0000 L CNN
F 1 "D" V 8795 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 8750 10400 50  0001 C CNN
F 3 "~" V 8750 10400 50  0001 C CNN
	1    8750 10400
	0    1    1    0   
$EndComp
Connection ~ 8750 10300
Wire Wire Line
	8750 10300 8450 10300
$Comp
L Device:D_Small D1
U 1 1 5E726CF7
P 8400 10400
F 0 "D1" V 8400 10468 50  0000 L CNN
F 1 "D" V 8445 10468 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" V 8400 10400 50  0001 C CNN
F 3 "~" V 8400 10400 50  0001 C CNN
	1    8400 10400
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 10300 8400 10300
Connection ~ 8450 10300
Wire Wire Line
	8400 10500 8350 10500
Connection ~ 8350 10500
Wire Wire Line
	8750 10500 8700 10500
Connection ~ 8700 10500
Wire Wire Line
	9100 10500 9050 10500
Connection ~ 9050 10500
Wire Wire Line
	9450 10500 9400 10500
Connection ~ 9400 10500
Wire Wire Line
	9800 10500 9750 10500
Connection ~ 9750 10500
Wire Wire Line
	10150 10500 10100 10500
Connection ~ 10100 10500
Wire Wire Line
	10500 10500 10450 10500
Connection ~ 10450 10500
Wire Wire Line
	9700 9850 9700 10200
Wire Wire Line
	9700 10200 7650 10200
Wire Wire Line
	8650 9850 8650 10100
Wire Wire Line
	8650 10100 7650 10100
Text Label 7650 10100 0    50   ~ 0
Valve_M1
Text Label 7600 9400 0    50   ~ 0
Valve_M2
Text Label 7650 10200 0    50   ~ 0
Valve_M4
Text Label 11050 9150 0    50   ~ 0
Valve_AL
Text Label 11050 9500 0    50   ~ 0
Valve_AR
Text Label 11050 9850 0    50   ~ 0
Valve_AO
Text Notes 7650 3500 0    118  ~ 24
Trigger
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5E828DD5
P 8650 4500
F 0 "J14" V 8522 4580 50  0000 L CNN
F 1 "Trigger" H 9000 4450 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 8650 4500 50  0001 C CNN
F 3 "~" H 8650 4500 50  0001 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E917B4B
P 8100 4350
F 0 "R4" H 8030 4304 50  0000 R CNN
F 1 "10K" H 8030 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8030 4350 50  0001 C CNN
F 3 "~" H 8100 4350 50  0001 C CNN
	1    8100 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 4500 8100 4500
Wire Wire Line
	8100 4200 7500 4200
Wire Wire Line
	8100 4500 7500 4500
Connection ~ 8100 4500
Wire Wire Line
	8450 4600 7500 4600
$Comp
L power:GND #PWR07
U 1 1 5E99F326
P 7500 4600
F 0 "#PWR07" H 7500 4350 50  0001 C CNN
F 1 "GND" H 7505 4427 50  0000 C CNN
F 2 "" H 7500 4600 50  0001 C CNN
F 3 "" H 7500 4600 50  0001 C CNN
	1    7500 4600
	1    0    0    -1  
$EndComp
Text Label 7500 4200 0    50   ~ 0
3V3_PI
Text Label 7500 4500 0    50   ~ 0
Trigger
Text Notes 7400 3850 0    50   ~ 0
Use a seperate pull-up since the 60k\nbuilt in from raspi might be insufficient \nfor longer cables.
Text Notes 4600 8400 0    118  ~ 24
LEDs
$Comp
L 74xx:74HC244 U1
U 1 1 5E9E06FE
P 4800 9450
F 0 "U1" H 4800 10431 50  0000 C CNN
F 1 "74HC244" H 4800 10340 50  0000 C CNN
F 2 "project_footprints:SOIC127P1032X265-20N" H 4800 9450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 4800 9450 50  0001 C CNN
	1    4800 9450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EA0CA06
P 4800 10400
F 0 "#PWR09" H 4800 10150 50  0001 C CNN
F 1 "GND" H 4805 10227 50  0000 C CNN
F 2 "" H 4800 10400 50  0001 C CNN
F 3 "" H 4800 10400 50  0001 C CNN
	1    4800 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8650 4800 8600
Wire Wire Line
	4800 8600 4250 8600
Text Label 4250 8600 0    50   ~ 0
5V
Wire Wire Line
	4800 10400 4800 10300
Wire Wire Line
	4800 10300 4300 10300
Wire Wire Line
	4300 10300 4300 9950
Connection ~ 4800 10300
Wire Wire Line
	4800 10300 4800 10250
Wire Wire Line
	4300 9950 4300 9850
Connection ~ 4300 9950
Wire Wire Line
	4300 8950 3850 8950
Text Label 3850 8950 0    50   ~ 0
LED_PWM
$Comp
L Connector_Generic:Conn_01x03 J22
U 1 1 5EA8B0E8
P 5900 9400
F 0 "J22" H 5980 9442 50  0000 L CNN
F 1 "LED" H 5980 9351 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 5900 9400 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 5900 9400 50  0001 C CNN
	1    5900 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 8600 5700 8600
Wire Wire Line
	5700 8600 5700 9300
Connection ~ 4800 8600
Wire Wire Line
	4800 10300 5700 10300
Wire Wire Line
	5700 10300 5700 9500
Wire Wire Line
	5300 8950 5450 8950
Wire Wire Line
	5450 9400 5700 9400
Wire Wire Line
	5450 8950 5450 9400
$Comp
L Connector_Generic:Conn_01x03 J12
U 1 1 5EB59A4E
P 11150 3850
F 0 "J12" H 11230 3892 50  0000 L CNN
F 1 "Flow_Warm" H 11230 3801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 11150 3850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 11150 3850 50  0001 C CNN
	1    11150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3750 10700 3750
Wire Wire Line
	10950 3850 10150 3850
Wire Wire Line
	10950 3950 10600 3950
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 5EC8F691
P 11150 4750
F 0 "J13" H 11230 4792 50  0000 L CNN
F 1 "Flow_Cold" H 11230 4701 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 11150 4750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 11150 4750 50  0001 C CNN
	1    11150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC913D8
P 10150 4000
F 0 "R2" H 10220 4046 50  0000 L CNN
F 1 "10K" V 10150 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10080 4000 50  0001 C CNN
F 3 "~" H 10150 4000 50  0001 C CNN
	1    10150 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5ECC146B
P 10150 4600
F 0 "R3" H 10220 4646 50  0000 L CNN
F 1 "10K" V 10150 4500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10080 4600 50  0001 C CNN
F 3 "~" H 10150 4600 50  0001 C CNN
	1    10150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 4750 10150 4750
Wire Wire Line
	10150 4450 10150 4300
Wire Wire Line
	10150 4300 10600 4300
Wire Wire Line
	10600 4300 10600 3950
Connection ~ 10150 4300
Wire Wire Line
	10150 4300 10150 4150
Wire Wire Line
	10600 4300 10600 4850
Wire Wire Line
	10600 4850 10950 4850
Connection ~ 10600 4300
Wire Wire Line
	10950 4650 10700 4650
Wire Wire Line
	10700 4650 10700 3750
Wire Wire Line
	10700 3750 10700 3650
Wire Wire Line
	10700 3650 9950 3650
Connection ~ 10700 3750
Wire Wire Line
	10150 4300 9950 4300
Wire Wire Line
	10150 3850 9950 3850
Connection ~ 10150 3850
Text Label 9950 3650 0    50   ~ 0
3V3_PI
Text Label 9950 3850 0    50   ~ 0
Flow_W
$Comp
L power:GND #PWR06
U 1 1 5EDCDCA1
P 9950 4300
F 0 "#PWR06" H 9950 4050 50  0001 C CNN
F 1 "GND" H 9955 4127 50  0000 C CNN
F 2 "" H 9950 4300 50  0001 C CNN
F 3 "" H 9950 4300 50  0001 C CNN
	1    9950 4300
	1    0    0    -1  
$EndComp
Text Label 9800 4750 0    50   ~ 0
Flow_C
Wire Wire Line
	10150 4750 9800 4750
Connection ~ 10150 4750
Text Notes 10150 3500 0    118  ~ 24
Flowmeter
Wire Wire Line
	3100 1750 4300 1750
Text Label 4300 1750 2    50   ~ 0
LED_PWM
Wire Wire Line
	1900 2650 700  2650
Wire Wire Line
	1900 2750 700  2750
Wire Wire Line
	1900 2850 700  2850
Wire Wire Line
	1900 2950 700  2950
Wire Wire Line
	1900 3050 700  3050
Text Label 700  2650 0    50   ~ 0
Pump_WC
Text Label 700  2750 0    50   ~ 0
Pump_WW
Text Label 700  2850 0    50   ~ 0
Pump_A
Text Label 700  2950 0    50   ~ 0
Pump_M1
Text Label 700  3050 0    50   ~ 0
Pump_M2
Wire Wire Line
	3100 2250 4300 2250
Text Label 4300 2250 2    50   ~ 0
Trigger
Wire Wire Line
	3100 1950 4300 1950
Wire Wire Line
	3100 2050 4300 2050
Text Label 4300 1950 2    50   ~ 0
Flow_C
Text Label 4300 2050 2    50   ~ 0
Flow_W
Wire Wire Line
	3100 3150 4300 3150
Wire Wire Line
	3100 3050 4300 3050
Wire Wire Line
	3100 2950 4300 2950
Text Label 4300 2950 2    50   ~ 0
Valve_AL
Text Label 4300 3050 2    50   ~ 0
Valve_AR
Text Label 4300 3150 2    50   ~ 0
Valve_AO
Wire Wire Line
	3100 2750 4300 2750
Text Label 4300 2750 2    50   ~ 0
Valve_M1
Wire Wire Line
	1900 1750 700  1750
Wire Wire Line
	1900 1850 700  1850
Wire Wire Line
	1900 1950 700  1950
Text Label 700  1750 0    50   ~ 0
Valve_M2
Text Label 700  1850 0    50   ~ 0
Valve_M3
Text Label 700  1950 0    50   ~ 0
Valve_M4
Wire Wire Line
	12950 1600 14000 1600
Wire Wire Line
	12950 2100 13750 2100
Wire Wire Line
	12300 1400 12450 1400
Wire Wire Line
	12450 1500 12300 1500
Wire Wire Line
	12150 1600 12450 1600
Wire Wire Line
	12450 1800 12150 1800
Wire Wire Line
	12450 1900 12050 1900
Wire Wire Line
	12450 2000 12150 2000
Wire Wire Line
	12450 2300 12050 2300
Wire Wire Line
	12450 2400 12050 2400
Wire Wire Line
	12950 2200 13500 2200
Wire Wire Line
	12150 1800 12150 1600
Wire Wire Line
	12450 1700 12050 1700
$Comp
L Connector_Generic:Conn_02x12_Top_Bottom J1
U 1 1 5E0EF3B3
P 12650 1900
F 0 "J1" H 12700 1167 50  0000 C CNN
F 1 "Conn_02x12_Top_Bottom" H 12700 1076 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A_2x12_P4.20mm_Vertical" H 12650 1900 50  0001 C CNN
F 3 "~" H 12650 1900 50  0001 C CNN
	1    12650 1900
	1    0    0    -1  
$EndComp
NoConn ~ 1900 1350
NoConn ~ 1900 1450
NoConn ~ 1900 2150
NoConn ~ 1900 2250
NoConn ~ 1900 2350
NoConn ~ 3100 2450
NoConn ~ 3100 2350
NoConn ~ 3100 1650
NoConn ~ 3100 1550
NoConn ~ 4300 9050
NoConn ~ 4300 9150
NoConn ~ 4300 9250
NoConn ~ 4300 9350
NoConn ~ 4300 9450
NoConn ~ 4300 9550
NoConn ~ 4300 9650
NoConn ~ 5300 9650
NoConn ~ 5300 9550
NoConn ~ 5300 9450
NoConn ~ 5300 9350
NoConn ~ 5300 9250
NoConn ~ 5300 9150
NoConn ~ 5300 9050
Wire Wire Line
	1900 2050 700  2050
$Comp
L Device:R R5
U 1 1 5F86DAC6
P 11550 2100
F 0 "R5" V 11450 2100 50  0000 C CNN
F 1 "150" V 11550 2100 50  0000 C CNN
F 2 "" V 11480 2100 50  0001 C CNN
F 3 "~" H 11550 2100 50  0001 C CNN
	1    11550 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	11700 2100 12450 2100
$Comp
L power:GND #PWR0103
U 1 1 5F8D243B
P 10750 2300
F 0 "#PWR0103" H 10750 2050 50  0001 C CNN
F 1 "GND" H 10755 2127 50  0000 C CNN
F 2 "" H 10750 2300 50  0001 C CNN
F 3 "" H 10750 2300 50  0001 C CNN
	1    10750 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D13
U 1 1 5F8F0BD0
P 11200 2100
F 0 "D13" H 11193 2316 50  0000 C CNN
F 1 "POWER GOOD" H 11193 2225 50  0000 C CNN
F 2 "" H 11200 2100 50  0001 C CNN
F 3 "~" H 11200 2100 50  0001 C CNN
	1    11200 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F8F194C
P 11550 2300
F 0 "R7" V 11650 2300 50  0000 C CNN
F 1 "150" V 11550 2300 50  0000 C CNN
F 2 "" V 11480 2300 50  0001 C CNN
F 3 "~" H 11550 2300 50  0001 C CNN
	1    11550 2300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5F8F1E60
P 11200 2300
F 0 "D14" H 11200 2100 50  0000 C CNN
F 1 "STANDBY" H 11200 2200 50  0000 C CNN
F 2 "" H 11200 2300 50  0001 C CNN
F 3 "~" H 11200 2300 50  0001 C CNN
	1    11200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 2300 11350 2300
Wire Wire Line
	11400 2100 11350 2100
Wire Wire Line
	11050 2100 10750 2100
Wire Wire Line
	10750 2100 10750 2300
Connection ~ 10750 2300
Wire Wire Line
	10750 2300 11050 2300
Wire Wire Line
	12050 2300 11950 2300
Connection ~ 12050 2300
Wire Wire Line
	11700 2200 11700 2300
Wire Wire Line
	11700 2200 12450 2200
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5F9F56A0
P 14500 1700
F 0 "SW1" H 14500 1967 50  0000 C CNN
F 1 "POWER_ON" H 14500 1876 50  0000 C CNN
F 2 "" H 14500 1700 50  0001 C CNN
F 3 "~" H 14500 1700 50  0001 C CNN
	1    14500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F9F724F
P 15000 1700
F 0 "#PWR0104" H 15000 1450 50  0001 C CNN
F 1 "GND" H 15005 1527 50  0000 C CNN
F 2 "" H 15000 1700 50  0001 C CNN
F 3 "" H 15000 1700 50  0001 C CNN
	1    15000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12950 1700 14200 1700
Wire Wire Line
	14800 1700 15000 1700
Wire Wire Line
	8700 9350 8700 10500
Wire Wire Line
	9000 9150 9000 9400
Wire Wire Line
	7600 9400 9000 9400
Text Label 7600 8900 0    50   ~ 0
Valve_M3
Wire Wire Line
	9350 8900 9350 9500
Wire Wire Line
	7600 8900 9350 8900
$EndSCHEMATC
