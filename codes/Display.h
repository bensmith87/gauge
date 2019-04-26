#ifndef DISPLAY_H
#define DISPLAY_H

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_LEDBackpack.h>

class Display {
  Adafruit_AlphaNum4 disp = Adafruit_AlphaNum4();
  
public:

  void setup() {
    disp.begin(0x70);
    displayText("Neat");
  }

  void displayText(String text) {
    disp.clear();
    int out = 0;
    for (int i = 0; i < text.length() && out < 4; i++) {
      boolean dot = i <= text.length() && text.charAt(i + 1) == '.';
      disp.writeDigitAscii(out++, text.charAt(i), dot);
      if (dot) {
        i++;
      }
    }
    disp.writeDisplay();
  }
};

#endif
