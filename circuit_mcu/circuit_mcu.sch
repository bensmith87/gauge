EESchema Schematic File Version 4
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
L Regulator_Switching:TSR_1-2450 U4
U 1 1 5CD27AA7
P 6800 1400
F 0 "U4" H 6800 1767 50  0000 C CNN
F 1 "TSR_1-2450" H 6800 1676 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 6800 1250 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 6800 1400 50  0001 C CNN
	1    6800 1400
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N25 U2
U 1 1 5CD27C48
P 3100 6850
F 0 "U2" H 3100 7175 50  0000 C CNN
F 1 "4N25" H 3100 7084 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 2900 6650 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 3100 6850 50  0001 L CNN
	1    3100 6850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CD2BCC1
P 5850 6350
F 0 "SW2" H 5850 6635 50  0000 C CNN
F 1 "SW_Push" H 5850 6544 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5850 6550 50  0001 C CNN
F 3 "" H 5850 6550 50  0001 C CNN
	1    5850 6350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5CD2BDBD
P 2500 6950
F 0 "D1" H 2491 7166 50  0000 C CNN
F 1 "LED" H 2491 7075 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 2500 6950 50  0001 C CNN
F 3 "~" H 2500 6950 50  0001 C CNN
	1    2500 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5CD2C1BC
P 6800 1600
F 0 "#PWR0112" H 6800 1350 50  0001 C CNN
F 1 "GND" H 6805 1427 50  0000 C CNN
F 2 "" H 6800 1600 50  0001 C CNN
F 3 "" H 6800 1600 50  0001 C CNN
	1    6800 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5CD2DDA8
P 7250 1250
F 0 "#PWR0114" H 7250 1100 50  0001 C CNN
F 1 "+5V" H 7265 1423 50  0000 C CNN
F 2 "" H 7250 1250 50  0001 C CNN
F 3 "" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5CD34532
P 4400 1300
F 0 "Y1" H 4400 1568 50  0000 C CNN
F 1 "Crystal" H 4400 1477 50  0000 C CNN
F 2 "Crystal:Resonator-2Pin_W7.0mm_H2.5mm" H 4400 1300 50  0001 C CNN
F 3 "~" H 4400 1300 50  0001 C CNN
	1    4400 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 1300 7250 1300
Wire Wire Line
	7250 1300 7250 1250
Wire Wire Line
	1600 1400 1600 1300
Wire Wire Line
	1600 1300 1500 1300
Connection ~ 1500 1300
Wire Wire Line
	1500 1300 1500 1400
$Comp
L power:GND #PWR0115
U 1 1 5CD6256B
P 4850 5550
F 0 "#PWR0115" H 4850 5300 50  0001 C CNN
F 1 "GND" H 4855 5377 50  0000 C CNN
F 2 "" H 4850 5550 50  0001 C CNN
F 3 "" H 4850 5550 50  0001 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5CD63DE4
P 1700 6250
F 0 "#PWR0116" H 1700 6000 50  0001 C CNN
F 1 "GND" H 1705 6077 50  0000 C CNN
F 2 "" H 1700 6250 50  0001 C CNN
F 3 "" H 1700 6250 50  0001 C CNN
	1    1700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6950 2800 6950
$Comp
L Device:R R1
U 1 1 5CD86B64
P 2650 6400
F 0 "R1" H 2580 6354 50  0000 R CNN
F 1 "R" H 2580 6445 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2580 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 6550 2650 6750
Wire Wire Line
	2650 6750 2800 6750
$Comp
L power:+12V #PWR0118
U 1 1 5CD935F4
P 6300 1250
F 0 "#PWR0118" H 6300 1100 50  0001 C CNN
F 1 "+12V" H 6315 1423 50  0000 C CNN
F 2 "" H 6300 1250 50  0001 C CNN
F 3 "" H 6300 1250 50  0001 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1300 6300 1300
Wire Wire Line
	6300 1300 6300 1250
$Comp
L power:GND #PWR0119
U 1 1 5CD97AB9
P 3450 7000
F 0 "#PWR0119" H 3450 6750 50  0001 C CNN
F 1 "GND" H 3455 6827 50  0000 C CNN
F 2 "" H 3450 7000 50  0001 C CNN
F 3 "" H 3450 7000 50  0001 C CNN
	1    3450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6950 3450 6950
Wire Wire Line
	3450 6950 3450 7000
$Comp
L power:GND #PWR0120
U 1 1 5CDA2E4A
P 5850 6900
F 0 "#PWR0120" H 5850 6650 50  0001 C CNN
F 1 "GND" H 5855 6727 50  0000 C CNN
F 2 "" H 5850 6900 50  0001 C CNN
F 3 "" H 5850 6900 50  0001 C CNN
	1    5850 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5CDA529F
P 5850 6750
F 0 "R6" H 5920 6796 50  0000 L CNN
F 1 "R" H 5920 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5780 6750 50  0001 C CNN
F 3 "~" H 5850 6750 50  0001 C CNN
	1    5850 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0122
U 1 1 5CDA7A57
P 1700 5950
F 0 "#PWR0122" H 1700 5800 50  0001 C CNN
F 1 "+12V" V 1715 6078 50  0000 L CNN
F 2 "" H 1700 5950 50  0001 C CNN
F 3 "" H 1700 5950 50  0001 C CNN
	1    1700 5950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5CD2D4E8
P 1500 800
F 0 "#PWR0123" H 1500 650 50  0001 C CNN
F 1 "+5V" H 1515 973 50  0000 C CNN
F 2 "" H 1500 800 50  0001 C CNN
F 3 "" H 1500 800 50  0001 C CNN
	1    1500 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5750 2750 6050
Wire Wire Line
	2750 6050 3050 6050
Wire Wire Line
	4050 1000 4400 1000
Wire Wire Line
	4400 1000 4400 1150
Wire Wire Line
	4400 1450 4400 1600
Wire Wire Line
	4400 1600 4050 1600
Wire Wire Line
	3550 1600 3550 1000
$Comp
L power:GND #PWR0126
U 1 1 5CE2A580
P 3550 1600
F 0 "#PWR0126" H 3550 1350 50  0001 C CNN
F 1 "GND" H 3555 1427 50  0000 C CNN
F 2 "" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1600 4850 1600
Connection ~ 4400 1600
Wire Wire Line
	4400 1000 4850 1000
Connection ~ 4400 1000
Text Label 2100 2300 0    50   ~ 0
XTAL1
Text Label 2100 2400 0    50   ~ 0
XTAL2
Text Label 4850 1000 0    50   ~ 0
XTAL1
Text Label 4850 1600 0    50   ~ 0
XTAL2
Text Label 2100 2700 0    50   ~ 0
MODE_BUTTON
Text Label 5100 5250 0    50   ~ 0
BATTERY_VOLTAGE
Text Label 2100 3000 0    50   ~ 0
BATTERY_VOLTAGE
Text Label 1700 5750 0    50   ~ 0
AFR
Text Label 2100 3100 0    50   ~ 0
AFR
Text Label 2100 2800 0    50   ~ 0
TACHO
Text Label 3050 6050 0    50   ~ 0
OIL_TEMP
Text Label 2100 2900 0    50   ~ 0
OIL_TEMP
Text Label 3750 6850 0    50   ~ 0
TACHO
$Comp
L Device:R R3
U 1 1 5CE42008
P 3650 6550
F 0 "R3" H 3720 6596 50  0000 L CNN
F 1 "R" H 3720 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3580 6550 50  0001 C CNN
F 3 "~" H 3650 6550 50  0001 C CNN
	1    3650 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5CE421CA
P 3650 6400
F 0 "#PWR0127" H 3650 6250 50  0001 C CNN
F 1 "+5V" H 3665 6573 50  0000 C CNN
F 2 "" H 3650 6400 50  0001 C CNN
F 3 "" H 3650 6400 50  0001 C CNN
	1    3650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6850 3650 6850
Wire Wire Line
	3650 6700 3650 6850
Connection ~ 3650 6850
Wire Wire Line
	3650 6850 3750 6850
Text Label 5700 6550 2    50   ~ 0
MODE_BUTTON
Text Label 2100 3800 0    50   ~ 0
STEP_1
Text Label 2100 3900 0    50   ~ 0
STEP_2
Text Label 2100 4000 0    50   ~ 0
STEP_3
Text Label 2100 4100 0    50   ~ 0
STEP_4
Text Label 2100 3400 0    50   ~ 0
LCD_CS
Text Label 2100 3500 0    50   ~ 0
LCD_RD
Text Label 2100 3600 0    50   ~ 0
LCD_WR
Text Label 2100 3700 0    50   ~ 0
LCD_DATA
$Comp
L Device:CP C1
U 1 1 5CD87D8B
P 1350 1050
F 0 "C1" V 1095 1050 50  0000 C CNN
F 1 "CP" V 1186 1050 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 1388 900 50  0001 C CNN
F 3 "~" H 1350 1050 50  0001 C CNN
	1    1350 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 800  1500 1050
Wire Wire Line
	1500 1050 1500 1300
Connection ~ 1500 1050
$Comp
L power:GND #PWR0130
U 1 1 5CD8935D
P 1200 1050
F 0 "#PWR0130" H 1200 800 50  0001 C CNN
F 1 "GND" H 1205 877 50  0000 C CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "" H 1200 1050 50  0001 C CNN
	1    1200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 5CD8385D
P 4000 3050
F 0 "#PWR0128" H 4000 2900 50  0001 C CNN
F 1 "+5V" H 4015 3223 50  0000 C CNN
F 2 "" H 4000 3050 50  0001 C CNN
F 3 "" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5CE2EC10
P 9300 5050
F 0 "D4" H 9291 5266 50  0000 C CNN
F 1 "LED" H 9291 5175 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9300 5050 50  0001 C CNN
F 3 "~" H 9300 5050 50  0001 C CNN
	1    9300 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5CE392F9
P 2750 5600
F 0 "R7" H 2820 5646 50  0000 L CNN
F 1 "R" H 2820 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2680 5600 50  0001 C CNN
F 3 "~" H 2750 5600 50  0001 C CNN
	1    2750 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5CE39EE8
P 4850 5400
F 0 "R9" H 4920 5446 50  0000 L CNN
F 1 "R" H 4920 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4780 5400 50  0001 C CNN
F 3 "~" H 4850 5400 50  0001 C CNN
	1    4850 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CE39F7F
P 4850 5100
F 0 "R8" H 4920 5146 50  0000 L CNN
F 1 "R" H 4920 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4780 5100 50  0001 C CNN
F 3 "~" H 4850 5100 50  0001 C CNN
	1    4850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5250 5100 5250
Connection ~ 4850 5250
Text Label 8700 4950 0    50   ~ 0
TX
Text Label 9550 5050 0    50   ~ 0
RX
Text Label 2100 1900 0    50   ~ 0
TX
Text Label 2100 1800 0    50   ~ 0
RX
$Comp
L Regulator_Linear:MIC5205-3.3YM5 U8
U 1 1 5CE45059
P 7850 3600
F 0 "U8" H 7850 3942 50  0000 C CNN
F 1 "MIC5225-3.3YM5" H 7850 3851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7850 3925 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005785A.pdf" H 7850 3600 50  0001 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 5CE4554D
P 7100 3500
F 0 "#PWR0131" H 7100 3350 50  0001 C CNN
F 1 "+5V" H 7115 3673 50  0000 C CNN
F 2 "" H 7100 3500 50  0001 C CNN
F 3 "" H 7100 3500 50  0001 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0134
U 1 1 5CE4FAEA
P 9200 3500
F 0 "#PWR0134" H 9200 3350 50  0001 C CNN
F 1 "+3.3V" H 9215 3673 50  0000 C CNN
F 2 "" H 9200 3500 50  0001 C CNN
F 3 "" H 9200 3500 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5CE521C3
P 8800 3650
F 0 "C6" H 8685 3604 50  0000 R CNN
F 1 "10uF" H 8685 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8838 3500 50  0001 C CNN
F 3 "~" H 8800 3650 50  0001 C CNN
	1    8800 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 5CE100FD
P 4700 3350
F 0 "J6" H 4750 3667 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4750 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4700 3350 50  0001 C CNN
F 3 "~" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5CE21075
P 4000 3200
F 0 "R11" H 4070 3246 50  0000 L CNN
F 1 "R" H 4070 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3930 3200 50  0001 C CNN
F 3 "~" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5CE25662
P 3900 1600
F 0 "C3" H 4015 1646 50  0000 L CNN
F 1 "C" H 4015 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3938 1450 50  0001 C CNN
F 3 "~" H 3900 1600 50  0001 C CNN
	1    3900 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5CE28E8B
P 3900 1000
F 0 "C2" H 4015 1046 50  0000 L CNN
F 1 "C" H 4015 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3938 850 50  0001 C CNN
F 3 "~" H 3900 1000 50  0001 C CNN
	1    3900 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 1000 3550 1000
Wire Wire Line
	3750 1600 3550 1600
Connection ~ 3550 1600
$Comp
L Device:R R12
U 1 1 5CE2D928
P 9150 5200
F 0 "R12" H 9220 5246 50  0000 L CNN
F 1 "R" H 9220 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 9080 5200 50  0001 C CNN
F 3 "~" H 9150 5200 50  0001 C CNN
	1    9150 5200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 5CE30A21
P 9150 5350
F 0 "#PWR0139" H 9150 5200 50  0001 C CNN
F 1 "+3.3V" H 9165 5523 50  0000 C CNN
F 2 "" H 9150 5350 50  0001 C CNN
F 3 "" H 9150 5350 50  0001 C CNN
	1    9150 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 5050 8700 5050
$Comp
L power:GND #PWR0132
U 1 1 5CF2E40A
P 7850 3900
F 0 "#PWR0132" H 7850 3650 50  0001 C CNN
F 1 "GND" H 7855 3727 50  0000 C CNN
F 2 "" H 7850 3900 50  0001 C CNN
F 3 "" H 7850 3900 50  0001 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
Text Label 4850 4950 0    50   ~ 0
KEY
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5CF5ADAD
P 8450 3500
F 0 "FB1" V 8176 3500 50  0000 C CNN
F 1 "Ferrite_Bead" V 8267 3500 50  0000 C CNN
F 2 "Inductor_SMD:L_1206_3216Metric" V 8380 3500 50  0001 C CNN
F 3 "~" H 8450 3500 50  0001 C CNN
	1    8450 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3500 8300 3500
Wire Wire Line
	8600 3500 8800 3500
Text Label 2650 6250 0    50   ~ 0
KEY
$Comp
L symbol_library:L80-R U7
U 1 1 5CF35F0B
P 8000 4800
F 0 "U7" H 8000 5315 50  0000 C CNN
F 1 "L80-R" H 8000 5224 50  0000 C CNN
F 2 "footprints:L80-R" H 8000 4800 50  0001 C CNN
F 3 "" H 8000 4800 50  0001 C CNN
	1    8000 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CF36603
P 7300 5050
F 0 "#PWR0105" H 7300 4800 50  0001 C CNN
F 1 "GND" V 7305 4922 50  0000 R CNN
F 2 "" H 7300 5050 50  0001 C CNN
F 3 "" H 7300 5050 50  0001 C CNN
	1    7300 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5CF3666F
P 8700 4850
F 0 "#PWR0111" H 8700 4600 50  0001 C CNN
F 1 "GND" V 8705 4722 50  0000 R CNN
F 2 "" H 8700 4850 50  0001 C CNN
F 3 "" H 8700 4850 50  0001 C CNN
	1    8700 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5CF3679C
P 8700 4750
F 0 "#PWR0117" H 8700 4600 50  0001 C CNN
F 1 "+3.3V" V 8715 4878 50  0000 L CNN
F 2 "" H 8700 4750 50  0001 C CNN
F 3 "" H 8700 4750 50  0001 C CNN
	1    8700 4750
	0    1    1    0   
$EndComp
Connection ~ 9150 5050
Wire Wire Line
	9450 5050 9550 5050
$Comp
L Device:C C4
U 1 1 5CF5668D
P 9200 3650
F 0 "C4" H 9085 3604 50  0000 R CNN
F 1 "100nF" H 9085 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9238 3500 50  0001 C CNN
F 3 "~" H 9200 3650 50  0001 C CNN
	1    9200 3650
	-1   0    0    1   
$EndComp
Connection ~ 9200 3500
Connection ~ 8800 3500
Wire Wire Line
	8800 3500 9200 3500
Wire Wire Line
	9200 3900 9200 3800
Connection ~ 7850 3900
Wire Wire Line
	7850 3900 8800 3900
Wire Wire Line
	8800 3800 8800 3900
Connection ~ 8800 3900
Wire Wire Line
	8800 3900 9200 3900
Text Label 2100 1700 0    50   ~ 0
EN
Text Label 7550 3600 2    50   ~ 0
EN
$Comp
L power:+5V #PWR0107
U 1 1 5D0683DC
P 5850 6150
F 0 "#PWR0107" H 5850 6000 50  0001 C CNN
F 1 "+5V" H 5865 6323 50  0000 C CNN
F 2 "" H 5850 6150 50  0001 C CNN
F 3 "" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
Text Label 2750 5450 0    50   ~ 0
KEY
Wire Wire Line
	5700 6550 5850 6550
Wire Wire Line
	5850 6600 5850 6550
Connection ~ 5850 6550
Wire Wire Line
	4500 3450 4000 3450
Wire Wire Line
	4000 3450 4000 3350
$Comp
L power:GND #PWR0101
U 1 1 5D1C1715
P 1500 4400
F 0 "#PWR0101" H 1500 4150 50  0001 C CNN
F 1 "GND" H 1505 4227 50  0000 C CNN
F 2 "" H 1500 4400 50  0001 C CNN
F 3 "" H 1500 4400 50  0001 C CNN
	1    1500 4400
	1    0    0    -1  
$EndComp
Text Label 1700 5850 0    50   ~ 0
KEY
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5D1D0BC9
P 1500 6050
F 0 "J1" H 1420 5525 50  0000 C CNN
F 1 "Conn_01x06" H 1420 5616 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 1500 6050 50  0001 C CNN
F 3 "~" H 1500 6050 50  0001 C CNN
	1    1500 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 6950 2350 6950
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D1D7F80
P 9300 1250
F 0 "J2" H 9380 1242 50  0000 L CNN
F 1 "Conn_01x04" H 9380 1151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9300 1250 50  0001 C CNN
F 3 "~" H 9300 1250 50  0001 C CNN
	1    9300 1250
	1    0    0    -1  
$EndComp
Text Label 9150 1950 2    50   ~ 0
STEP_1
Text Label 9150 2050 2    50   ~ 0
STEP_2
Text Label 9150 2150 2    50   ~ 0
STEP_3
Text Label 9150 2250 2    50   ~ 0
STEP_4
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5D1D816C
P 9350 2050
F 0 "J3" H 9430 2042 50  0000 L CNN
F 1 "Conn_01x04" H 9430 1951 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9350 2050 50  0001 C CNN
F 3 "~" H 9350 2050 50  0001 C CNN
	1    9350 2050
	1    0    0    -1  
$EndComp
Text Label 9100 1150 2    50   ~ 0
LCD_CS
Text Label 9100 1250 2    50   ~ 0
LCD_RD
Text Label 9100 1350 2    50   ~ 0
LCD_WR
Text Label 9100 1450 2    50   ~ 0
LCD_DATA
Text Label 2100 2000 0    50   ~ 0
MOSI
Text Label 2100 2100 0    50   ~ 0
MISO
Text Label 5000 3350 0    50   ~ 0
MOSI
Text Label 4500 3250 2    50   ~ 0
MISO
Text Label 2100 3200 0    50   ~ 0
RESET
Text Label 3900 3450 2    50   ~ 0
RESET
Wire Wire Line
	3900 3450 4000 3450
Connection ~ 4000 3450
Text Label 2100 2200 0    50   ~ 0
SCK
Text Label 4500 3350 2    50   ~ 0
SCK
$Comp
L power:GND #PWR0102
U 1 1 5D1DB0C1
P 5000 3450
F 0 "#PWR0102" H 5000 3200 50  0001 C CNN
F 1 "GND" H 5005 3277 50  0000 C CNN
F 2 "" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D1DB36F
P 5000 3250
F 0 "#PWR0103" H 5000 3100 50  0001 C CNN
F 1 "+5V" H 5015 3423 50  0000 C CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "" H 5000 3250 50  0001 C CNN
	1    5000 3250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D1DC0E4
P 900 1700
F 0 "#PWR0104" H 900 1550 50  0001 C CNN
F 1 "+5V" H 915 1873 50  0000 C CNN
F 2 "" H 900 1700 50  0001 C CNN
F 3 "" H 900 1700 50  0001 C CNN
	1    900  1700
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 5D1DE14A
P 1500 2900
F 0 "U1" H 1450 2900 50  0000 R CNN
F 1 "ATmega328P-PU" H 1700 2750 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1500 2900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1500 2900 50  0001 C CNN
	1    1500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6150 2000 6150
Wire Wire Line
	2000 6150 2000 6950
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5D1EBE86
P 9300 2700
F 0 "J4" H 9380 2692 50  0000 L CNN
F 1 "Conn_01x04" H 9380 2601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9300 2700 50  0001 C CNN
F 3 "~" H 9300 2700 50  0001 C CNN
	1    9300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5D1EC16D
P 9100 2600
F 0 "#PWR0106" H 9100 2450 50  0001 C CNN
F 1 "+5V" H 9115 2773 50  0000 C CNN
F 2 "" H 9100 2600 50  0001 C CNN
F 3 "" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
Text Label 9100 2700 2    50   ~ 0
KEY
$Comp
L power:GND #PWR0108
U 1 1 5D1EC1EA
P 9100 2900
F 0 "#PWR0108" H 9100 2650 50  0001 C CNN
F 1 "GND" H 9105 2727 50  0000 C CNN
F 2 "" H 9100 2900 50  0001 C CNN
F 3 "" H 9100 2900 50  0001 C CNN
	1    9100 2900
	1    0    0    -1  
$EndComp
Text Label 9100 2800 2    50   ~ 0
EN
Connection ~ 2750 6050
Wire Wire Line
	1700 6050 2750 6050
$Comp
L Device:C C5
U 1 1 5D1DB29B
P 7100 3650
F 0 "C5" H 6985 3604 50  0000 R CNN
F 1 "10uF" H 6985 3695 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7138 3500 50  0001 C CNN
F 3 "~" H 7100 3650 50  0001 C CNN
	1    7100 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 3500 7100 3500
Connection ~ 7100 3500
Wire Wire Line
	7100 3800 7100 3900
Wire Wire Line
	7100 3900 7850 3900
$Comp
L Device:C C8
U 1 1 5D1DF3B0
P 8100 6000
F 0 "C8" H 7985 5954 50  0000 R CNN
F 1 "100nF" H 7985 6045 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8138 5850 50  0001 C CNN
F 3 "~" H 8100 6000 50  0001 C CNN
	1    8100 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5D1DF51A
P 7600 6000
F 0 "C7" H 7485 5954 50  0000 R CNN
F 1 "4.7nF" H 7485 6045 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7638 5850 50  0001 C CNN
F 3 "~" H 7600 6000 50  0001 C CNN
	1    7600 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5D1DF5D5
P 8600 6050
F 0 "BT1" H 8718 6146 50  0000 L CNN
F 1 "Battery_Cell" H 8718 6055 50  0000 L CNN
F 2 "footprints:Coin Battery Holder" V 8600 6110 50  0001 C CNN
F 3 "~" V 8600 6110 50  0001 C CNN
	1    8600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5850 8100 5850
Connection ~ 8100 5850
Wire Wire Line
	8100 5850 8600 5850
Wire Wire Line
	8600 6150 8100 6150
Connection ~ 8100 6150
Wire Wire Line
	8100 6150 7600 6150
$Comp
L power:GND #PWR0109
U 1 1 5D1E0D8E
P 8100 6150
F 0 "#PWR0109" H 8100 5900 50  0001 C CNN
F 1 "GND" H 8105 5977 50  0000 C CNN
F 2 "" H 8100 6150 50  0001 C CNN
F 3 "" H 8100 6150 50  0001 C CNN
	1    8100 6150
	1    0    0    -1  
$EndComp
Text Label 8700 4650 0    50   ~ 0
V_BCKP
Text Label 8100 5700 0    50   ~ 0
V_BCKP
Wire Wire Line
	8100 5850 8100 5700
$EndSCHEMATC