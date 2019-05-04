#ifndef MODE_H
#define MODE_H

#include "Display.h"

#define TITLE_DURATION 1000

class Mode {
  String title;
  String value = "----";
  long startTime = 0;
  
public:
  Mode(String newTitle) {
    title = newTitle;
  }

  void setup() { }

  void start() {
    startTime = millis();
  }

  virtual void update() = 0;
  virtual boolean handlePress(boolean longPress) {
    return false;
  }

  boolean isTitleDisplayed() {
    return millis() - startTime < TITLE_DURATION;
  }
  
  void display(Display* display) {
    if (isTitleDisplayed()) {
      display->displayText(title);
    }
    else {
      display->displayText(value);
    }
  }

protected:
  void setValue(String newValue) {
    value = newValue;
  }
};

#endif
