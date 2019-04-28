#include "Mode.h"
#include "Gps.h"

class Odo : public Mode {
  Gps* gps;
  
public:
  Odo(Gps* newGps) : Mode("ODO") {
    gps = newGps;
  }

  void update(boolean longPress) {
    char odoText[4];
    sprintf(odoText, "%4d", round(gps->getOdo() / 1000));
    setValue(odoText);
  }
};
