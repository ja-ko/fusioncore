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
Text Label 2650 6000 2    60   ~ 0
3V3_PI
Text Label 7200 1900 2    60   ~ 0
5V_PI
Wire Wire Line
	6450 1900 6600 1900
Text Label 5350 1900 0    60   ~ 0
5V
Wire Wire Line
	5350 1900 5800 1900
Text Notes 5200 1000 0    118  ~ 24
5V Powered HAT Protection
Text Notes 4950 1300 0    60   ~ 0
This is the recommended 5V rail protection for \na HAT with power going to the Pi.\nSee https://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
$Comp
L raspberrypi_hat:DMG2305UX Q1
U 1 1 58E14EB1
P 6200 1900
F 0 "Q1" V 6350 2050 50  0000 R CNN
F 1 "DMG2305UX" V 6350 1850 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 2000 50  0001 C CNN
F 3 "" H 6200 1900 50  0000 C CNN
	1    6200 1900
	0    -1   -1   0   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 1 1 58E1538B
P 5900 2500
F 0 "Q2" H 6100 2575 50  0000 L CNN
F 1 "DMMT5401" H 6100 2500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6100 2425 50  0000 L CIN
F 3 "" H 5900 2500 50  0000 L CNN
	1    5900 2500
	-1   0    0    1   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 2 1 58E153D6
P 6500 2500
F 0 "Q2" H 6700 2575 50  0000 L CNN
F 1 "DMMT5401" H 6700 2500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6700 2425 50  0000 L CIN
F 3 "" H 6500 2500 50  0000 L CNN
	2    6500 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 58E15896
P 5800 3100
F 0 "R23" V 5880 3100 50  0000 C CNN
F 1 "10K" V 5800 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 3100 50  0001 C CNN
F 3 "" H 5800 3100 50  0001 C CNN
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 58E158A1
P 6600 3100
F 0 "R24" V 6680 3100 50  0000 C CNN
F 1 "47K" V 6600 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58E15A41
P 5800 3300
F 0 "#PWR01" H 5800 3050 50  0001 C CNN
F 1 "GND" H 5800 3150 50  0000 C CNN
F 2 "" H 5800 3300 50  0000 C CNN
F 3 "" H 5800 3300 50  0000 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 58E15A9E
P 6600 3300
F 0 "#PWR02" H 6600 3050 50  0001 C CNN
F 1 "GND" H 6600 3150 50  0000 C CNN
F 2 "" H 6600 3300 50  0000 C CNN
F 3 "" H 6600 3300 50  0000 C CNN
	1    6600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3300 5800 3250
Wire Wire Line
	6600 3300 6600 3250
Wire Wire Line
	6600 2700 6600 2800
Wire Wire Line
	6200 2150 6200 2800
Wire Wire Line
	6200 2800 6600 2800
Connection ~ 6600 2800
Wire Wire Line
	5800 2700 5800 2850
Wire Wire Line
	6100 2500 6100 2850
Wire Wire Line
	5800 2850 6100 2850
Connection ~ 5800 2850
Wire Wire Line
	6300 2850 6300 2500
Connection ~ 6100 2850
Wire Wire Line
	5800 2300 5800 1900
Connection ~ 5800 1900
Wire Wire Line
	6600 2300 6600 1900
Connection ~ 6600 1900
$Comp
L raspberrypi_hat:CAT24C32 U2
U 1 1 58E1713F
P 2000 4600
F 0 "U2" H 2350 4950 50  0000 C CNN
F 1 "CAT24C32" H 1750 4950 50  0000 C CNN
F 2 "Package_SOIC:SOIC-8_3.9x4.9mm_P1.27mm" H 2000 4600 50  0001 C CNN
F 3 "" H 2000 4600 50  0000 C CNN
	1    2000 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 58E17715
P 1850 6000
F 0 "R6" V 1930 6000 50  0000 C CNN
F 1 "3.9K" V 1850 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 6000 50  0001 C CNN
F 3 "" H 1850 6000 50  0001 C CNN
	1    1850 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 58E17720
P 1850 6250
F 0 "R8" V 1930 6250 50  0000 C CNN
F 1 "3.9K" V 1850 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1780 6250 50  0001 C CNN
F 3 "" H 1850 6250 50  0001 C CNN
	1    1850 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	750  6000 1650 6000
Wire Wire Line
	750  6250 1650 6250
Wire Wire Line
	1650 6100 750  6100
Wire Wire Line
	1650 6350 750  6350
Wire Wire Line
	1650 6350 1650 6250
Connection ~ 1650 6250
Wire Wire Line
	1650 6100 1650 6000
Connection ~ 1650 6000
Wire Wire Line
	2000 6000 2200 6000
Wire Wire Line
	2200 6250 2000 6250
Connection ~ 2200 6000
Text Label 750  6000 0    60   ~ 0
ID_SD_EEPROM_pu
Text Label 750  6100 0    60   ~ 0
ID_SD_EEPROM
Text Label 750  6250 0    60   ~ 0
ID_SC_EEPROM_pu
Text Label 750  6350 0    60   ~ 0
ID_SC_EEPROM
Wire Wire Line
	3350 4800 2500 4800
Wire Wire Line
	2500 4700 3350 4700
Text Label 3350 4800 2    60   ~ 0
ID_SD_EEPROM_pu
Text Label 3350 4700 2    60   ~ 0
ID_SC_EEPROM_pu
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 58E18D32
P 650 4850
F 0 "J9" H 650 5000 50  0000 C CNN
F 1 "CONN_01X02" V 750 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 650 4850 50  0001 C CNN
F 3 "" H 650 4850 50  0000 C CNN
	1    650  4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R29
U 1 1 58E19E51
P 1450 5000
F 0 "R29" V 1530 5000 50  0000 C CNN
F 1 "10K" V 1450 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1380 5000 50  0001 C CNN
F 3 "" H 1450 5000 50  0001 C CNN
	1    1450 5000
	-1   0    0    1   
$EndComp
Text Label 2300 4100 2    60   ~ 0
3V3_PI
Wire Wire Line
	2000 4100 2300 4100
Wire Wire Line
	2000 4100 2000 4200
$Comp
L power:GND #PWR03
U 1 1 58E1A612
P 950 4500
F 0 "#PWR03" H 950 4250 50  0001 C CNN
F 1 "GND" H 950 4350 50  0000 C CNN
F 2 "" H 950 4500 50  0000 C CNN
F 3 "" H 950 4500 50  0000 C CNN
	1    950  4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4400 1200 4500
Wire Wire Line
	950  4400 1200 4400
Wire Wire Line
	1500 4500 1200 4500
Connection ~ 1200 4500
Wire Wire Line
	1200 4600 1500 4600
$Comp
L power:GND #PWR04
U 1 1 58E1AF98
P 950 4900
F 0 "#PWR04" H 950 4650 50  0001 C CNN
F 1 "GND" H 950 4750 50  0000 C CNN
F 2 "" H 950 4900 50  0000 C CNN
F 3 "" H 950 4900 50  0000 C CNN
	1    950  4900
	1    0    0    -1  
$EndComp
Text Notes 3150 4100 0    60   ~ 0
EEPROM WRITE ENABLE
$Comp
L Device:R R11
U 1 1 58E22900
P 1200 4850
F 0 "R11" V 1280 4850 50  0000 C CNN
F 1 "DNP" V 1200 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 4850 50  0001 C CNN
F 3 "" H 1200 4850 50  0001 C CNN
	1    1200 4850
	0    1    1    0   
$EndComp
Text Notes 1050 5650 0    118  ~ 24
Pullup Resistors
Text Notes 1900 3550 0    118  ~ 24
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
	2200 6250 2200 6000
Text Notes 1100 3950 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
Text Notes 600  5850 0    60   ~ 0
These are just pullup resistors for the I2C bus on the EEPROM.\nThe resistor values are per the HAT spec.
$Comp
L power:GND #PWR05
U 1 1 58E3CC10
P 2000 5100
F 0 "#PWR05" H 2000 4850 50  0001 C CNN
F 1 "GND" H 2000 4950 50  0000 C CNN
F 2 "" H 2000 5100 50  0000 C CNN
F 3 "" H 2000 5100 50  0000 C CNN
	1    2000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5000 2000 5100
Text Label 1700 5300 2    60   ~ 0
3V3_PI
Wire Wire Line
	1700 5300 1450 5300
Wire Wire Line
	1450 5300 1450 5150
Wire Wire Line
	1350 4800 1450 4800
Wire Wire Line
	1450 4750 1450 4800
Wire Wire Line
	950  4400 950  4500
Connection ~ 1200 4400
Wire Wire Line
	1350 4800 1350 4850
Connection ~ 1450 4800
Wire Wire Line
	850  4850 950  4850
Wire Wire Line
	950  4900 950  4850
Connection ~ 950  4850
Wire Wire Line
	850  4750 1450 4750
Wire Wire Line
	6600 2800 6600 2950
Wire Wire Line
	5800 2850 5800 2950
Wire Wire Line
	6100 2850 6300 2850
Wire Wire Line
	5800 1900 5950 1900
Wire Wire Line
	6600 1900 7200 1900
Wire Wire Line
	1650 6250 1700 6250
Wire Wire Line
	1650 6000 1700 6000
Wire Wire Line
	2200 6000 2650 6000
Wire Wire Line
	1200 4500 1200 4600
Wire Wire Line
	1200 4400 1500 4400
Wire Wire Line
	1450 4800 1500 4800
Wire Wire Line
	1450 4800 1450 4850
Wire Wire Line
	950  4850 1050 4850
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
Text Label 11800 1700 0    50   ~ 0
5V_ATX
Wire Wire Line
	12050 1900 12050 1700
Text Label 11950 2100 0    50   ~ 0
PWRG
Text Label 11950 2200 0    50   ~ 0
5VSTB
Wire Wire Line
	12050 2400 12050 2300
Text Label 11950 2300 0    50   ~ 0
12V_ATX
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
	12950 2400 13500 2400
Wire Wire Line
	13500 2400 13500 2300
Text Label 13800 2300 2    50   ~ 0
5V_ATX
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
Text Notes 14350 3400 0    118  ~ 24
1 Wire Port
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5E1CBB14
P 15350 3800
F 0 "J2" H 15430 3842 50  0000 L CNN
F 1 "Temp_1" H 15430 3751 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 15350 3800 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15350 3800 50  0001 C CNN
	1    15350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 3700 14800 3700
Wire Wire Line
	14800 3700 14800 3500
Wire Wire Line
	14250 3800 14500 3800
Text Label 14250 3500 0    50   ~ 0
3V3_PI
$Comp
L Device:R R1
U 1 1 5E1E3589
P 14500 3650
F 0 "R1" H 14570 3696 50  0000 L CNN
F 1 "4.7K" H 14570 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14430 3650 50  0001 C CNN
F 3 "~" H 14500 3650 50  0001 C CNN
	1    14500 3650
	1    0    0    -1  
$EndComp
Connection ~ 14500 3500
Wire Wire Line
	14500 3500 14250 3500
Connection ~ 14500 3800
Wire Wire Line
	14500 3500 14800 3500
Wire Wire Line
	14500 3800 14900 3800
Wire Wire Line
	14250 3900 15000 3900
Text Label 14250 3800 0    50   ~ 0
1W
Text Notes 13300 5400 0    118  ~ 24
Pumps
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5E1EE561
P 15150 5450
F 0 "J6" H 15230 5442 50  0000 L CNN
F 1 "Pump_Water_Cold" H 15230 5351 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 5450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 5450 50  0001 C CNN
	1    15150 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 5E1F4E96
P 15350 4250
F 0 "J4" H 15430 4292 50  0000 L CNN
F 1 "Temp_2" H 15430 4201 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 15350 4250 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15350 4250 50  0001 C CNN
	1    15350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 3700 14800 4150
Wire Wire Line
	14800 4150 15150 4150
Connection ~ 14800 3700
Wire Wire Line
	14900 3800 14900 4250
Wire Wire Line
	14900 4250 15150 4250
Connection ~ 14900 3800
Wire Wire Line
	14900 3800 15150 3800
Wire Wire Line
	15000 3900 15000 4350
Wire Wire Line
	15000 4350 15150 4350
Connection ~ 15000 3900
Wire Wire Line
	15000 3900 15150 3900
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5E2262F5
P 15150 5750
F 0 "J7" H 15230 5742 50  0000 L CNN
F 1 "Pump_Water_Warm" H 15230 5651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 5750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 5750 50  0001 C CNN
	1    15150 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 5E22672E
P 15150 6050
F 0 "J8" H 15230 6042 50  0000 L CNN
F 1 "Pump_Air" H 15230 5951 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6050 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6050 50  0001 C CNN
	1    15150 6050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 5E226FE2
P 15150 6350
F 0 "J10" H 15230 6342 50  0000 L CNN
F 1 "Pump_Misc_1" H 15230 6251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6350 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6350 50  0001 C CNN
	1    15150 6350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J11
U 1 1 5E227566
P 15150 6650
F 0 "J11" H 15230 6642 50  0000 L CNN
F 1 "Pump_Misc_2" H 15230 6551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15150 6650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 15150 6650 50  0001 C CNN
	1    15150 6650
	1    0    0    -1  
$EndComp
Connection ~ 13450 7700
Wire Wire Line
	13450 7700 13450 7900
$Comp
L power:GND #PWR0102
U 1 1 5E284F13
P 13450 7900
F 0 "#PWR0102" H 13450 7650 50  0001 C CNN
F 1 "GND" H 13455 7727 50  0000 C CNN
F 2 "" H 13450 7900 50  0001 C CNN
F 3 "" H 13450 7900 50  0001 C CNN
	1    13450 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 6750 14850 6750
Wire Wire Line
	14050 6450 14850 6450
Wire Wire Line
	13450 6150 14850 6150
Wire Wire Line
	12850 5850 14850 5850
Wire Wire Line
	12250 5550 14850 5550
Wire Wire Line
	14950 5450 14650 5450
Text Label 11500 5450 0    50   ~ 0
12V
Wire Wire Line
	12100 5450 12100 5750
Wire Wire Line
	12100 5750 14650 5750
Connection ~ 12100 5450
Wire Wire Line
	12100 5450 11500 5450
Wire Wire Line
	12100 5750 12100 6050
Wire Wire Line
	12100 6050 14650 6050
Connection ~ 12100 5750
Wire Wire Line
	12100 6050 12100 6350
Wire Wire Line
	12100 6350 14650 6350
Connection ~ 12100 6050
Wire Wire Line
	12100 6350 12100 6650
Wire Wire Line
	12100 6650 14650 6650
Connection ~ 12100 6350
Wire Wire Line
	11950 7500 11950 7300
Wire Wire Line
	11950 7300 11500 7300
Text Label 11500 7300 0    50   ~ 0
Pump_WC
Wire Wire Line
	12550 7500 12550 7200
Wire Wire Line
	12550 7200 11500 7200
Wire Wire Line
	13150 7500 13150 7100
Wire Wire Line
	13150 7100 11500 7100
Wire Wire Line
	13750 7500 13750 7000
Wire Wire Line
	14650 6750 14650 7300
Wire Wire Line
	14050 6450 14050 7300
Wire Wire Line
	13450 6150 13450 7300
Wire Wire Line
	12850 7300 12850 5850
Wire Wire Line
	11500 7000 13750 7000
Wire Wire Line
	12250 5550 12250 7300
Wire Wire Line
	11500 6900 14350 6900
Wire Wire Line
	14350 6900 14350 7500
Text Label 11500 7200 0    50   ~ 0
Pump_WW
Text Label 11500 7100 0    50   ~ 0
Pump_A
Text Label 11500 7000 0    50   ~ 0
Pump_M1
Text Label 11500 6900 0    50   ~ 0
Pump_M2
NoConn ~ 13750 2100
NoConn ~ 13750 1500
$Comp
L Transistor_FET:2N7002 Q7
U 1 1 5E25072D
P 14550 7500
F 0 "Q7" H 14755 7546 50  0000 L CNN
F 1 "AO3400A" H 14755 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14750 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 14550 7500 50  0001 L CNN
	1    14550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 7700 14050 7700
Wire Wire Line
	14650 7700 14050 7700
Connection ~ 14050 7700
$Comp
L Transistor_FET:2N7002 Q6
U 1 1 5E229573
P 13950 7500
F 0 "Q6" H 14155 7546 50  0000 L CNN
F 1 "AO3400A" H 14155 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14150 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13950 7500 50  0001 L CNN
	1    13950 7500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q5
U 1 1 5E25D46D
P 13350 7500
F 0 "Q5" H 13555 7546 50  0000 L CNN
F 1 "AO3400A" H 13555 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13550 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13350 7500 50  0001 L CNN
	1    13350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 7700 12850 7700
Wire Wire Line
	12850 7700 13450 7700
Connection ~ 12850 7700
$Comp
L Transistor_FET:2N7002 Q4
U 1 1 5E2649AC
P 12750 7500
F 0 "Q4" H 12955 7546 50  0000 L CNN
F 1 "AO3400A" H 12955 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12950 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12750 7500 50  0001 L CNN
	1    12750 7500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5E2672F5
P 12150 7500
F 0 "Q3" H 12355 7546 50  0000 L CNN
F 1 "AO3400A" H 12355 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12350 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12150 7500 50  0001 L CNN
	1    12150 7500
	1    0    0    -1  
$EndComp
Text Notes 9200 8400 0    118  ~ 24
Valves
$Comp
L Connector:Screw_Terminal_01x02 J21
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
L Connector:Screw_Terminal_01x02 J20
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
L Connector:Screw_Terminal_01x02 J19
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
L Connector:Screw_Terminal_01x02 J18
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
L Connector:Screw_Terminal_01x02 J17
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
L Connector:Screw_Terminal_01x02 J16
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
L Connector:Screw_Terminal_01x02 J15
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
P 14250 3900
F 0 "#PWR010" H 14250 3650 50  0001 C CNN
F 1 "GND" H 14255 3727 50  0000 C CNN
F 2 "" H 14250 3900 50  0001 C CNN
F 3 "" H 14250 3900 50  0001 C CNN
	1    14250 3900
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
P 14750 5500
F 0 "D8" H 14750 5613 50  0000 C CNN
F 1 "D_Small" H 14750 5614 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 5500 50  0001 C CNN
F 3 "~" V 14750 5500 50  0001 C CNN
	1    14750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 5550 14850 5500
Connection ~ 14850 5550
Wire Wire Line
	14850 5550 14950 5550
Wire Wire Line
	14650 5500 14650 5450
Connection ~ 14650 5450
Wire Wire Line
	14650 5450 12100 5450
$Comp
L Device:D_Small D9
U 1 1 5E6B2A9C
P 14750 5800
F 0 "D9" H 14750 5913 50  0000 C CNN
F 1 "D_Small" H 14750 5914 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 5800 50  0001 C CNN
F 3 "~" V 14750 5800 50  0001 C CNN
	1    14750 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D10
U 1 1 5E6B341B
P 14750 6100
F 0 "D10" H 14750 6213 50  0000 C CNN
F 1 "D_Small" H 14750 6214 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6100 50  0001 C CNN
F 3 "~" V 14750 6100 50  0001 C CNN
	1    14750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D11
U 1 1 5E6B3AD9
P 14750 6400
F 0 "D11" H 14750 6513 50  0000 C CNN
F 1 "D_Small" H 14750 6514 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6400 50  0001 C CNN
F 3 "~" V 14750 6400 50  0001 C CNN
	1    14750 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D12
U 1 1 5E6B4237
P 14750 6700
F 0 "D12" H 14750 6813 50  0000 C CNN
F 1 "D_Small" H 14750 6814 50  0001 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 14750 6700 50  0001 C CNN
F 3 "~" V 14750 6700 50  0001 C CNN
	1    14750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	14850 6750 14850 6700
Connection ~ 14850 6750
Wire Wire Line
	14850 6750 14950 6750
Wire Wire Line
	14650 6700 14650 6650
Connection ~ 14650 6650
Wire Wire Line
	14650 6650 14950 6650
Wire Wire Line
	14850 6450 14850 6400
Connection ~ 14850 6450
Wire Wire Line
	14850 6450 14950 6450
Wire Wire Line
	14650 6400 14650 6350
Connection ~ 14650 6350
Wire Wire Line
	14650 6350 14950 6350
Wire Wire Line
	14850 6150 14850 6100
Connection ~ 14850 6150
Wire Wire Line
	14850 6150 14950 6150
Wire Wire Line
	14650 6100 14650 6050
Connection ~ 14650 6050
Wire Wire Line
	14650 6050 14950 6050
Wire Wire Line
	14850 5850 14850 5800
Connection ~ 14850 5850
Wire Wire Line
	14850 5850 14950 5850
Wire Wire Line
	14650 5800 14650 5750
Connection ~ 14650 5750
Wire Wire Line
	14650 5750 14950 5750
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
Text Notes 1350 6850 0    118  ~ 24
LEDs
$Comp
L power:GND #PWR09
U 1 1 5EA0CA06
P 2450 7950
F 0 "#PWR09" H 2450 7700 50  0001 C CNN
F 1 "GND" V 2455 7777 50  0000 C CNN
F 2 "" H 2450 7950 50  0001 C CNN
F 3 "" H 2450 7950 50  0001 C CNN
	1    2450 7950
	0    1    1    0   
$EndComp
Text Label 1000 7050 0    50   ~ 0
5V
Text Label 550  8150 0    50   ~ 0
LED_PWM
$Comp
L Connector:Screw_Terminal_01x03 J22
U 1 1 5EA8B0E8
P 2650 7850
F 0 "J22" H 2730 7892 50  0000 L CNN
F 1 "LED" H 2730 7801 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 2650 7850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 2650 7850 50  0001 C CNN
	1    2650 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7050 2450 7750
$Comp
L Connector:Screw_Terminal_01x03 J12
U 1 1 5EB59A4E
P 13650 3750
F 0 "J12" H 13730 3792 50  0000 L CNN
F 1 "Flow_Warm" H 13730 3701 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 13650 3750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 13650 3750 50  0001 C CNN
	1    13650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 3650 13200 3650
Wire Wire Line
	13450 3750 12900 3750
Wire Wire Line
	13450 3850 13100 3850
$Comp
L Connector:Screw_Terminal_01x03 J13
U 1 1 5EC8F691
P 13650 4650
F 0 "J13" H 13730 4692 50  0000 L CNN
F 1 "Flow_Cold" H 13730 4601 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 13650 4650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 13650 4650 50  0001 C CNN
	1    13650 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC913D8
P 12900 3900
F 0 "R2" H 12970 3946 50  0000 L CNN
F 1 "10K" V 12900 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12830 3900 50  0001 C CNN
F 3 "~" H 12900 3900 50  0001 C CNN
	1    12900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5ECC146B
P 12900 4500
F 0 "R3" H 12970 4546 50  0000 L CNN
F 1 "10K" V 12900 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12830 4500 50  0001 C CNN
F 3 "~" H 12900 4500 50  0001 C CNN
	1    12900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 4650 12900 4650
Wire Wire Line
	12900 4350 12900 4200
Wire Wire Line
	13100 4200 13100 3850
Wire Wire Line
	12900 4200 12900 4050
Wire Wire Line
	13100 4200 13100 4750
Wire Wire Line
	13100 4750 13450 4750
Connection ~ 13100 4200
Wire Wire Line
	13450 4550 13200 4550
Wire Wire Line
	13200 4550 13200 3650
Wire Wire Line
	13200 3650 13200 3550
Wire Wire Line
	13200 3550 12450 3550
Connection ~ 13200 3650
Text Label 12450 3550 0    50   ~ 0
12V
Text Label 11550 4100 0    50   ~ 0
Flow_W
$Comp
L power:GND #PWR06
U 1 1 5EDCDCA1
P 12450 4200
F 0 "#PWR06" H 12450 3950 50  0001 C CNN
F 1 "GND" H 12455 4027 50  0000 C CNN
F 2 "" H 12450 4200 50  0001 C CNN
F 3 "" H 12450 4200 50  0001 C CNN
	1    12450 4200
	1    0    0    -1  
$EndComp
Text Label 11550 4950 0    50   ~ 0
Flow_C
Text Notes 12650 3400 0    118  ~ 24
Flowmeter
Wire Wire Line
	3100 1750 4300 1750
Text Label 4300 1750 2    50   ~ 0
LED_PWM
Wire Wire Line
	1900 2150 700  2150
Wire Wire Line
	1900 2250 700  2250
Wire Wire Line
	1900 2850 700  2850
Wire Wire Line
	1900 3050 700  3050
Text Label 700  3050 0    50   ~ 0
Pump_WC
Text Label 4300 3050 2    50   ~ 0
Pump_WW
Text Label 4300 3150 2    50   ~ 0
Pump_A
Wire Wire Line
	3100 2250 4300 2250
Text Label 4300 2250 2    50   ~ 0
Trigger
Wire Wire Line
	3100 1950 4300 1950
Wire Wire Line
	3100 2050 4300 2050
Text Label 4300 2050 2    50   ~ 0
Flow_C
Text Label 4300 1950 2    50   ~ 0
Flow_W
Wire Wire Line
	3100 3150 4300 3150
Wire Wire Line
	3100 3050 4300 3050
Wire Wire Line
	700  2350 1900 2350
Text Label 700  2150 0    50   ~ 0
Valve_AL
Text Label 700  2350 0    50   ~ 0
Valve_AR
Text Label 700  2250 0    50   ~ 0
Valve_AO
Wire Wire Line
	3100 1650 4300 1650
Text Label 700  1950 0    50   ~ 0
Valve_M1
Wire Wire Line
	1900 1750 700  1750
Wire Wire Line
	1900 1850 700  1850
Wire Wire Line
	1900 1950 700  1950
Text Label 700  1850 0    50   ~ 0
Valve_M2
Text Label 700  1750 0    50   ~ 0
Valve_M3
Text Label 4300 1650 2    50   ~ 0
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
NoConn ~ 3100 2450
NoConn ~ 3100 2350
NoConn ~ 3100 1550
Wire Wire Line
	1900 2050 700  2050
$Comp
L Device:R R5
U 1 1 5F86DAC6
P 11550 2100
F 0 "R5" V 11450 2100 50  0000 C CNN
F 1 "150" V 11550 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11480 2100 50  0001 C CNN
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
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 11200 2100 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11480 2300 50  0001 C CNN
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
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11200 2300 50  0001 C CNN
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
Connection ~ 12900 3750
Connection ~ 12900 4200
Wire Wire Line
	12900 4200 13100 4200
Wire Wire Line
	12450 3750 12900 3750
Wire Wire Line
	12450 4200 12900 4200
$Comp
L Transistor_FET:2N7002 Q17
U 1 1 5E3AF2AD
P 12250 3750
F 0 "Q17" H 12455 3796 50  0000 L CNN
F 1 "AO3400A" H 12455 3705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12450 3675 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12250 3750 50  0001 L CNN
	1    12250 3750
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:2N7002 Q18
U 1 1 5E1AC799
P 12250 4650
F 0 "Q18" H 12455 4696 50  0000 L CNN
F 1 "AO3400A" H 12455 4605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12450 4575 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12250 4650 50  0001 L CNN
	1    12250 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	12900 4650 12450 4650
Connection ~ 12900 4650
Wire Wire Line
	12150 3550 12150 3150
Wire Wire Line
	12150 3150 11550 3150
Wire Wire Line
	12150 4450 12150 4250
Wire Wire Line
	12150 4250 11550 4250
Wire Wire Line
	12150 3950 12150 4100
Wire Wire Line
	12150 4100 11550 4100
Wire Wire Line
	12150 4850 12150 4950
Wire Wire Line
	12150 4950 11550 4950
$Comp
L misc:HX711 U1
U 1 1 5E1D375D
P 5900 9400
F 0 "U1" H 5900 9975 50  0000 C CNN
F 1 "HX711" H 5900 9884 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 5900 9850 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf" H 5900 9850 50  0001 C CNN
	1    5900 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 9050 6800 9050
Wire Wire Line
	6800 9050 6800 8700
Wire Wire Line
	6800 8700 7200 8700
Connection ~ 6800 8700
Text Label 7100 8700 0    50   ~ 0
5V
$Comp
L Device:C C5
U 1 1 5E23C10B
P 4800 8700
F 0 "C5" V 4548 8700 50  0000 C CNN
F 1 "10μF" V 4639 8700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 8550 50  0001 C CNN
F 3 "~" H 4800 8700 50  0001 C CNN
	1    4800 8700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E23E061
P 4650 8700
F 0 "#PWR0105" H 4650 8450 50  0001 C CNN
F 1 "GND" H 4655 8527 50  0000 C CNN
F 2 "" H 4650 8700 50  0001 C CNN
F 3 "" H 4650 8700 50  0001 C CNN
	1    4650 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 9150 6700 9150
Wire Wire Line
	6700 9150 6700 9250
Wire Wire Line
	6350 9250 6700 9250
Connection ~ 6700 9250
Wire Wire Line
	6700 9250 6700 9650
Wire Wire Line
	6350 9650 6700 9650
Connection ~ 6700 9650
Wire Wire Line
	6700 9650 6700 9750
Wire Wire Line
	6350 9750 6700 9750
Connection ~ 6700 9750
Wire Wire Line
	6700 9750 6700 10000
$Comp
L power:GND #PWR0106
U 1 1 5E2C7EAE
P 6700 10000
F 0 "#PWR0106" H 6700 9750 50  0001 C CNN
F 1 "GND" H 6705 9827 50  0000 C CNN
F 2 "" H 6700 10000 50  0001 C CNN
F 3 "" H 6700 10000 50  0001 C CNN
	1    6700 10000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8550 Q16
U 1 1 5E2CB094
P 4900 9150
F 0 "Q16" H 5091 9104 50  0000 L CNN
F 1 "MMBT4403" H 5091 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5100 9075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Guangdong-Hottech-MMBT4403_C181124.pdf" H 4900 9150 50  0001 L CNN
	1    4900 9150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 8700 5150 8700
Wire Wire Line
	5450 9050 5150 9050
Wire Wire Line
	5150 9050 5150 8900
Connection ~ 5150 8700
Wire Wire Line
	5150 8700 6800 8700
Wire Wire Line
	5150 8900 4800 8900
Wire Wire Line
	4800 8900 4800 8950
Connection ~ 5150 8900
Wire Wire Line
	5150 8900 5150 8700
Wire Wire Line
	5100 9150 5450 9150
Wire Wire Line
	5450 9250 5000 9250
Wire Wire Line
	5000 9250 5000 9350
Wire Wire Line
	5000 9350 4800 9350
Connection ~ 4800 9350
Wire Wire Line
	4800 9350 4450 9350
$Comp
L Device:R R14
U 1 1 5E5754F5
P 4450 9500
F 0 "R14" H 4520 9546 50  0000 L CNN
F 1 "20K" H 4520 9455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 9500 50  0001 C CNN
F 3 "~" H 4450 9500 50  0001 C CNN
	1    4450 9500
	1    0    0    -1  
$EndComp
Connection ~ 4450 9350
Wire Wire Line
	5450 9350 5100 9350
Wire Wire Line
	5100 9350 5100 9650
Wire Wire Line
	5100 9650 4450 9650
$Comp
L Device:R R15
U 1 1 5E59CAD7
P 4450 9800
F 0 "R15" H 4520 9846 50  0000 L CNN
F 1 "8.2K" H 4520 9755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 9800 50  0001 C CNN
F 3 "~" H 4450 9800 50  0001 C CNN
	1    4450 9800
	1    0    0    -1  
$EndComp
Connection ~ 4450 9650
Wire Wire Line
	5450 9450 5200 9450
Wire Wire Line
	5200 9450 5200 9950
Wire Wire Line
	5200 9950 4450 9950
Connection ~ 4450 9950
Wire Wire Line
	4100 9350 4450 9350
Wire Wire Line
	4100 9950 4450 9950
$Comp
L Device:C C2
U 1 1 5E63B958
P 4100 9500
F 0 "C2" H 3985 9454 50  0000 R CNN
F 1 "10μF" H 3985 9545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4138 9350 50  0001 C CNN
F 3 "~" H 4100 9500 50  0001 C CNN
	1    4100 9500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E63C3A8
P 3900 9800
F 0 "#PWR0107" H 3900 9550 50  0001 C CNN
F 1 "GND" H 3905 9627 50  0000 C CNN
F 2 "" H 3900 9800 50  0001 C CNN
F 3 "" H 3900 9800 50  0001 C CNN
	1    3900 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 9650 4100 9700
Connection ~ 4100 9700
Wire Wire Line
	4100 9700 4100 9950
Wire Wire Line
	5450 9550 5300 9550
$Comp
L Device:C C3
U 1 1 5E7141B7
P 4250 10100
F 0 "C3" V 4100 10100 50  0000 C CNN
F 1 "0.1μF" V 4000 10100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4288 9950 50  0001 C CNN
F 3 "~" H 4250 10100 50  0001 C CNN
	1    4250 10100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 9950 4100 10100
Connection ~ 4100 9950
Wire Wire Line
	4400 10100 5300 10100
Wire Wire Line
	5300 9550 5300 10100
Wire Wire Line
	5450 9650 5350 9650
Wire Wire Line
	5350 9650 5350 10450
Wire Wire Line
	5350 10450 4600 10450
$Comp
L Device:R R12
U 1 1 5E78C5AE
P 3850 10450
F 0 "R12" V 3750 10450 50  0000 C CNN
F 1 "100" V 3850 10450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 10450 50  0001 C CNN
F 3 "~" H 3850 10450 50  0001 C CNN
	1    3850 10450
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E78D640
P 3850 10750
F 0 "R13" V 3950 10750 50  0000 C CNN
F 1 "100" V 3850 10750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 10750 50  0001 C CNN
F 3 "~" H 3850 10750 50  0001 C CNN
	1    3850 10750
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 9750 5400 9750
Wire Wire Line
	5400 10750 4600 10750
Wire Wire Line
	5400 9750 5400 10750
$Comp
L Device:C C4
U 1 1 5E8846B1
P 4600 10600
F 0 "C4" H 4500 10700 50  0000 C CNN
F 1 "0.1μF" H 4450 10500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4638 10450 50  0001 C CNN
F 3 "~" H 4600 10600 50  0001 C CNN
	1    4600 10600
	1    0    0    -1  
$EndComp
Connection ~ 4600 10450
Wire Wire Line
	4600 10450 4000 10450
Connection ~ 4600 10750
Wire Wire Line
	4600 10750 4000 10750
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5E8855FA
P 2850 9550
F 0 "J5" H 2768 9125 50  0000 C CNN
F 1 "WEIGHT" H 2768 9216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-4-5.0-H_1x04_P5.00mm_Horizontal" H 2850 9550 50  0001 C CNN
F 3 "~" H 2850 9550 50  0001 C CNN
	1    2850 9550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E889B8B
P 3050 9450
F 0 "#PWR0108" H 3050 9200 50  0001 C CNN
F 1 "GND" V 3055 9322 50  0000 R CNN
F 2 "" H 3050 9450 50  0001 C CNN
F 3 "" H 3050 9450 50  0001 C CNN
	1    3050 9450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 9350 3650 9350
Connection ~ 4100 9350
Wire Wire Line
	3050 9550 3400 9550
Wire Wire Line
	3400 9550 3400 10450
Wire Wire Line
	3400 10450 3700 10450
Wire Wire Line
	3050 9650 3250 9650
Wire Wire Line
	3250 9650 3250 10750
Wire Wire Line
	3250 10750 3700 10750
Wire Wire Line
	6350 9450 7200 9450
Wire Wire Line
	6350 9550 7200 9550
Text Label 7200 9450 2    50   ~ 0
Weight_D
Text Label 7200 9550 2    50   ~ 0
Weight_CLK
$Comp
L Device:C C1
U 1 1 5E966431
P 3650 9500
F 0 "C1" H 3535 9454 50  0000 R CNN
F 1 "0.1μF" H 3535 9545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3688 9350 50  0001 C CNN
F 3 "~" H 3650 9500 50  0001 C CNN
	1    3650 9500
	-1   0    0    1   
$EndComp
Connection ~ 3650 9350
Wire Wire Line
	3650 9350 4100 9350
Wire Wire Line
	4100 9700 3900 9700
Wire Wire Line
	3650 9700 3650 9650
Wire Wire Line
	3900 9700 3900 9800
Connection ~ 3900 9700
Wire Wire Line
	3900 9700 3650 9700
Text Notes 4900 8400 0    118  ~ 24
Weight
Wire Wire Line
	1000 7050 1800 7050
$Comp
L Transistor_FET:BSS138 Q15
U 1 1 5EB96DC5
P 1700 7850
F 0 "Q15" H 1904 7896 50  0000 L CNN
F 1 "BSS138" H 1904 7805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1900 7775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 1700 7850 50  0001 L CNN
	1    1700 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 8150 1800 8050
Wire Wire Line
	550  8150 1100 8150
$Comp
L Device:R R9
U 1 1 5EC1A4CE
P 1100 8000
F 0 "R9" H 1170 8046 50  0000 L CNN
F 1 "10K" H 1170 7955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1030 8000 50  0001 C CNN
F 3 "~" H 1100 8000 50  0001 C CNN
	1    1100 8000
	1    0    0    -1  
$EndComp
Connection ~ 1100 8150
Wire Wire Line
	1100 8150 1800 8150
Wire Wire Line
	1100 7850 1500 7850
Wire Wire Line
	1100 7850 550  7850
Connection ~ 1100 7850
Text Label 550  7850 0    50   ~ 0
3V3_PI
Wire Wire Line
	1800 7650 2300 7650
Wire Wire Line
	2300 7650 2300 7850
Wire Wire Line
	2300 7850 2450 7850
$Comp
L Device:R R10
U 1 1 5EC9F3E3
P 1800 7350
F 0 "R10" H 1870 7396 50  0000 L CNN
F 1 "10K" H 1870 7305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 7350 50  0001 C CNN
F 3 "~" H 1800 7350 50  0001 C CNN
	1    1800 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7650 1800 7500
Connection ~ 1800 7650
Wire Wire Line
	1800 7200 1800 7050
Connection ~ 1800 7050
Wire Wire Line
	1800 7050 2450 7050
Text Notes 14100 8750 0    50   ~ 0
Use a seperate pull-up since the 60k\nbuilt in from raspi might be insufficient \nfor longer cables.
Text Label 14200 9200 0    50   ~ 0
Trigger
Text Label 14200 8900 0    50   ~ 0
3V3_PI
$Comp
L power:GND #PWR07
U 1 1 5E99F326
P 14200 9300
F 0 "#PWR07" H 14200 9050 50  0001 C CNN
F 1 "GND" H 14205 9127 50  0000 C CNN
F 2 "" H 14200 9300 50  0001 C CNN
F 3 "" H 14200 9300 50  0001 C CNN
	1    14200 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 9300 14200 9300
Connection ~ 14800 9200
Wire Wire Line
	14800 9200 14200 9200
Wire Wire Line
	14800 8900 14200 8900
Wire Wire Line
	15150 9200 14800 9200
$Comp
L Device:R R4
U 1 1 5E917B4B
P 14800 9050
F 0 "R4" H 14730 9004 50  0000 R CNN
F 1 "10K" H 14730 9095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 14730 9050 50  0001 C CNN
F 3 "~" H 14800 9050 50  0001 C CNN
	1    14800 9050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J14
U 1 1 5E828DD5
P 15350 9200
F 0 "J14" V 15222 9280 50  0000 L CNN
F 1 "Trigger" H 15700 9150 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 15350 9200 50  0001 C CNN
F 3 "~" H 15350 9200 50  0001 C CNN
	1    15350 9200
	1    0    0    -1  
$EndComp
Text Notes 14350 8400 0    118  ~ 24
Trigger
$Comp
L Sensor:LTC2990 U3
U 1 1 5EE87E5C
P 7100 5300
F 0 "U3" H 7100 4611 50  0000 C CNN
F 1 "LTC2990" H 7100 4520 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 7100 5300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2990.pdf" H 6500 5800 50  0001 C CNN
	1    7100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5300 8050 5300
Wire Wire Line
	8050 5300 8050 6350
Wire Wire Line
	10400 5300 10100 5300
Wire Wire Line
	7950 5200 7950 6450
Wire Wire Line
	10500 5200 10100 5200
Wire Wire Line
	7700 5200 7950 5200
Wire Wire Line
	7700 5500 7850 5500
Wire Wire Line
	7850 5500 7850 5600
Wire Wire Line
	7850 5600 7700 5600
Wire Wire Line
	7850 5600 7850 5900
Wire Wire Line
	7850 5900 7500 5900
Connection ~ 7850 5600
$Comp
L power:GND #PWR0109
U 1 1 5EF6D919
P 7500 5900
F 0 "#PWR0109" H 7500 5650 50  0001 C CNN
F 1 "GND" H 7505 5727 50  0000 C CNN
F 2 "" H 7500 5900 50  0001 C CNN
F 3 "" H 7500 5900 50  0001 C CNN
	1    7500 5900
	1    0    0    -1  
$EndComp
Connection ~ 7500 5900
Wire Wire Line
	7500 5900 7100 5900
Wire Wire Line
	10100 5600 10100 5900
Wire Wire Line
	10100 5900 9850 5900
$Comp
L power:GND #PWR0110
U 1 1 5EF9E273
P 9850 5900
F 0 "#PWR0110" H 9850 5650 50  0001 C CNN
F 1 "GND" H 9855 5727 50  0000 C CNN
F 2 "" H 9850 5900 50  0001 C CNN
F 3 "" H 9850 5900 50  0001 C CNN
	1    9850 5900
	1    0    0    -1  
$EndComp
Connection ~ 9850 5900
Wire Wire Line
	9850 5900 9500 5900
Text Label 8150 4700 2    50   ~ 0
3V3
Text Label 8250 5100 0    50   ~ 0
12V
Text Label 9200 4000 3    50   ~ 0
5V
Text Label 10550 4700 2    50   ~ 0
3V3
$Comp
L Device:R R25
U 1 1 5F09BD9F
P 6950 4200
F 0 "R25" V 6850 4200 50  0000 C CNN
F 1 "0.03" V 6950 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 6880 4200 50  0001 C CNN
F 3 "~" H 6950 4200 50  0001 C CNN
	1    6950 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F09E027
P 5900 5300
F 0 "R16" H 5950 5350 50  0000 L CNN
F 1 "0.15" V 5900 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 5830 5300 50  0001 C CNN
F 3 "~" H 5900 5300 50  0001 C CNN
	1    5900 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5F09F4E9
P 6800 4400
F 0 "R22" H 6750 4350 50  0000 R CNN
F 1 "100K" V 6800 4500 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6730 4400 50  0001 C CNN
F 3 "~" H 6800 4400 50  0001 C CNN
	1    6800 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5F09F9CA
P 6500 4600
F 0 "R21" V 6600 4600 50  0000 C CNN
F 1 "20K" V 6500 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6430 4600 50  0001 C CNN
F 3 "~" H 6500 4600 50  0001 C CNN
	1    6500 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R26
U 1 1 5F09FFF9
P 7100 4400
F 0 "R26" H 7050 4350 50  0000 R CNN
F 1 "100K" V 7100 4500 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 4400 50  0001 C CNN
F 3 "~" H 7100 4400 50  0001 C CNN
	1    7100 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5F0A06C3
P 7350 4600
F 0 "R27" V 7450 4600 50  0000 C CNN
F 1 "20K" V 7350 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7280 4600 50  0001 C CNN
F 3 "~" H 7350 4600 50  0001 C CNN
	1    7350 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 4200 6800 4250
Wire Wire Line
	6800 4550 6800 4600
Wire Wire Line
	6800 4600 6650 4600
Connection ~ 6800 4600
Wire Wire Line
	6800 4600 6800 4700
Wire Wire Line
	7100 4550 7100 4600
Wire Wire Line
	7100 4600 7200 4600
Connection ~ 7100 4600
Wire Wire Line
	7100 4600 7100 4700
Wire Wire Line
	7100 4250 7100 4200
$Comp
L Device:R R17
U 1 1 5F2035D0
P 6150 5100
F 0 "R17" V 6050 5100 50  0000 C CNN
F 1 "100K" V 6150 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 5100 50  0001 C CNN
F 3 "~" H 6150 5100 50  0001 C CNN
	1    6150 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F203B2F
P 6150 5500
F 0 "R18" V 6050 5500 50  0000 C CNN
F 1 "100K" V 6150 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 5500 50  0001 C CNN
F 3 "~" H 6150 5500 50  0001 C CNN
	1    6150 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 5100 6400 5100
Wire Wire Line
	6000 5100 5900 5100
Wire Wire Line
	5900 5100 5900 5150
Wire Wire Line
	5900 5450 5900 5500
Wire Wire Line
	5900 5500 6000 5500
Wire Wire Line
	6300 5500 6400 5500
$Comp
L Device:R R20
U 1 1 5F2D5BCC
P 6400 5700
F 0 "R20" H 6330 5654 50  0000 R CNN
F 1 "47K" V 6400 5800 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 5700 50  0001 C CNN
F 3 "~" H 6400 5700 50  0001 C CNN
	1    6400 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5F2D6087
P 6400 4900
F 0 "R19" H 6330 4854 50  0000 R CNN
F 1 "47K" V 6400 5000 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 4900 50  0001 C CNN
F 3 "~" H 6400 4900 50  0001 C CNN
	1    6400 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 4600 6300 4600
Wire Wire Line
	6400 4750 6300 4750
Wire Wire Line
	6300 4750 6300 4600
Connection ~ 6300 4600
Wire Wire Line
	6300 4600 6150 4600
$Comp
L power:GND #PWR0111
U 1 1 5F341BDD
P 7500 4600
F 0 "#PWR0111" H 7500 4350 50  0001 C CNN
F 1 "GND" V 7505 4472 50  0000 R CNN
F 2 "" H 7500 4600 50  0001 C CNN
F 3 "" H 7500 4600 50  0001 C CNN
	1    7500 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F342363
P 6150 4600
F 0 "#PWR0112" H 6150 4350 50  0001 C CNN
F 1 "GND" V 6155 4472 50  0000 R CNN
F 2 "" H 6150 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 5050 6400 5100
Connection ~ 6400 5100
Wire Wire Line
	6400 5100 6500 5100
Wire Wire Line
	6400 5550 6400 5500
Connection ~ 6400 5500
Wire Wire Line
	6400 5500 6500 5500
$Comp
L power:GND #PWR0113
U 1 1 5F3B0262
P 6400 5850
F 0 "#PWR0113" H 6400 5600 50  0001 C CNN
F 1 "GND" H 6405 5677 50  0000 C CNN
F 2 "" H 6400 5850 50  0001 C CNN
F 3 "" H 6400 5850 50  0001 C CNN
	1    6400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 1700 12050 1700
Connection ~ 12050 1700
Wire Wire Line
	13500 2300 13800 2300
Connection ~ 7100 4200
Wire Wire Line
	6800 4200 6550 4200
Connection ~ 6800 4200
Connection ~ 5900 5100
Wire Wire Line
	5900 5500 5900 5750
Connection ~ 5900 5500
Text Label 7450 4200 2    50   ~ 0
12V_ATX
Wire Wire Line
	7100 4200 7450 4200
Text Label 6550 4200 0    50   ~ 0
12V
Text Label 5900 4750 3    50   ~ 0
5V_ATX
Text Label 5900 5750 1    50   ~ 0
5V
Wire Wire Line
	5900 4750 5900 5100
Wire Wire Line
	10250 5500 10100 5500
Wire Wire Line
	10500 5200 10900 5200
Connection ~ 10500 5200
Wire Wire Line
	10400 5300 10900 5300
Connection ~ 10400 5300
Text Label 10900 5200 2    50   ~ 0
I2C_SDA
Text Label 10900 5300 2    50   ~ 0
I2C_SCL
Wire Wire Line
	1900 1350 700  1350
Wire Wire Line
	1900 1450 700  1450
Text Label 700  1350 0    50   ~ 0
I2C_SDA
Text Label 700  1450 0    50   ~ 0
I2C_SCL
NoConn ~ 6350 9350
Wire Wire Line
	700  1250 1900 1250
Text Notes 8050 3750 2    118  ~ 24
Current/Voltage Sensor
$Comp
L Device:R R32
U 1 1 5F8FA1DA
P 9200 4400
F 0 "R32" H 9150 4400 50  0000 R CNN
F 1 "100K" V 9200 4500 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 4400 50  0001 C CNN
F 3 "~" H 9200 4400 50  0001 C CNN
	1    9200 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R31
U 1 1 5F8FA660
P 9000 4600
F 0 "R31" V 9100 4600 50  0000 C CNN
F 1 "47K" V 9000 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 4600 50  0001 C CNN
F 3 "~" H 9000 4600 50  0001 C CNN
	1    9000 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F9E4285
P 8500 4600
F 0 "#PWR011" H 8500 4350 50  0001 C CNN
F 1 "GND" V 8505 4472 50  0000 R CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8500 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 4700 9950 4700
Wire Wire Line
	8850 4700 8850 4600
Wire Wire Line
	8900 5100 8850 5100
Wire Wire Line
	8850 5100 8850 5000
$Comp
L Device:R R28
U 1 1 5FC6A689
P 8650 5100
F 0 "R28" V 8750 5100 50  0000 C CNN
F 1 "100K" V 8650 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8580 5100 50  0001 C CNN
F 3 "~" H 8650 5100 50  0001 C CNN
	1    8650 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 5100 8800 5100
Connection ~ 8850 5100
Wire Wire Line
	9200 4250 9200 4000
Wire Wire Line
	8500 5100 8250 5100
Text Label 11550 3150 0    50   ~ 0
3V3_PI
Text Label 11550 4250 0    50   ~ 0
3V3_PI
Wire Wire Line
	8050 6350 10400 6350
Wire Wire Line
	10400 5300 10400 6350
Wire Wire Line
	7950 6450 10500 6450
Wire Wire Line
	10500 5200 10500 6450
$Comp
L Sensor:LTC2990 U4
U 1 1 5EE8461A
P 9500 5300
F 0 "U4" H 9500 4611 50  0000 C CNN
F 1 "LTC2990" H 9500 4520 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9500 5300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2990.pdf" H 8900 5800 50  0001 C CNN
	1    9500 5300
	1    0    0    -1  
$EndComp
Text Label 9500 4000 3    50   ~ 0
3V3_PI
Wire Wire Line
	9500 4000 9500 4700
NoConn ~ 8900 5500
Wire Wire Line
	10250 5500 10250 4700
Connection ~ 10250 4700
Wire Wire Line
	10250 4700 10550 4700
$Comp
L Device:C C6
U 1 1 5E1B2714
P 9950 4550
F 0 "C6" H 10065 4596 50  0000 L CNN
F 1 "0.1μF" H 10065 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9988 4400 50  0001 C CNN
F 3 "~" H 9950 4550 50  0001 C CNN
	1    9950 4550
	1    0    0    -1  
$EndComp
Connection ~ 9950 4700
Wire Wire Line
	9950 4700 10250 4700
$Comp
L power:GND #PWR012
U 1 1 5E1B4AB6
P 9950 4400
F 0 "#PWR012" H 9950 4150 50  0001 C CNN
F 1 "GND" H 9955 4227 50  0000 C CNN
F 2 "" H 9950 4400 50  0001 C CNN
F 3 "" H 9950 4400 50  0001 C CNN
	1    9950 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	9200 4550 9200 4600
Wire Wire Line
	9150 4600 9200 4600
Connection ~ 9200 4600
Wire Wire Line
	9200 4600 9200 4700
Wire Wire Line
	8850 4600 8500 4600
Connection ~ 8850 4600
$Comp
L Device:R R30
U 1 1 5FBB5C7A
P 8850 4850
F 0 "R30" H 8800 4850 50  0000 R CNN
F 1 "20K" V 8850 4950 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 4850 50  0001 C CNN
F 3 "~" H 8850 4850 50  0001 C CNN
	1    8850 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5E23AB46
P 7850 4550
F 0 "C7" H 7965 4596 50  0000 L CNN
F 1 "0.1μF" H 7965 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7888 4400 50  0001 C CNN
F 3 "~" H 7850 4550 50  0001 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
Connection ~ 7850 4700
Wire Wire Line
	7850 4700 7400 4700
$Comp
L power:GND #PWR013
U 1 1 5E2763D1
P 7850 4400
F 0 "#PWR013" H 7850 4150 50  0001 C CNN
F 1 "GND" V 7855 4272 50  0000 R CNN
F 2 "" H 7850 4400 50  0001 C CNN
F 3 "" H 7850 4400 50  0001 C CNN
	1    7850 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 4700 8150 4700
Wire Wire Line
	1900 2650 700  2650
Wire Wire Line
	1900 2750 700  2750
Text Label 700  2650 0    50   ~ 0
Weight_CLK
Text Label 700  2750 0    50   ~ 0
Weight_D
$Comp
L Device:R R33
U 1 1 5E1B5535
P 6200 1600
F 0 "R33" V 6100 1600 50  0000 C CNN
F 1 "DNP" V 6200 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 1600 50  0001 C CNN
F 3 "~" H 6200 1600 50  0001 C CNN
	1    6200 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1600 5800 1600
Wire Wire Line
	5800 1600 5800 1900
Wire Wire Line
	6350 1600 6600 1600
Wire Wire Line
	6600 1600 6600 1900
$Comp
L Connector:TestPoint TP2
U 1 1 5E238E97
P 9550 2100
F 0 "TP2" V 9504 2288 50  0000 L CNN
F 1 "3V3_PI" V 9595 2288 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9750 2100 50  0001 C CNN
F 3 "~" H 9750 2100 50  0001 C CNN
	1    9550 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5E238B2E
P 9550 2300
F 0 "TP3" V 9504 2488 50  0000 L CNN
F 1 "3V3" V 9595 2488 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9750 2300 50  0001 C CNN
F 3 "~" H 9750 2300 50  0001 C CNN
	1    9550 2300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E2387C0
P 9550 2500
F 0 "TP4" V 9504 2688 50  0000 L CNN
F 1 "5V" V 9595 2688 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9750 2500 50  0001 C CNN
F 3 "~" H 9750 2500 50  0001 C CNN
	1    9550 2500
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5E236258
P 9550 2700
F 0 "TP5" V 9504 2888 50  0000 L CNN
F 1 "12V" V 9595 2888 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9750 2700 50  0001 C CNN
F 3 "~" H 9750 2700 50  0001 C CNN
	1    9550 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5E427CC4
P 9550 1900
F 0 "TP1" V 9504 2088 50  0000 L CNN
F 1 "GND" V 9595 2088 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9750 1900 50  0001 C CNN
F 3 "~" H 9750 1900 50  0001 C CNN
	1    9550 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 1900 8950 1900
Wire Wire Line
	9550 2100 8950 2100
Wire Wire Line
	9550 2300 8950 2300
Wire Wire Line
	9550 2500 8950 2500
Wire Wire Line
	9550 2700 8950 2700
$Comp
L power:GND #PWR0114
U 1 1 5E560038
P 8950 1900
F 0 "#PWR0114" H 8950 1650 50  0001 C CNN
F 1 "GND" V 8955 1772 50  0000 R CNN
F 2 "" H 8950 1900 50  0001 C CNN
F 3 "" H 8950 1900 50  0001 C CNN
	1    8950 1900
	0    1    1    0   
$EndComp
Text Label 8950 2100 0    50   ~ 0
3V3_PI
Text Label 8950 2300 0    50   ~ 0
3V3
Text Label 8950 2500 0    50   ~ 0
5V
Text Label 8950 2700 0    50   ~ 0
12V
Text Notes 9050 1700 0    79   ~ 16
Testpoints
Text Label 3450 10450 0    50   ~ 0
INA_C-
Text Label 3450 10750 0    50   ~ 0
INA_C+
Text Label 4850 10450 0    50   ~ 0
INA-
Text Label 4850 10750 0    50   ~ 0
INA+
Text Label 4100 10450 0    50   ~ 0
INA_R-
Text Label 4100 10750 0    50   ~ 0
INAR+
Text Label 700  2850 0    50   ~ 0
Pump_M2
Text Label 700  2950 0    50   ~ 0
Pump_M1
Wire Wire Line
	1900 2950 700  2950
NoConn ~ 3100 2750
$EndSCHEMATC
