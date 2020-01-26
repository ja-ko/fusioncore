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
Text Label 3800 4700 2    60   ~ 0
3V3_PI
Text Label 7150 1650 2    60   ~ 0
5V_PI
Wire Wire Line
	6400 1650 6550 1650
Text Label 5300 1650 0    60   ~ 0
5V
Wire Wire Line
	5300 1650 5750 1650
Text Notes 5150 750  0    118  ~ 24
5V Powered HAT Protection
Text Notes 4900 1050 0    60   ~ 0
This is the recommended 5V rail protection for \na HAT with power going to the Pi.\nSee https://github.com/raspberrypi/hats/blob/master/designguide.md#back-powering-the-pi-via-the-j8-gpio-header
$Comp
L raspberrypi_hat:DMG2305UX Q1
U 1 1 58E14EB1
P 6150 1650
F 0 "Q1" V 6300 1800 50  0000 R CNN
F 1 "DMG2305UX" V 6300 1600 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 1750 50  0001 C CNN
F 3 "" H 6150 1650 50  0000 C CNN
F 4 "C144153" V 6150 1650 50  0001 C CNN "LCSC"
	1    6150 1650
	0    -1   -1   0   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 1 1 58E1538B
P 5850 2250
F 0 "Q2" H 6050 2325 50  0000 L CNN
F 1 "DMMT5401" H 6050 2250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6050 2175 50  0000 L CIN
F 3 "" H 5850 2250 50  0000 L CNN
F 4 "C154733" H 5850 2250 50  0001 C CNN "LCSC"
	1    5850 2250
	-1   0    0    1   
$EndComp
$Comp
L raspberrypi_hat:DMMT5401 Q2
U 2 1 58E153D6
P 6450 2250
F 0 "Q2" H 6650 2325 50  0000 L CNN
F 1 "DMMT5401" H 6650 2250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6650 2175 50  0000 L CIN
F 3 "" H 6450 2250 50  0000 L CNN
F 4 "C154733" H 6450 2250 50  0001 C CNN "LCSC"
	2    6450 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 58E15896
P 5750 2850
F 0 "R23" V 5830 2850 50  0000 C CNN
F 1 "10K" V 5750 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 2850 50  0001 C CNN
F 3 "" H 5750 2850 50  0001 C CNN
F 4 "C17414" V 5750 2850 50  0001 C CNN "LCSC"
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 58E158A1
P 6550 2850
F 0 "R24" V 6630 2850 50  0000 C CNN
F 1 "47K" V 6550 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 2850 50  0001 C CNN
F 3 "" H 6550 2850 50  0001 C CNN
F 4 "C17713" V 6550 2850 50  0001 C CNN "LCSC"
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58E15A41
P 5750 3050
F 0 "#PWR01" H 5750 2800 50  0001 C CNN
F 1 "GND" H 5750 2900 50  0000 C CNN
F 2 "" H 5750 3050 50  0000 C CNN
F 3 "" H 5750 3050 50  0000 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 58E15A9E
P 6550 3050
F 0 "#PWR02" H 6550 2800 50  0001 C CNN
F 1 "GND" H 6550 2900 50  0000 C CNN
F 2 "" H 6550 3050 50  0000 C CNN
F 3 "" H 6550 3050 50  0000 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3050 5750 3000
Wire Wire Line
	6550 3050 6550 3000
Wire Wire Line
	6550 2450 6550 2550
Wire Wire Line
	6150 1900 6150 2550
Wire Wire Line
	6150 2550 6550 2550
Connection ~ 6550 2550
Wire Wire Line
	5750 2450 5750 2600
Wire Wire Line
	6050 2250 6050 2600
Wire Wire Line
	5750 2600 6050 2600
Connection ~ 5750 2600
Wire Wire Line
	6250 2600 6250 2250
Connection ~ 6050 2600
Wire Wire Line
	5750 2050 5750 1650
Connection ~ 5750 1650
Wire Wire Line
	6550 2050 6550 1650
Connection ~ 6550 1650
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
P 3150 4800
F 0 "R6" V 3230 4800 50  0000 C CNN
F 1 "3.9K" V 3150 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 4800 50  0001 C CNN
F 3 "" H 3150 4800 50  0001 C CNN
F 4 "C17614" V 3150 4800 50  0001 C CNN "LCSC"
	1    3150 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 58E17720
P 3150 4700
F 0 "R8" V 3050 4700 50  0000 C CNN
F 1 "3.9K" V 3150 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 4700 50  0001 C CNN
F 3 "" H 3150 4700 50  0001 C CNN
F 4 "C17614" V 3150 4700 50  0001 C CNN "LCSC"
	1    3150 4700
	0    1    1    0   
$EndComp
Text Label 2850 4000 3    60   ~ 0
ID_SD_EEPROM
Text Label 2750 4000 3    60   ~ 0
ID_SC_EEPROM
Wire Wire Line
	2500 4700 2750 4700
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
F 4 "C17414" V 1450 5000 50  0001 C CNN "LCSC"
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
Text Notes 1900 3550 0    118  ~ 24
HAT EEPROM
Text Notes 850  9500 0    118  ~ 24
Mounting Holes
Text Notes 1550 750  0    118  ~ 24
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
Text Notes 700  3950 0    60   ~ 0
The HAT spec requires this EEPROM with system information\nto be in place in order to be called a HAT. It should be set up as write\nprotected (WP pin held high), so it may be desirable to either put a \njumper as shown to enable writing, or to hook up a spare IO pin to do so.
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
	6550 2550 6550 2700
Wire Wire Line
	5750 2600 5750 2700
Wire Wire Line
	6050 2600 6250 2600
Wire Wire Line
	5750 1650 5900 1650
Wire Wire Line
	6550 1650 7150 1650
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
Text Label 12800 1350 0    50   ~ 0
3V3
Text Label 700  2050 0    50   ~ 0
3V3_PI
Wire Wire Line
	13800 1350 14600 1350
Text Label 12800 1550 0    50   ~ 0
GND
Wire Wire Line
	12800 1550 13000 1550
Connection ~ 13000 1550
Wire Wire Line
	13000 1950 13000 1750
Connection ~ 13000 1750
Wire Wire Line
	13300 2450 13150 2450
Wire Wire Line
	13150 2450 13150 1450
Connection ~ 13150 1350
Wire Wire Line
	12800 1350 13150 1350
Connection ~ 13150 1450
Wire Wire Line
	13150 1450 13150 1350
Text Label 12650 1650 0    50   ~ 0
5V_ATX
Wire Wire Line
	12900 1850 12900 1650
Text Label 12800 2050 0    50   ~ 0
PWRG
Text Label 12800 2150 0    50   ~ 0
5VSTB
Wire Wire Line
	12900 2350 12900 2250
Text Label 12800 2250 0    50   ~ 0
12V_ATX
Wire Wire Line
	13800 1450 14600 1450
Text Label 14400 1450 0    50   ~ 0
-12V
Text Label 14350 1650 0    50   ~ 0
PS_ON
Wire Wire Line
	13800 1750 14850 1750
Wire Wire Line
	13800 1850 14850 1850
Wire Wire Line
	14850 1850 14850 1750
Wire Wire Line
	13800 1950 14850 1950
Wire Wire Line
	14850 1950 14850 1850
Connection ~ 14850 1850
Text Label 14500 2050 0    50   ~ 0
NC
Wire Wire Line
	13800 2450 14250 2450
Wire Wire Line
	14850 2450 14850 1950
Connection ~ 14850 1950
Wire Wire Line
	14850 1750 14850 1550
Connection ~ 14850 1750
Wire Wire Line
	14850 1550 14850 950 
Wire Wire Line
	14850 950  13000 950 
Wire Wire Line
	13000 950  13000 1550
Connection ~ 14850 1550
Wire Wire Line
	14600 1350 14600 1000
Wire Wire Line
	14600 1000 13150 1000
Wire Wire Line
	13150 1000 13150 1350
Wire Wire Line
	13800 2250 14350 2250
Wire Wire Line
	14350 2150 14350 2250
Connection ~ 14350 2250
Wire Wire Line
	13800 2350 14350 2350
Wire Wire Line
	14350 2350 14350 2250
Text Label 14650 2250 2    50   ~ 0
5V_ATX
Text Notes 13300 900  0    118  ~ 24
ATX Connector
Wire Wire Line
	14250 2450 14250 2550
Connection ~ 14250 2450
Wire Wire Line
	14250 2450 14850 2450
$Comp
L power:GND #PWR0101
U 1 1 5E1AC1EE
P 14250 2550
F 0 "#PWR0101" H 14250 2300 50  0001 C CNN
F 1 "GND" H 14255 2377 50  0000 C CNN
F 2 "" H 14250 2550 50  0001 C CNN
F 3 "" H 14250 2550 50  0001 C CNN
	1    14250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1550 700  1550
Text Label 700  1550 0    50   ~ 0
1W
Text Notes 14400 3250 0    118  ~ 24
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
F 4 "C17673" H 14500 3650 50  0001 C CNN "LCSC"
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
NoConn ~ 14600 2050
NoConn ~ 14600 1450
$Comp
L misc:AO3400A Q7
U 1 1 5E25072D
P 14550 7500
F 0 "Q7" H 14755 7546 50  0000 L CNN
F 1 "AO3400A" H 14755 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14750 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 14550 7500 50  0001 L CNN
F 4 "C20917" H 14550 7500 50  0001 C CNN "LCSC"
	1    14550 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 7700 14050 7700
Wire Wire Line
	14650 7700 14050 7700
Connection ~ 14050 7700
$Comp
L misc:AO3400A Q6
U 1 1 5E229573
P 13950 7500
F 0 "Q6" H 14155 7546 50  0000 L CNN
F 1 "AO3400A" H 14155 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14150 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13950 7500 50  0001 L CNN
F 4 "C20917" H 13950 7500 50  0001 C CNN "LCSC"
	1    13950 7500
	1    0    0    -1  
$EndComp
$Comp
L misc:AO3400A Q5
U 1 1 5E25D46D
P 13350 7500
F 0 "Q5" H 13555 7546 50  0000 L CNN
F 1 "AO3400A" H 13555 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13550 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 13350 7500 50  0001 L CNN
F 4 "C20917" H 13350 7500 50  0001 C CNN "LCSC"
	1    13350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 7700 12850 7700
Wire Wire Line
	12850 7700 13450 7700
Connection ~ 12850 7700
$Comp
L misc:AO3400A Q4
U 1 1 5E2649AC
P 12750 7500
F 0 "Q4" H 12955 7546 50  0000 L CNN
F 1 "AO3400A" H 12955 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12950 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12750 7500 50  0001 L CNN
F 4 "C20917" H 12750 7500 50  0001 C CNN "LCSC"
	1    12750 7500
	1    0    0    -1  
$EndComp
$Comp
L misc:AO3400A Q3
U 1 1 5E2672F5
P 12150 7500
F 0 "Q3" H 12355 7546 50  0000 L CNN
F 1 "AO3400A" H 12355 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12350 7425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 12150 7500 50  0001 L CNN
F 4 "C20917" H 12150 7500 50  0001 C CNN "LCSC"
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
L misc:AO3400A Q14
U 1 1 5E4ABE26
P 10550 9850
F 0 "Q14" H 10755 9804 50  0000 L CNN
F 1 "AO3400A" H 10755 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10750 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 10550 9850 50  0001 L CNN
F 4 "C20917" H 10550 9850 50  0001 C CNN "LCSC"
	1    10550 9850
	-1   0    0    1   
$EndComp
$Comp
L misc:AO3400A Q13
U 1 1 5E4BE4F8
P 10200 9500
F 0 "Q13" H 10405 9454 50  0000 L CNN
F 1 "AO3400A" H 10405 9545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10400 9425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 10200 9500 50  0001 L CNN
F 4 "C20917" H 10200 9500 50  0001 C CNN "LCSC"
	1    10200 9500
	-1   0    0    1   
$EndComp
$Comp
L misc:AO3400A Q12
U 1 1 5E4C2530
P 9850 9150
F 0 "Q12" H 10055 9104 50  0000 L CNN
F 1 "AO3400A" H 10055 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10050 9075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9850 9150 50  0001 L CNN
F 4 "C20917" H 9850 9150 50  0001 C CNN "LCSC"
	1    9850 9150
	-1   0    0    1   
$EndComp
$Comp
L misc:AO3400A Q11
U 1 1 5E4C91A1
P 9500 9850
F 0 "Q11" H 9705 9804 50  0000 L CNN
F 1 "AO3400A" H 9705 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9500 9850 50  0001 L CNN
F 4 "C20917" H 9500 9850 50  0001 C CNN "LCSC"
	1    9500 9850
	-1   0    0    1   
$EndComp
$Comp
L misc:AO3400A Q10
U 1 1 5E4F8845
P 9150 9500
F 0 "Q10" H 9355 9454 50  0000 L CNN
F 1 "AO3400A" H 9355 9545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9350 9425 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 9150 9500 50  0001 L CNN
F 4 "C20917" H 9150 9500 50  0001 C CNN "LCSC"
	1    9150 9500
	-1   0    0    1   
$EndComp
$Comp
L misc:AO3400A Q9
U 1 1 5E5006E3
P 8800 9150
F 0 "Q9" H 9005 9104 50  0000 L CNN
F 1 "AO3400A" H 9005 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9000 9075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 8800 9150 50  0001 L CNN
F 4 "C20917" H 8800 9150 50  0001 C CNN "LCSC"
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
L misc:AO3400A Q8
U 1 1 5E5DDBAC
P 8450 9850
F 0 "Q8" H 8655 9804 50  0000 L CNN
F 1 "AO3400A" H 8655 9895 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8650 9775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Alpha-Omega-Semicon-AOS-AO3400A_C20917.pdf" H 8450 9850 50  0001 L CNN
F 4 "C20917" H 8450 9850 50  0001 C CNN "LCSC"
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
F 4 "C64898" H 14750 5500 50  0001 C CNN "LCSC"
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
F 4 "C64898" H 14750 5800 50  0001 C CNN "LCSC"
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
F 4 "C64898" H 14750 6100 50  0001 C CNN "LCSC"
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
F 4 "C64898" H 14750 6400 50  0001 C CNN "LCSC"
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
F 4 "C64898" H 14750 6700 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 10500 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 10150 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 9800 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 9450 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 9100 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 8750 10400 50  0001 C CNN "LCSC"
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
F 4 "C64898" V 8400 10400 50  0001 C CNN "LCSC"
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
Text Notes 12550 8400 0    118  ~ 24
LEDs
$Comp
L power:GND #PWR09
U 1 1 5EA0CA06
P 12900 8850
F 0 "#PWR09" H 12900 8600 50  0001 C CNN
F 1 "GND" V 12905 8677 50  0000 C CNN
F 2 "" H 12900 8850 50  0001 C CNN
F 3 "" H 12900 8850 50  0001 C CNN
	1    12900 8850
	0    1    1    0   
$EndComp
Text Label 12300 8650 0    50   ~ 0
5V
$Comp
L Connector:Screw_Terminal_01x03 J22
U 1 1 5EA8B0E8
P 13100 8750
F 0 "J22" H 13180 8792 50  0000 L CNN
F 1 "LED" H 13180 8701 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 13100 8750 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 13100 8750 50  0001 C CNN
	1    13100 8750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J12
U 1 1 5EB59A4E
P 12700 3650
F 0 "J12" H 12780 3692 50  0000 L CNN
F 1 "Flow_Warm" H 12780 3601 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 12700 3650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 12700 3650 50  0001 C CNN
	1    12700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 3550 12250 3550
Wire Wire Line
	12500 3650 11950 3650
Wire Wire Line
	12500 3750 12150 3750
$Comp
L Connector:Screw_Terminal_01x03 J13
U 1 1 5EC8F691
P 12700 4550
F 0 "J13" H 12780 4592 50  0000 L CNN
F 1 "Flow_Cold" H 12780 4501 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 12700 4550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Phoenix%20Contact%20PDFs/1935161.pdf" H 12700 4550 50  0001 C CNN
	1    12700 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC913D8
P 11950 3800
F 0 "R2" H 12020 3846 50  0000 L CNN
F 1 "10K" V 11950 3700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11880 3800 50  0001 C CNN
F 3 "~" H 11950 3800 50  0001 C CNN
F 4 "C17414" H 11950 3800 50  0001 C CNN "LCSC"
	1    11950 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5ECC146B
P 11950 4400
F 0 "R3" H 12020 4446 50  0000 L CNN
F 1 "10K" V 11950 4300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 11880 4400 50  0001 C CNN
F 3 "~" H 11950 4400 50  0001 C CNN
F 4 "C17414" H 11950 4400 50  0001 C CNN "LCSC"
	1    11950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 4550 11950 4550
Wire Wire Line
	11950 4250 11950 4100
Wire Wire Line
	12150 4100 12150 3750
Wire Wire Line
	11950 4100 11950 3950
Wire Wire Line
	12150 4100 12150 4650
Wire Wire Line
	12150 4650 12500 4650
Connection ~ 12150 4100
Wire Wire Line
	12500 4450 12250 4450
Wire Wire Line
	12250 4450 12250 3550
Wire Wire Line
	12250 3550 12250 3450
Wire Wire Line
	12250 3450 11500 3450
Connection ~ 12250 3550
Text Label 11500 3450 0    50   ~ 0
5V
$Comp
L power:GND #PWR06
U 1 1 5EDCDCA1
P 11500 4100
F 0 "#PWR06" H 11500 3850 50  0001 C CNN
F 1 "GND" H 11505 3927 50  0000 C CNN
F 2 "" H 11500 4100 50  0001 C CNN
F 3 "" H 11500 4100 50  0001 C CNN
	1    11500 4100
	1    0    0    -1  
$EndComp
Text Notes 11700 3300 0    118  ~ 24
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
	13800 1550 14850 1550
Wire Wire Line
	13800 2050 14600 2050
Wire Wire Line
	13150 1350 13300 1350
Wire Wire Line
	13300 1450 13150 1450
Wire Wire Line
	13000 1550 13300 1550
Wire Wire Line
	13300 1750 13000 1750
Wire Wire Line
	13300 1850 12900 1850
Wire Wire Line
	13300 1950 13000 1950
Wire Wire Line
	13300 2250 12900 2250
Wire Wire Line
	13300 2350 12900 2350
Wire Wire Line
	13800 2150 14350 2150
Wire Wire Line
	13000 1750 13000 1550
Wire Wire Line
	13300 1650 12900 1650
$Comp
L Connector_Generic:Conn_02x12_Top_Bottom J1
U 1 1 5E0EF3B3
P 13500 1850
F 0 "J1" H 13550 1117 50  0000 C CNN
F 1 "Conn_02x12_Top_Bottom" H 13550 1026 50  0000 C CNN
F 2 "Connector_Molex:Molex_Mini-Fit_Jr_5566-24A_2x12_P4.20mm_Vertical" H 13500 1850 50  0001 C CNN
F 3 "~" H 13500 1850 50  0001 C CNN
	1    13500 1850
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
P 12400 2050
F 0 "R5" V 12300 2050 50  0000 C CNN
F 1 "150" V 12400 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12330 2050 50  0001 C CNN
F 3 "~" H 12400 2050 50  0001 C CNN
F 4 "C17471" V 12400 2050 50  0001 C CNN "LCSC"
	1    12400 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	12550 2050 13300 2050
$Comp
L power:GND #PWR0103
U 1 1 5F8D243B
P 11600 2250
F 0 "#PWR0103" H 11600 2000 50  0001 C CNN
F 1 "GND" H 11605 2077 50  0000 C CNN
F 2 "" H 11600 2250 50  0001 C CNN
F 3 "" H 11600 2250 50  0001 C CNN
	1    11600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D13
U 1 1 5F8F0BD0
P 12050 2050
F 0 "D13" H 12043 2266 50  0000 C CNN
F 1 "POWER GOOD" H 12043 2175 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 12050 2050 50  0001 C CNN
F 3 "~" H 12050 2050 50  0001 C CNN
F 4 "C72043" H 12050 2050 50  0001 C CNN "LCSC"
	1    12050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F8F194C
P 12400 2250
F 0 "R7" V 12500 2250 50  0000 C CNN
F 1 "150" V 12400 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12330 2250 50  0001 C CNN
F 3 "~" H 12400 2250 50  0001 C CNN
F 4 "C17471" V 12400 2250 50  0001 C CNN "LCSC"
	1    12400 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D14
U 1 1 5F8F1E60
P 12050 2250
F 0 "D14" H 12050 2050 50  0000 C CNN
F 1 "STANDBY" H 12050 2150 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12050 2250 50  0001 C CNN
F 3 "~" H 12050 2250 50  0001 C CNN
F 4 "C2296" H 12050 2250 50  0001 C CNN "LCSC"
	1    12050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 2250 12200 2250
Wire Wire Line
	12250 2050 12200 2050
Wire Wire Line
	11900 2050 11600 2050
Wire Wire Line
	11600 2050 11600 2250
Connection ~ 11600 2250
Wire Wire Line
	11600 2250 11900 2250
Wire Wire Line
	12900 2250 12800 2250
Connection ~ 12900 2250
Wire Wire Line
	12550 2150 12550 2250
Wire Wire Line
	12550 2150 13300 2150
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5F9F56A0
P 15350 1650
F 0 "SW1" H 15350 1917 50  0000 C CNN
F 1 "POWER_ON" H 15350 1826 50  0000 C CNN
F 2 "" H 15350 1650 50  0001 C CNN
F 3 "~" H 15350 1650 50  0001 C CNN
	1    15350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F9F724F
P 15850 1650
F 0 "#PWR0104" H 15850 1400 50  0001 C CNN
F 1 "GND" H 15855 1477 50  0000 C CNN
F 2 "" H 15850 1650 50  0001 C CNN
F 3 "" H 15850 1650 50  0001 C CNN
	1    15850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 1650 15050 1650
Wire Wire Line
	15650 1650 15850 1650
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
Connection ~ 11950 3650
Connection ~ 11950 4100
Wire Wire Line
	11950 4100 12150 4100
Wire Wire Line
	11500 3650 11950 3650
Wire Wire Line
	11500 4100 11950 4100
Wire Wire Line
	11950 4550 11500 4550
Connection ~ 11950 4550
$Comp
L misc:HX711 U1
U 1 1 5E1D375D
P 5900 9400
F 0 "U1" H 5900 9975 50  0000 C CNN
F 1 "HX711" H 5900 9884 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.55x10.3mm_P1.27mm" H 5900 9850 50  0001 C CNN
F 3 "https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf" H 5900 9850 50  0001 C CNN
F 4 "C43656" H 5900 9400 50  0001 C CNN "LCSC"
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
F 4 "C15850" V 4800 8700 50  0001 C CNN "LCSC"
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
F 4 "C8513" H 4900 9150 50  0001 C CNN "LCSC"
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
F 4 "C4328" H 4450 9500 50  0001 C CNN "LCSC"
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
F 4 "C17828" H 4450 9800 50  0001 C CNN "LCSC"
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
F 4 "C15850" H 4100 9500 50  0001 C CNN "LCSC"
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
F 4 "C49678" V 4250 10100 50  0001 C CNN "LCSC"
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
F 4 "C49678" H 4600 10600 50  0001 C CNN "LCSC"
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
F 4 "C49678" H 3650 9500 50  0001 C CNN "LCSC"
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
F 4 "C17414" H 14800 9050 50  0001 C CNN "LCSC"
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
P 5750 5250
F 0 "U3" H 5750 4561 50  0000 C CNN
F 1 "LTC2990" H 5750 4470 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5750 5250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2990.pdf" H 5150 5750 50  0001 C CNN
F 4 "C107804" H 5750 5250 50  0001 C CNN "LCSC"
	1    5750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5450 6500 5450
Wire Wire Line
	6500 5450 6500 5550
Wire Wire Line
	6500 5550 6350 5550
Wire Wire Line
	6500 5550 6500 5850
Wire Wire Line
	6500 5850 6150 5850
Connection ~ 6500 5550
$Comp
L power:GND #PWR0109
U 1 1 5EF6D919
P 6150 5850
F 0 "#PWR0109" H 6150 5600 50  0001 C CNN
F 1 "GND" H 6155 5677 50  0000 C CNN
F 2 "" H 6150 5850 50  0001 C CNN
F 3 "" H 6150 5850 50  0001 C CNN
	1    6150 5850
	1    0    0    -1  
$EndComp
Connection ~ 6150 5850
Wire Wire Line
	6150 5850 5750 5850
Wire Wire Line
	8900 5550 8900 5850
Wire Wire Line
	8900 5850 8650 5850
$Comp
L power:GND #PWR0110
U 1 1 5EF9E273
P 8650 5850
F 0 "#PWR0110" H 8650 5600 50  0001 C CNN
F 1 "GND" H 8655 5677 50  0000 C CNN
F 2 "" H 8650 5850 50  0001 C CNN
F 3 "" H 8650 5850 50  0001 C CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
Connection ~ 8650 5850
Wire Wire Line
	8650 5850 8300 5850
Text Label 6800 4650 2    50   ~ 0
3V3
Text Label 7050 5050 0    50   ~ 0
12V
Text Label 8000 3950 3    50   ~ 0
5V
Text Label 9350 4650 2    50   ~ 0
3V3
$Comp
L Device:R R25
U 1 1 5F09BD9F
P 5600 4150
F 0 "R25" V 5500 4150 50  0000 C CNN
F 1 "0.03" V 5600 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 5530 4150 50  0001 C CNN
F 3 "~" H 5600 4150 50  0001 C CNN
F 4 "C87220" V 5600 4150 50  0001 C CNN "LCSC"
	1    5600 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F09E027
P 4550 5250
F 0 "R16" H 4600 5300 50  0000 L CNN
F 1 "0.15" V 4550 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4480 5250 50  0001 C CNN
F 3 "~" H 4550 5250 50  0001 C CNN
F 4 "C247454" H 4550 5250 50  0001 C CNN "LCSC"
	1    4550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5F09F4E9
P 5450 4350
F 0 "R22" H 5400 4300 50  0000 R CNN
F 1 "100K" V 5450 4450 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 4350 50  0001 C CNN
F 3 "~" H 5450 4350 50  0001 C CNN
F 4 "C17407" H 5450 4350 50  0001 C CNN "LCSC"
	1    5450 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5F09F9CA
P 5150 4550
F 0 "R21" V 5250 4550 50  0000 C CNN
F 1 "20K" V 5150 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 4550 50  0001 C CNN
F 3 "~" H 5150 4550 50  0001 C CNN
F 4 "C4328" V 5150 4550 50  0001 C CNN "LCSC"
	1    5150 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R26
U 1 1 5F09FFF9
P 5750 4350
F 0 "R26" H 5700 4300 50  0000 R CNN
F 1 "100K" V 5750 4450 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 4350 50  0001 C CNN
F 3 "~" H 5750 4350 50  0001 C CNN
F 4 "C17407" H 5750 4350 50  0001 C CNN "LCSC"
	1    5750 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5F0A06C3
P 6000 4550
F 0 "R27" V 6100 4550 50  0000 C CNN
F 1 "20K" V 6000 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5930 4550 50  0001 C CNN
F 3 "~" H 6000 4550 50  0001 C CNN
F 4 "C4328" V 6000 4550 50  0001 C CNN "LCSC"
	1    6000 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 4150 5450 4200
Wire Wire Line
	5450 4500 5450 4550
Wire Wire Line
	5450 4550 5300 4550
Connection ~ 5450 4550
Wire Wire Line
	5450 4550 5450 4650
Wire Wire Line
	5750 4500 5750 4550
Wire Wire Line
	5750 4550 5850 4550
Connection ~ 5750 4550
Wire Wire Line
	5750 4550 5750 4650
Wire Wire Line
	5750 4200 5750 4150
$Comp
L Device:R R17
U 1 1 5F2035D0
P 4800 5050
F 0 "R17" V 4700 5050 50  0000 C CNN
F 1 "100K" V 4800 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 5050 50  0001 C CNN
F 3 "~" H 4800 5050 50  0001 C CNN
F 4 "C17407" V 4800 5050 50  0001 C CNN "LCSC"
	1    4800 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F203B2F
P 4800 5450
F 0 "R18" V 4700 5450 50  0000 C CNN
F 1 "100K" V 4800 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 5450 50  0001 C CNN
F 3 "~" H 4800 5450 50  0001 C CNN
F 4 "C17407" V 4800 5450 50  0001 C CNN "LCSC"
	1    4800 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 5050 5050 5050
Wire Wire Line
	4650 5050 4550 5050
Wire Wire Line
	4550 5050 4550 5100
Wire Wire Line
	4550 5400 4550 5450
Wire Wire Line
	4550 5450 4650 5450
Wire Wire Line
	4950 5450 5050 5450
$Comp
L Device:R R20
U 1 1 5F2D5BCC
P 5050 5650
F 0 "R20" H 4980 5604 50  0000 R CNN
F 1 "47K" V 5050 5750 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 5650 50  0001 C CNN
F 3 "~" H 5050 5650 50  0001 C CNN
F 4 "C17713" H 5050 5650 50  0001 C CNN "LCSC"
	1    5050 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5F2D6087
P 5050 4850
F 0 "R19" H 4980 4804 50  0000 R CNN
F 1 "47K" V 5050 4950 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 4850 50  0001 C CNN
F 3 "~" H 5050 4850 50  0001 C CNN
F 4 "C17713" H 5050 4850 50  0001 C CNN "LCSC"
	1    5050 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 4550 4950 4550
Wire Wire Line
	5050 4700 4950 4700
Wire Wire Line
	4950 4700 4950 4550
Connection ~ 4950 4550
Wire Wire Line
	4950 4550 4800 4550
$Comp
L power:GND #PWR0112
U 1 1 5F342363
P 4800 4550
F 0 "#PWR0112" H 4800 4300 50  0001 C CNN
F 1 "GND" V 4805 4422 50  0000 R CNN
F 2 "" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0001 C CNN
	1    4800 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5000 5050 5050
Connection ~ 5050 5050
Wire Wire Line
	5050 5050 5150 5050
Wire Wire Line
	5050 5500 5050 5450
Connection ~ 5050 5450
Wire Wire Line
	5050 5450 5150 5450
$Comp
L power:GND #PWR0113
U 1 1 5F3B0262
P 5050 5800
F 0 "#PWR0113" H 5050 5550 50  0001 C CNN
F 1 "GND" H 5055 5627 50  0000 C CNN
F 2 "" H 5050 5800 50  0001 C CNN
F 3 "" H 5050 5800 50  0001 C CNN
	1    5050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12650 1650 12900 1650
Connection ~ 12900 1650
Wire Wire Line
	14350 2250 14650 2250
Connection ~ 5750 4150
Wire Wire Line
	5450 4150 5200 4150
Connection ~ 5450 4150
Connection ~ 4550 5050
Wire Wire Line
	4550 5450 4550 5700
Connection ~ 4550 5450
Text Label 6100 4150 2    50   ~ 0
12V_ATX
Wire Wire Line
	5750 4150 6100 4150
Text Label 5200 4150 0    50   ~ 0
12V
Text Label 4550 4700 3    50   ~ 0
5V_ATX
Text Label 4550 5700 1    50   ~ 0
5V
Wire Wire Line
	4550 4700 4550 5050
Wire Wire Line
	9050 5450 8900 5450
Text Label 9700 5150 2    50   ~ 0
I2C_SDA
Text Label 9700 5250 2    50   ~ 0
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
Text Notes 6350 3700 2    118  ~ 24
Current Sensor
$Comp
L Device:R R32
U 1 1 5F8FA1DA
P 8000 4350
F 0 "R32" H 7950 4350 50  0000 R CNN
F 1 "100K" V 8000 4450 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7930 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
F 4 "C17407" H 8000 4350 50  0001 C CNN "LCSC"
	1    8000 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R31
U 1 1 5F8FA660
P 7800 4550
F 0 "R31" V 7900 4550 50  0000 C CNN
F 1 "47K" V 7800 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7730 4550 50  0001 C CNN
F 3 "~" H 7800 4550 50  0001 C CNN
F 4 "C17713" V 7800 4550 50  0001 C CNN "LCSC"
	1    7800 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F9E4285
P 7300 4550
F 0 "#PWR011" H 7300 4300 50  0001 C CNN
F 1 "GND" V 7305 4422 50  0000 R CNN
F 2 "" H 7300 4550 50  0001 C CNN
F 3 "" H 7300 4550 50  0001 C CNN
	1    7300 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 4650 8750 4650
Wire Wire Line
	7650 4650 7650 4550
Wire Wire Line
	7700 5050 7650 5050
Wire Wire Line
	7650 5050 7650 4950
$Comp
L Device:R R28
U 1 1 5FC6A689
P 7450 5050
F 0 "R28" V 7550 5050 50  0000 C CNN
F 1 "100K" V 7450 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 5050 50  0001 C CNN
F 3 "~" H 7450 5050 50  0001 C CNN
F 4 "C17407" V 7450 5050 50  0001 C CNN "LCSC"
	1    7450 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7650 5050 7600 5050
Connection ~ 7650 5050
Wire Wire Line
	8000 4200 8000 3950
Wire Wire Line
	7300 5050 7050 5050
$Comp
L Sensor:LTC2990 U4
U 1 1 5EE8461A
P 8300 5250
F 0 "U4" H 8300 4561 50  0000 C CNN
F 1 "LTC2990" H 8300 4470 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 8300 5250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ltc2990.pdf" H 7700 5750 50  0001 C CNN
F 4 "C107804" H 8300 5250 50  0001 C CNN "LCSC"
	1    8300 5250
	1    0    0    -1  
$EndComp
Text Label 8300 3950 3    50   ~ 0
3V3_PI
Wire Wire Line
	8300 3950 8300 4650
NoConn ~ 7700 5450
Wire Wire Line
	9050 5450 9050 4650
Connection ~ 9050 4650
Wire Wire Line
	9050 4650 9350 4650
$Comp
L Device:C C6
U 1 1 5E1B2714
P 8750 4500
F 0 "C6" H 8865 4546 50  0000 L CNN
F 1 "0.1μF" H 8865 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8788 4350 50  0001 C CNN
F 3 "~" H 8750 4500 50  0001 C CNN
F 4 "C49678" H 8750 4500 50  0001 C CNN "LCSC"
	1    8750 4500
	1    0    0    -1  
$EndComp
Connection ~ 8750 4650
Wire Wire Line
	8750 4650 9050 4650
$Comp
L power:GND #PWR012
U 1 1 5E1B4AB6
P 8750 4350
F 0 "#PWR012" H 8750 4100 50  0001 C CNN
F 1 "GND" H 8755 4177 50  0000 C CNN
F 2 "" H 8750 4350 50  0001 C CNN
F 3 "" H 8750 4350 50  0001 C CNN
	1    8750 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 4500 8000 4550
Wire Wire Line
	7950 4550 8000 4550
Connection ~ 8000 4550
Wire Wire Line
	8000 4550 8000 4650
Wire Wire Line
	7650 4550 7300 4550
Connection ~ 7650 4550
$Comp
L Device:R R30
U 1 1 5FBB5C7A
P 7650 4800
F 0 "R30" H 7600 4800 50  0000 R CNN
F 1 "20K" V 7650 4900 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 4800 50  0001 C CNN
F 3 "~" H 7650 4800 50  0001 C CNN
F 4 "C4328" H 7650 4800 50  0001 C CNN "LCSC"
	1    7650 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5E23AB46
P 6500 4450
F 0 "C7" H 6615 4496 50  0000 L CNN
F 1 "0.1μF" H 6615 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6538 4300 50  0001 C CNN
F 3 "~" H 6500 4450 50  0001 C CNN
F 4 "C49678" H 6500 4450 50  0001 C CNN "LCSC"
	1    6500 4450
	1    0    0    -1  
$EndComp
Connection ~ 6500 4650
Wire Wire Line
	6500 4650 6050 4650
$Comp
L power:GND #PWR013
U 1 1 5E2763D1
P 6500 4200
F 0 "#PWR013" H 6500 3950 50  0001 C CNN
F 1 "GND" V 6505 4072 50  0000 R CNN
F 2 "" H 6500 4200 50  0001 C CNN
F 3 "" H 6500 4200 50  0001 C CNN
	1    6500 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 4650 6800 4650
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
P 6150 1350
F 0 "R33" V 6050 1350 50  0000 C CNN
F 1 "DNP" V 6150 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 1350 50  0001 C CNN
F 3 "~" H 6150 1350 50  0001 C CNN
	1    6150 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 1350 5750 1350
Wire Wire Line
	5750 1350 5750 1650
Wire Wire Line
	6300 1350 6550 1350
Wire Wire Line
	6550 1350 6550 1650
$Comp
L Connector:TestPoint TP2
U 1 1 5E238E97
P 3650 6650
F 0 "TP2" V 3604 6838 50  0000 L CNN
F 1 "3V3_PI" V 3695 6838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3850 6650 50  0001 C CNN
F 3 "~" H 3850 6650 50  0001 C CNN
	1    3650 6650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5E238B2E
P 3650 6850
F 0 "TP3" V 3604 7038 50  0000 L CNN
F 1 "3V3" V 3695 7038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3850 6850 50  0001 C CNN
F 3 "~" H 3850 6850 50  0001 C CNN
	1    3650 6850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E2387C0
P 3650 7050
F 0 "TP4" V 3604 7238 50  0000 L CNN
F 1 "5V" V 3695 7238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3850 7050 50  0001 C CNN
F 3 "~" H 3850 7050 50  0001 C CNN
	1    3650 7050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5E236258
P 3650 7250
F 0 "TP5" V 3604 7438 50  0000 L CNN
F 1 "12V" V 3695 7438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3850 7250 50  0001 C CNN
F 3 "~" H 3850 7250 50  0001 C CNN
	1    3650 7250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5E427CC4
P 3650 6450
F 0 "TP1" V 3604 6638 50  0000 L CNN
F 1 "GND" V 3695 6638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3850 6450 50  0001 C CNN
F 3 "~" H 3850 6450 50  0001 C CNN
	1    3650 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 6450 3050 6450
Wire Wire Line
	3650 6650 3050 6650
Wire Wire Line
	3650 6850 3050 6850
Wire Wire Line
	3650 7050 3050 7050
Wire Wire Line
	3650 7250 3050 7250
$Comp
L power:GND #PWR0114
U 1 1 5E560038
P 3050 6450
F 0 "#PWR0114" H 3050 6200 50  0001 C CNN
F 1 "GND" V 3055 6322 50  0000 R CNN
F 2 "" H 3050 6450 50  0001 C CNN
F 3 "" H 3050 6450 50  0001 C CNN
	1    3050 6450
	0    1    1    0   
$EndComp
Text Label 3050 6650 0    50   ~ 0
3V3_PI
Text Label 3050 6850 0    50   ~ 0
3V3
Text Label 3050 7050 0    50   ~ 0
5V
Text Label 3050 7250 0    50   ~ 0
12V
Text Notes 3000 5750 0    118  ~ 24
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
NoConn ~ 3100 2950
$Comp
L Logic_LevelTranslator:TXB0108DQSR U?
U 1 1 5E397B97
P 1400 6950
F 0 "U?" H 1400 6161 50  0000 C CNN
F 1 "TXB0108DQSR" H 1400 6070 50  0000 C CNN
F 2 "Package_SON:USON-20_2x4mm_P0.4mm" H 1400 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 1400 6850 50  0001 C CNN
	1    1400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6250 1300 5900
Wire Wire Line
	1500 6250 1500 5900
Text Label 1300 5900 3    50   ~ 0
3V3
Text Label 1500 5900 3    50   ~ 0
5V
Wire Wire Line
	1000 6650 550  6650
Text Label 550  6650 0    50   ~ 0
LED_PWM
Wire Wire Line
	1000 6750 550  6750
Wire Wire Line
	1000 6850 550  6850
Text Label 550  6750 0    50   ~ 0
Flow_W
Text Label 550  6850 0    50   ~ 0
Flow_C
Wire Wire Line
	12900 8650 12300 8650
Wire Wire Line
	12900 8750 12300 8750
Text Label 12300 8750 0    50   ~ 0
LED_PWM_5V
Wire Wire Line
	1800 6650 2350 6650
Text Label 2350 6650 2    50   ~ 0
LED_PWM_5V
Wire Wire Line
	1800 6750 2350 6750
Wire Wire Line
	1800 6850 2350 6850
Text Label 2350 6750 2    50   ~ 0
Flow_W_5V
Text Label 2350 6850 2    50   ~ 0
Flow_C_5V
Text Label 11500 3650 0    50   ~ 0
Flow_W_5V
Text Label 11500 4550 0    50   ~ 0
Flow_C_5V
Wire Wire Line
	8900 5250 9700 5250
Wire Wire Line
	8900 5150 9700 5150
Wire Wire Line
	6350 5150 6900 5150
Wire Wire Line
	6350 5250 6900 5250
Text Label 6900 5150 2    50   ~ 0
I2C_SDA
Text Label 6900 5250 2    50   ~ 0
I2C_SCL
Wire Wire Line
	6150 4550 6300 4550
Wire Wire Line
	6500 4650 6500 4600
Wire Wire Line
	6300 4250 6500 4250
Wire Wire Line
	6500 4250 6500 4300
Wire Wire Line
	6300 4250 6300 4550
Wire Wire Line
	6500 4250 6500 4200
Connection ~ 6500 4250
Wire Wire Line
	1400 7650 1550 7650
$Comp
L power:GND #PWR?
U 1 1 5EB2CE64
P 1550 7650
F 0 "#PWR?" H 1550 7400 50  0001 C CNN
F 1 "GND" V 1555 7522 50  0000 R CNN
F 2 "" H 1550 7650 50  0001 C CNN
F 3 "" H 1550 7650 50  0001 C CNN
	1    1550 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 4700 2750 4000
Wire Wire Line
	2850 4800 2850 4000
Wire Wire Line
	2850 4800 2500 4800
Wire Wire Line
	2750 4700 3000 4700
Connection ~ 2750 4700
Wire Wire Line
	2850 4800 3000 4800
Connection ~ 2850 4800
Wire Wire Line
	3300 4800 3400 4800
Wire Wire Line
	3400 4800 3400 4700
Wire Wire Line
	3400 4700 3300 4700
Wire Wire Line
	3400 4700 3800 4700
Connection ~ 3400 4700
Text Notes 2100 5750 2    118  ~ 24
3V3 5V Shifter
Wire Notes Line
	11250 2950 16050 2950
Wire Notes Line
	11250 4900 16050 4900
Wire Notes Line
	11250 500  11250 8150
Wire Notes Line
	13950 8150 13950 9850
Wire Notes Line
	16050 500  16050 9850
Wire Notes Line
	11750 9850 16050 9850
Wire Notes Line
	7450 8150 7450 11200
Wire Notes Line
	11750 8150 11750 11200
Wire Notes Line
	2750 8150 2750 11200
Wire Notes Line
	2750 11200 11750 11200
Wire Notes Line
	13650 2950 13650 4900
Wire Notes Line
	4400 5400 500  5400
Wire Notes Line
	4400 500  4400 8150
Wire Notes Line
	500  8150 16050 8150
Wire Notes Line
	500  500  500  8150
Wire Notes Line
	500  500  16050 500 
Text Notes 9000 3700 2    118  ~ 24
Voltage Sensor
Wire Notes Line
	4400 6100 9700 6100
Wire Notes Line
	2650 5400 2650 8150
Wire Notes Line
	500  3250 9700 3250
Wire Notes Line
	9700 6100 9700 3250
Wire Notes Line
	6950 6100 6950 3250
Wire Notes Line
	7650 500  7650 3250
$EndSCHEMATC
