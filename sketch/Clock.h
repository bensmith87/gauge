#include "Mode.h"
#include "Settings.h"
#include "Gps.h"

enum State {
  NORMAL,
  SET_HOUR,
  SET_MINUTE
};
int numberOfStates = 3;

class Clock : public Mode {
  Settings* settings;
  Gps* gps;
  State currentState;
  
public:
  Clock(Settings* newSettings, Gps* newGps) : Mode("TIME") {
    settings = newSettings;
    gps = newGps;
  }

  void start() {
    Mode::start();
    currentState = NORMAL;
  }

  void update() {
    char time[5];
    
    int hour = (gps->getHour() + settings->hourOffset) % 24;
    int minute = (gps->getMinute() + settings->minuteOffset) % 60;
    
    boolean slowFlash = (millis() / 1000) % 2;
    boolean fastFlash = (millis() / 200) % 2;
    
    if (currentState == NORMAL || fastFlash) {
      if (slowFlash) {
        sprintf(time, "%02d.%02d", hour, minute);
      } else {
        sprintf(time, "%02d%02d", hour, minute);
      }
    } else if (currentState == SET_HOUR) {
      sprintf(time, "  %02d", minute);
    } else if (currentState == SET_MINUTE) {
      sprintf(time, "%02d  ", hour);
    }
    
    setValue(time);
  }

  boolean handlePress(boolean longPress) {
    if (longPress) {
      currentState = (State)((currentState + 1) % numberOfStates);
      return true;
    } else if (currentState != NORMAL) {
      if (currentState == SET_HOUR) {
        settings->hourOffset++;
      } else {
        settings->minuteOffset += 30;
      }
      return true;
    }
    
    return false;
  }
};
