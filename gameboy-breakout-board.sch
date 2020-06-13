EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "GameBoy breakout board v1"
Date "2020-06-13"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6500 1750 2    50   ~ 0
PHI
Text Label 6500 1850 2    50   ~ 0
~WR
Text Label 6500 1950 2    50   ~ 0
~RD
Text Label 6500 2050 2    50   ~ 0
~CS
Text Label 6500 2150 2    50   ~ 0
A0
Text Label 6500 2250 2    50   ~ 0
A1
Text Label 6500 2350 2    50   ~ 0
A2
Text Label 6500 2450 2    50   ~ 0
A3
Text Label 6500 2550 2    50   ~ 0
A4
Text Label 6500 2650 2    50   ~ 0
A5
Text Label 6500 2750 2    50   ~ 0
A6
Text Label 6500 2850 2    50   ~ 0
A7
Text Label 6500 2950 2    50   ~ 0
A8
Text Label 6500 3050 2    50   ~ 0
A9
Text Label 6500 3150 2    50   ~ 0
A10
Text Label 6500 3250 2    50   ~ 0
A11
Text Label 6500 3350 2    50   ~ 0
A12
Text Label 6500 3450 2    50   ~ 0
A13
Text Label 6500 3550 2    50   ~ 0
A14
Text Label 6500 3650 2    50   ~ 0
A15
Text Label 6500 3750 2    50   ~ 0
D0
Text Label 6500 3850 2    50   ~ 0
D1
Text Label 6500 3950 2    50   ~ 0
D2
Text Label 6500 4050 2    50   ~ 0
D3
Text Label 6500 4150 2    50   ~ 0
D4
Text Label 6500 4250 2    50   ~ 0
D5
Text Label 6500 4350 2    50   ~ 0
D6
Text Label 6500 4450 2    50   ~ 0
D7
Text Label 6500 4550 2    50   ~ 0
~RES
Text Label 6500 4650 2    50   ~ 0
VIN
Text Label 4100 1800 0    50   ~ 0
GND
Text Label 4100 1900 0    50   ~ 0
VIN
Text Label 4100 2000 0    50   ~ 0
~RES
Text Label 4100 2100 0    50   ~ 0
D7
Text Label 4100 2200 0    50   ~ 0
D6
Text Label 4100 2300 0    50   ~ 0
D5
Text Label 4100 2400 0    50   ~ 0
D4
Text Label 4100 2500 0    50   ~ 0
D3
Text Label 4100 2600 0    50   ~ 0
D2
Text Label 4100 2700 0    50   ~ 0
D1
Text Label 4100 2800 0    50   ~ 0
D0
Text Label 4100 2900 0    50   ~ 0
A15
Text Label 4100 3000 0    50   ~ 0
A14
$Comp
L Connector_Generic:Conn_02x16_Counter_Clockwise J2
U 1 1 5EDECC0B
P 3800 2500
F 0 "J2" H 3850 3417 50  0000 C CNN
F 1 "Header" H 3850 3326 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x16_P2.54mm_Vertical" H 3800 2500 50  0001 C CNN
F 3 "~" H 3800 2500 50  0001 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
Text Label 4100 3100 0    50   ~ 0
A13
Text Label 4100 3200 0    50   ~ 0
A12
Text Label 4100 3300 0    50   ~ 0
A11
Text Label 3600 3300 2    50   ~ 0
A10
Text Label 3600 3200 2    50   ~ 0
A9
Text Label 3600 3100 2    50   ~ 0
A8
Text Label 3600 3000 2    50   ~ 0
A7
Text Label 3600 2900 2    50   ~ 0
A6
Text Label 3600 2800 2    50   ~ 0
A5
Text Label 3600 2700 2    50   ~ 0
A4
Text Label 3600 2600 2    50   ~ 0
A3
Text Label 3600 2500 2    50   ~ 0
A2
Text Label 3600 2400 2    50   ~ 0
A1
Text Label 3600 2300 2    50   ~ 0
A0
Text Label 3600 2200 2    50   ~ 0
~CS
Text Label 3600 2100 2    50   ~ 0
~RD
Text Label 3600 2000 2    50   ~ 0
~WR
Text Label 3600 1900 2    50   ~ 0
PHI
Text Label 6500 4750 2    50   ~ 0
GND
$Comp
L willdurand_connector:GB_GBC_1x32 J1
U 1 1 5EDEAF95
P 6900 3300
F 0 "J1" H 7130 3400 50  0000 L CNN
F 1 "GB_GBC_1x32" H 7130 3309 50  0000 L CNN
F 2 "willdurand_connector:GB_GBC_1x32" H 7550 2700 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/32832493101.html" H 7550 2700 50  0001 C CNN
F 4 "GNI172" H 6850 1550 50  0001 C CNN "Model number"
	1    6900 3300
	1    0    0    -1  
$EndComp
Text Label 6500 1650 2    50   ~ 0
VCC
Text Label 3600 1800 2    50   ~ 0
VCC
Wire Wire Line
	3300 1800 3600 1800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EE265F5
P 3300 1800
F 0 "#FLG0101" H 3300 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 3300 1927 50  0000 L CNN
F 2 "" H 3300 1800 50  0001 C CNN
F 3 "~" H 3300 1800 50  0001 C CNN
	1    3300 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EE321B3
P 4300 1800
F 0 "#FLG0102" H 4300 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 4300 1928 50  0000 L CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "~" H 4300 1800 50  0001 C CNN
	1    4300 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 1800 4100 1800
$EndSCHEMATC
