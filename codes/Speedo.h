#include "Mode.h"
#include "Gps.h"

class Speedo : public Mode {
  Gps* gps;
  
public:
  Speedo(Gps* newGps) : Mode("FAST") {
    gps = newGps;
  }

  void update(boolean longPress) {
    int kph = round(gps->getSpeed());
    char speed[4];
    sprintf(speed, "%4d", kph);
    setValue(speed);
  }
};
