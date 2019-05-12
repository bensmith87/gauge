#include "Mode.h"

#define OIL_TEMP_PIN 6
#define V_IN 3.3
#define R1 10000
#define K 10

class OilTemp : public Mode {
  
public:
  OilTemp() : Mode("OIL.T") { }

  void update() {
    double vOut = analogRead(OIL_TEMP_PIN) / 1024.0 * 3.3;
    double r2 = vOut * R1 / (V_IN - vOut);
    double temperature = K * r2;
    char oilTempText[4];
    sprintf(oilTempText, "%4d", round(temperature));
    setValue(oilTempText);
  }
};
