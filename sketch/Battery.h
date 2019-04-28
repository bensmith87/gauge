#include "Mode.h"

#define BATTERY_PIN A2
#define R1 4700
#define R2 10000

class Battery : public Mode {
  
public:
  Battery() : Mode("BATT") { }

  void update(boolean longPress) {
    double voltage = analogRead(BATTERY_PIN) / 1024.0 * 3.3 * (R1 + R2) / R2;
    char battText[4];
    sprintf(battText, "%3f", voltage);
    setValue(battText);
  }
};
