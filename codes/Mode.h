#ifndef MODE_H
#define MODE_H

#include "Display.h"

#define TITLE_DURATION 1000

class Mode {
  String title;
  String value = "----";
  long timer = 0;
  
public:
  Mode(String newTitle) {
    title = newTitle;
  }

  void start() {
    timer = millis();
  }
  
  virtual void update(boolean longPress) = 0;
  
  void display(Display* display) {
    if (millis() - timer < TITLE_DURATION) {
      display->displayText(title);
    }
    else {
      display->displayText(value);
    }
  }
  
  void setValue(String newValue) {
    value = newValue;
  }
};

#endif
