EESchema Schematic File Version 4
LIBS:Gauge-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L New_Library:LM2917 U3
U 1 1 5CB8E597
P 4550 3000
F 0 "U3" H 5078 3071 50  0000 L CNN
F 1 "LM2917" H 5078 2980 50  0000 L CNN
F 2 "Footprints:LM2917" H 4550 3000 50  0001 C CNN
F 3 "" H 4550 3000 50  0001 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
$Comp
L New_Library:L293D U4
U 1 1 5CB8E603
P 8450 5050
F 0 "U4" H 9028 5096 50  0000 L CNN
F 1 "L293D" H 9028 5005 50  0000 L CNN
F 2 "Footprints:L293D" H 8350 5050 50  0001 C CNN
F 3 "" H 8350 5050 50  0001 C CNN
	1    8450 5050
	1    0    0    -1  
$EndComp
$Comp
L LED:CQY99 D4
U 1 1 5CB8F18D
P 10400 1900
F 0 "D4" H 10350 2190 50  0000 C CNN
F 1 "LED_HIGH_BEAM" H 10350 2099 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10400 2075 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 10350 1900 50  0001 C CNN
	1    10400 1900
	-1   0    0    -1  
$EndComp
$Comp
L LED:CQY99 D5
U 1 1 5CB8F1D3
P 10400 2300
F 0 "D5" H 10350 2590 50  0000 C CNN
F 1 "LED_INDICATORS" H 10350 2499 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10400 2475 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 10350 2300 50  0001 C CNN
	1    10400 2300
	-1   0    0    -1  
$EndComp
$Comp
L LED:CQY99 D6
U 1 1 5CB8F223
P 10500 800
F 0 "D6" H 10450 1090 50  0000 C CNN
F 1 "LED_OIL_PRESSURE" H 10450 999 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 975 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 10450 800 50  0001 C CNN
	1    10500 800 
	1    0    0    1   
$EndComp
$Comp
L LED:CQY99 D7
U 1 1 5CB8F279
P 10500 1200
F 0 "D7" H 10450 1490 50  0000 C CNN
F 1 "LED_NEUTRAL" H 10450 1399 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 1375 50  0001 C CNN
F 3 "https://www.prtice.info/IMG/pdf/CQY99.pdf" H 10450 1200 50  0001 C CNN
	1    10500 1200
	1    0    0    1   
$EndComp
Wire Wire Line
	2100 3900 1600 3900
Wire Wire Line
	1600 3900 1600 3700
Wire Wire Line
	2450 3350 2450 4000
Wire Wire Line
	2450 4000 1400 4000
Wire Wire Line
	1400 4000 1400 3800
$Comp
L Device:CP1_Small C1
U 1 1 5CB8FD01
P 3800 3800
F 0 "C1" H 3891 3846 50  0000 L CNN
F 1 "20nF" H 3891 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 3800 3800 50  0001 C CNN
F 3 "~" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 5CB8FD69
P 4100 3800
F 0 "C2" H 4191 3846 50  0000 L CNN
F 1 "20nF" H 4191 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 4100 3800 50  0001 C CNN
F 3 "~" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Variable_US R3
U 1 1 5CB8EEEA
P 4400 3850
F 0 "R3" H 4528 3896 50  0000 L CNN
F 1 "100k" H 4528 3805 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-H_Horizontal" V 4330 3850 50  0001 C CNN
F 3 "~" H 4400 3850 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5CB8F51C
P 4750 3800
F 0 "C3" H 4841 3846 50  0000 L CNN
F 1 "1uF" H 4841 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 4750 3800 50  0001 C CNN
F 3 "~" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5CB8F607
P 5200 3850
F 0 "R7" H 5268 3896 50  0000 L CNN
F 1 "10k" H 5268 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5240 3840 50  0001 C CNN
F 3 "~" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3600 4550 3600
Wire Wire Line
	4400 3300 4400 3600
Wire Wire Line
	4550 3300 4550 3600
Wire Wire Line
	4700 3500 4700 3300
Wire Wire Line
	4250 3600 4250 3300
Wire Wire Line
	4100 3500 4100 3300
$Comp
L Device:R_US R2
U 1 1 5CB90300
P 3500 3850
F 0 "R2" H 3568 3896 50  0000 L CNN
F 1 "20k" H 3568 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3540 3840 50  0001 C CNN
F 3 "~" H 3500 3850 50  0001 C CNN
	1    3500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3600 4750 3600
Wire Wire Line
	4750 3600 4750 3700
Connection ~ 4550 3600
Wire Wire Line
	5200 3500 5200 3700
Wire Wire Line
	4100 3700 4100 3600
Wire Wire Line
	4100 3600 4250 3600
Wire Wire Line
	4400 3700 4400 3600
Connection ~ 4400 3600
Wire Wire Line
	4100 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3700
Wire Wire Line
	3800 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3700
Connection ~ 3800 3500
$Comp
L Device:R_US R1
U 1 1 5CB91F34
P 3250 3500
F 0 "R1" V 3455 3500 50  0000 C CNN
F 1 "10k" V 3364 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3290 3490 50  0001 C CNN
F 3 "~" H 3250 3500 50  0001 C CNN
	1    3250 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3500 3500 3500
Connection ~ 3500 3500
$Comp
L power:GND #PWR0101
U 1 1 5CB92AAE
P 3500 4000
F 0 "#PWR0101" H 3500 3750 50  0001 C CNN
F 1 "GND" H 3505 3827 50  0000 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CB92B3A
P 3800 4000
F 0 "#PWR0102" H 3800 3750 50  0001 C CNN
F 1 "GND" H 3805 3827 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CB92B7C
P 4100 4000
F 0 "#PWR0103" H 4100 3750 50  0001 C CNN
F 1 "GND" H 4105 3827 50  0000 C CNN
F 2 "" H 4100 4000 50  0001 C CNN
F 3 "" H 4100 4000 50  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5CB92BBE
P 4400 4000
F 0 "#PWR0104" H 4400 3750 50  0001 C CNN
F 1 "GND" H 4405 3827 50  0000 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CB92C00
P 4750 4000
F 0 "#PWR0105" H 4750 3750 50  0001 C CNN
F 1 "GND" H 4755 3827 50  0000 C CNN
F 2 "" H 4750 4000 50  0001 C CNN
F 3 "" H 4750 4000 50  0001 C CNN
	1    4750 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CB92C42
P 5200 4000
F 0 "#PWR0106" H 5200 3750 50  0001 C CNN
F 1 "GND" H 5205 3827 50  0000 C CNN
F 2 "" H 5200 4000 50  0001 C CNN
F 3 "" H 5200 4000 50  0001 C CNN
	1    5200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3900 4750 4000
Wire Wire Line
	4100 3900 4100 4000
Wire Wire Line
	3800 3900 3800 4000
$Comp
L Device:R_US R5
U 1 1 5CB93CC3
P 4850 2300
F 0 "R5" H 4918 2346 50  0000 L CNN
F 1 "470" H 4918 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4890 2290 50  0001 C CNN
F 3 "~" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2650 4700 2550
Wire Wire Line
	4700 2550 5200 2550
Connection ~ 5200 3500
Wire Wire Line
	4700 3500 5200 3500
Wire Wire Line
	5200 3500 6150 3500
Wire Wire Line
	5200 2550 5200 3500
Wire Wire Line
	4850 2650 4850 2450
Wire Wire Line
	4850 2150 4850 2050
Wire Wire Line
	4850 2050 5000 2050
Wire Wire Line
	5000 2050 5000 2650
$Comp
L power:GND #PWR0107
U 1 1 5CB96978
P 3800 2500
F 0 "#PWR0107" H 3800 2250 50  0001 C CNN
F 1 "GND" H 3805 2327 50  0000 C CNN
F 2 "" H 3800 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2650
$Comp
L Device:R_US R4
U 1 1 5CB9703F
P 4550 2300
F 0 "R4" H 4618 2346 50  0000 L CNN
F 1 "10k" H 4618 2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4590 2290 50  0001 C CNN
F 3 "~" H 4550 2300 50  0001 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2450 4550 2500
$Comp
L Device:D_Small D1
U 1 1 5CB97914
P 3900 2500
F 0 "D1" H 3900 2705 50  0000 C CNN
F 1 "D" H 3900 2614 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3900 2500 50  0001 C CNN
F 3 "~" V 3900 2500 50  0001 C CNN
	1    3900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2500 4550 2500
Connection ~ 4550 2500
Wire Wire Line
	4550 2500 4550 2650
$Comp
L power:GND #PWR0108
U 1 1 5CB980E4
P 4250 2250
F 0 "#PWR0108" H 4250 2000 50  0001 C CNN
F 1 "GND" H 4255 2077 50  0000 C CNN
F 2 "" H 4250 2250 50  0001 C CNN
F 3 "" H 4250 2250 50  0001 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2050 4550 2050
Wire Wire Line
	4550 2050 4550 2150
Connection ~ 4850 2050
Connection ~ 4550 2050
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5CB9BC5E
P 1200 3700
F 0 "J1" H 1306 3878 50  0000 C CNN
F 1 "USB" H 1306 3787 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1200 3700 50  0001 C CNN
F 3 "~" H 1200 3700 50  0001 C CNN
	1    1200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3500 3100 3500
Text Notes 1050 1550 0    50   ~ 0
TACH IN
Wire Wire Line
	6150 4550 2650 4550
Wire Wire Line
	2650 4550 2650 5600
Wire Wire Line
	2650 5600 3000 5600
Wire Wire Line
	6150 3500 6150 4550
$Comp
L power:GND #PWR0109
U 1 1 5CB90FF4
P 2650 6600
F 0 "#PWR0109" H 2650 6350 50  0001 C CNN
F 1 "GND" H 2655 6427 50  0000 C CNN
F 2 "" H 2650 6600 50  0001 C CNN
F 3 "" H 2650 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6600 2650 6600
Text Notes 1200 1650 0    50   ~ 0
12V
Connection ~ 1600 3700
Text Notes 1200 1750 0    50   ~ 0
GND
Text Notes 1050 3850 0    50   ~ 0
5V
Text Notes 1000 3750 0    50   ~ 0
GND
Wire Wire Line
	1600 3700 1400 3700
Connection ~ 1750 2050
Wire Wire Line
	1750 2050 1750 3350
$Comp
L Switch:SW_Push SW1
U 1 1 5CB9D4F5
P 4650 7150
F 0 "SW1" H 4650 7435 50  0000 C CNN
F 1 "S_MODE" H 4650 7344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4650 7350 50  0001 C CNN
F 3 "" H 4650 7350 50  0001 C CNN
	1    4650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5CBA0520
P 4450 7450
F 0 "#PWR0110" H 4450 7200 50  0001 C CNN
F 1 "GND" H 4455 7277 50  0000 C CNN
F 2 "" H 4450 7450 50  0001 C CNN
F 3 "" H 4450 7450 50  0001 C CNN
	1    4450 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5CBA0588
P 5000 7150
F 0 "#PWR0111" H 5000 7000 50  0001 C CNN
F 1 "+3.3V" H 5015 7323 50  0000 C CNN
F 2 "" H 5000 7150 50  0001 C CNN
F 3 "" H 5000 7150 50  0001 C CNN
	1    5000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5CBA1011
P 4450 7300
F 0 "R6" H 4518 7346 50  0000 L CNN
F 1 "4.7k" H 4518 7255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4490 7290 50  0001 C CNN
F 3 "~" H 4450 7300 50  0001 C CNN
	1    4450 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7150 5000 7150
$Comp
L power:GND #PWR0112
U 1 1 5CBAB4D9
P 1400 2200
F 0 "#PWR0112" H 1400 1950 50  0001 C CNN
F 1 "GND" H 1405 2027 50  0000 C CNN
F 2 "" H 1400 2200 50  0001 C CNN
F 3 "" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2200 1400 2050
Wire Wire Line
	1400 2050 1600 2050
Connection ~ 1600 2050
Wire Wire Line
	1600 2050 1600 3700
$Comp
L power:GND #PWR0113
U 1 1 5CBAF45E
P 10800 2300
F 0 "#PWR0113" H 10800 2050 50  0001 C CNN
F 1 "GND" H 10805 2127 50  0000 C CNN
F 2 "" H 10800 2300 50  0001 C CNN
F 3 "" H 10800 2300 50  0001 C CNN
	1    10800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1900 10800 1900
Wire Wire Line
	10800 1900 10800 2300
Wire Wire Line
	10600 1200 10800 1200
Wire Wire Line
	10600 800  10800 800 
Wire Wire Line
	10800 800  10800 1200
Wire Wire Line
	10600 2300 10800 2300
Connection ~ 10800 2300
$Comp
L power:+12V #PWR0114
U 1 1 5CBD1F19
P 2550 2050
F 0 "#PWR0114" H 2550 1900 50  0001 C CNN
F 1 "+12V" H 2565 2223 50  0000 C CNN
F 2 "" H 2550 2050 50  0001 C CNN
F 3 "" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 5CBD1F78
P 10800 800
F 0 "#PWR0115" H 10800 650 50  0001 C CNN
F 1 "+12V" H 10815 973 50  0000 C CNN
F 2 "" H 10800 800 50  0001 C CNN
F 3 "" H 10800 800 50  0001 C CNN
	1    10800 800 
	1    0    0    -1  
$EndComp
Connection ~ 10800 800 
Wire Wire Line
	2850 1500 1600 1500
Wire Wire Line
	2850 1500 2850 3500
Wire Wire Line
	1600 1600 1750 1600
Wire Wire Line
	1750 1600 1750 2050
Wire Wire Line
	1600 1700 1600 2050
Text Notes 7250 850  0    50   ~ 0
OIL PRESSURE
Text Notes 7450 950  0    50   ~ 0
NEUTRAL
Text Notes 7350 1050 0    50   ~ 0
HIGH BEAM
Text Notes 7350 1150 0    50   ~ 0
INDICATORS
Text Notes 1200 1450 0    50   ~ 0
AFR
Text Notes 700  1350 0    50   ~ 0
OIL TEMPERATURE
$Comp
L Device:R_US R8
U 1 1 5CC082B2
P 6350 1150
F 0 "R8" H 6418 1196 50  0000 L CNN
F 1 "R_OIL_TEMP" H 6418 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6390 1140 50  0001 C CNN
F 3 "~" H 6350 1150 50  0001 C CNN
	1    6350 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5CC588F0
P 9950 6000
F 0 "J3" H 9923 5973 50  0000 R CNN
F 1 "STEPPER" H 9923 5882 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9950 6000 50  0001 C CNN
F 3 "~" H 9950 6000 50  0001 C CNN
	1    9950 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8200 5650 8200 6200
Wire Wire Line
	8650 5650 8650 6100
Wire Wire Line
	8650 4450 8650 4350
Wire Wire Line
	8200 4450 8200 4250
Wire Wire Line
	8950 4450 9100 4450
Wire Wire Line
	7900 5650 7700 5650
Wire Wire Line
	8350 5650 8350 5750
$Comp
L power:GND #PWR0117
U 1 1 5CC7886D
P 8350 5750
F 0 "#PWR0117" H 8350 5500 50  0001 C CNN
F 1 "GND" H 8355 5577 50  0000 C CNN
F 2 "" H 8350 5750 50  0001 C CNN
F 3 "" H 8350 5750 50  0001 C CNN
	1    8350 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4350 9400 4350
Wire Wire Line
	9400 4350 9400 6000
Wire Wire Line
	9400 6000 9750 6000
Wire Wire Line
	9500 4250 9500 5900
Wire Wire Line
	9500 5900 9750 5900
Wire Wire Line
	8200 4250 9500 4250
Wire Wire Line
	8650 6100 9750 6100
Wire Wire Line
	8200 6200 9750 6200
Wire Wire Line
	8800 5650 8800 5900
Wire Wire Line
	8050 5650 8050 5800
Wire Wire Line
	8050 4450 8050 3900
Wire Wire Line
	8050 3900 7100 3900
Wire Wire Line
	7100 3900 7100 6000
Wire Wire Line
	8800 4450 8800 3800
Wire Wire Line
	8800 3800 7000 3800
$Comp
L power:+3.3V #PWR0118
U 1 1 5CCA3A85
P 2800 5200
F 0 "#PWR0118" H 2800 5050 50  0001 C CNN
F 1 "+3.3V" H 2815 5373 50  0000 C CNN
F 2 "" H 2800 5200 50  0001 C CNN
F 3 "" H 2800 5200 50  0001 C CNN
	1    2800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5200 3000 5200
$Comp
L power:+3.3V #PWR0119
U 1 1 5CCA91FE
P 7700 5650
F 0 "#PWR0119" H 7700 5500 50  0001 C CNN
F 1 "+3.3V" H 7715 5823 50  0000 C CNN
F 2 "" H 7700 5650 50  0001 C CNN
F 3 "" H 7700 5650 50  0001 C CNN
	1    7700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5CCA9263
P 9100 4450
F 0 "#PWR0120" H 9100 4300 50  0001 C CNN
F 1 "+3.3V" H 9115 4623 50  0000 C CNN
F 2 "" H 9100 4450 50  0001 C CNN
F 3 "" H 9100 4450 50  0001 C CNN
	1    9100 4450
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5CCA98B8
P 9100 5650
F 0 "#PWR0121" H 9100 5500 50  0001 C CNN
F 1 "+5V" H 9115 5823 50  0000 C CNN
F 2 "" H 9100 5650 50  0001 C CNN
F 3 "" H 9100 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5CCA9D55
P 7700 4450
F 0 "#PWR0122" H 7700 4300 50  0001 C CNN
F 1 "+5V" H 7715 4623 50  0000 C CNN
F 2 "" H 7700 4450 50  0001 C CNN
F 3 "" H 7700 4450 50  0001 C CNN
	1    7700 4450
	1    0    0    1   
$EndComp
Wire Wire Line
	9100 5650 8950 5650
Wire Wire Line
	7700 4450 7900 4450
$Comp
L power:+5V #PWR0123
U 1 1 5CCB3C8E
P 4100 5700
F 0 "#PWR0123" H 4100 5550 50  0001 C CNN
F 1 "+5V" H 4115 5873 50  0000 C CNN
F 2 "" H 4100 5700 50  0001 C CNN
F 3 "" H 4100 5700 50  0001 C CNN
	1    4100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5650 8350 5650
Connection ~ 8350 5650
$Comp
L power:GND #PWR0124
U 1 1 5CCB97B6
P 7500 4350
F 0 "#PWR0124" H 7500 4100 50  0001 C CNN
F 1 "GND" H 7505 4177 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4450 8350 4350
Wire Wire Line
	8350 4350 8500 4350
Wire Wire Line
	8500 4350 8500 4450
Wire Wire Line
	8350 4350 7500 4350
Connection ~ 8350 4350
$Comp
L New_Library:Feather U2
U 1 1 5CBFD77E
P 3450 5850
F 0 "U2" H 3450 6865 50  0000 C CNN
F 1 "Feather" H 3450 6774 50  0000 C CNN
F 2 "Footprints:Feather" H 3450 5850 50  0001 C CNN
F 3 "" H 3450 5850 50  0001 C CNN
	1    3450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5700 4100 5700
$Comp
L New_Library:TSR12450 U1
U 1 1 5CC457F0
P 2100 3450
F 0 "U1" H 2100 3775 50  0000 C CNN
F 1 "TSR12450" H 2100 3684 50  0000 C CNN
F 2 "Footprints:TSR1" H 2100 3450 50  0001 C CNN
F 3 "" H 2100 3450 50  0001 C CNN
	1    2100 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5CC9D306
P 7850 900
F 0 "J5" H 7956 1178 50  0000 C CNN
F 1 "LEDS" H 7956 1087 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7850 900 50  0001 C CNN
F 3 "~" H 7850 900 50  0001 C CNN
	1    7850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 800  9700 800 
$Comp
L Device:R R9
U 1 1 5CCC7660
P 9850 800
F 0 "R9" V 10057 800 50  0000 C CNN
F 1 "220" V 9966 800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9780 800 50  0001 C CNN
F 3 "~" H 9850 800 50  0001 C CNN
	1    9850 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 800  10300 800 
$Comp
L Device:R R10
U 1 1 5CCC7E96
P 9850 1200
F 0 "R10" V 10057 1200 50  0000 C CNN
F 1 "220" V 9966 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9780 1200 50  0001 C CNN
F 3 "~" H 9850 1200 50  0001 C CNN
	1    9850 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5CCC7F21
P 9850 1900
F 0 "R11" V 10057 1900 50  0000 C CNN
F 1 "220" V 9966 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9780 1900 50  0001 C CNN
F 3 "~" H 9850 1900 50  0001 C CNN
	1    9850 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5CCC7FB2
P 9850 2300
F 0 "R12" V 10057 2300 50  0000 C CNN
F 1 "220" V 9966 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9780 2300 50  0001 C CNN
F 3 "~" H 9850 2300 50  0001 C CNN
	1    9850 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 1200 10300 1200
Wire Wire Line
	10000 1900 10300 1900
Wire Wire Line
	10000 2300 10300 2300
Wire Wire Line
	9700 1200 9700 900 
Wire Wire Line
	9700 900  8050 900 
Wire Wire Line
	8050 1000 9600 1000
Wire Wire Line
	9600 1000 9600 1900
Wire Wire Line
	9600 1900 9700 1900
Wire Wire Line
	9500 2300 9500 1100
Wire Wire Line
	9500 1100 8050 1100
Wire Wire Line
	9500 2300 9700 2300
Wire Wire Line
	7000 6100 3900 6100
Wire Wire Line
	7000 3800 7000 6100
Wire Wire Line
	3900 6000 7100 6000
Wire Wire Line
	3900 5900 8800 5900
Wire Wire Line
	3900 5800 8050 5800
Wire Wire Line
	4450 6200 3900 6200
Wire Wire Line
	4450 6200 4450 7150
$Comp
L power:GND #PWR0116
U 1 1 5CD0D7F6
P 2800 5400
F 0 "#PWR0116" H 2800 5150 50  0001 C CNN
F 1 "GND" H 2805 5227 50  0000 C CNN
F 2 "" H 2800 5400 50  0001 C CNN
F 3 "" H 2800 5400 50  0001 C CNN
	1    2800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5400 3000 5400
$Comp
L power:+3.3V #PWR0125
U 1 1 5CD1ACB3
P 6350 1000
F 0 "#PWR0125" H 6350 850 50  0001 C CNN
F 1 "+3.3V" H 6365 1173 50  0000 C CNN
F 2 "" H 6350 1000 50  0001 C CNN
F 3 "" H 6350 1000 50  0001 C CNN
	1    6350 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5CD253E5
P 2300 5550
F 0 "R13" H 2370 5596 50  0000 L CNN
F 1 "4.7k" H 2370 5505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2230 5550 50  0001 C CNN
F 3 "~" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5CD2548F
P 2300 5850
F 0 "R14" H 2370 5896 50  0000 L CNN
F 1 "10k" H 2370 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2230 5850 50  0001 C CNN
F 3 "~" H 2300 5850 50  0001 C CNN
	1    2300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5700 2300 5700
Connection ~ 2300 5700
$Comp
L power:GND #PWR0126
U 1 1 5CD2DA45
P 2300 6000
F 0 "#PWR0126" H 2300 5750 50  0001 C CNN
F 1 "GND" H 2305 5827 50  0000 C CNN
F 2 "" H 2300 6000 50  0001 C CNN
F 3 "" H 2300 6000 50  0001 C CNN
	1    2300 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5400 2300 4250
Wire Wire Line
	2300 4250 2550 4250
Wire Wire Line
	2550 4250 2550 2050
Connection ~ 2550 2050
Wire Wire Line
	2550 2050 4550 2050
Wire Wire Line
	1750 2050 2550 2050
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 5CD563C4
P 1400 1500
F 0 "J2" H 1506 1878 50  0000 C CNN
F 1 "Conn_01x05_Male" H 1506 1787 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1400 1500 50  0001 C CNN
F 3 "~" H 1400 1500 50  0001 C CNN
	1    1400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6300 6350 6300
Wire Wire Line
	6250 6400 6250 1400
Wire Wire Line
	6250 1400 1600 1400
Wire Wire Line
	3900 6400 6250 6400
Wire Wire Line
	6350 1300 1600 1300
Wire Wire Line
	6350 1300 6350 6300
Connection ~ 6350 1300
Connection ~ 4450 7150
$EndSCHEMATC
