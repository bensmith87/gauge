#include "Mode.h"
#include "Gps.h"

class Clock : public Mode {
  Gps* gps;
  
public:
  Clock(Gps* newGps) : Mode("TIME") {
    gps = newGps;
  }

  void update(boolean longPress) {
    char time[5];
    if (gps->getSeconds() % 2) {
      sprintf(time, "%02d%02d", gps->getHour(), gps->getMinute());
    }
    else {
      sprintf(time, "%02d.%02d", gps->getHour(), gps->getMinute());
    }
    setValue(time);
  }
};
