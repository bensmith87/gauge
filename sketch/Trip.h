#include "Mode.h"
#include "Gps.h"

class Trip : public Mode {
  Gps* gps;
  
public:
  Trip(Gps* newGps) : Mode("TRIP") {
    gps = newGps;
  }

  void update() {
    char tripText[4];
    sprintf(tripText, "%4d", round(gps->getTrip() / 1000));
    setValue(tripText);
  }

  boolean handlePress(boolean longPress) {
    if (longPress) {
      gps->resetTrip();
      return true;
    }
    
    return false;
  }
};
