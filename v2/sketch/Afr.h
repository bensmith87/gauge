#include "Mode.h"

#define AFR_PIN 5
#define R1 4700
#define R2 10000

#define STOICH 14.7
#define AFR_MIN 0.67 * STOICH
#define AFR_MAX 1.36 * STOICH

class Afr : public Mode {
  
public:
  Afr() : Mode("AFR") { }

  void update() {
    double voltage = analogRead(AFR_PIN) / 1024.0 * 3.3 * (R1 + R2) / R2;
    double afr = voltage / 5 * (AFR_MAX - AFR_MIN) + AFR_MIN;
    char afrText[5];
    sprintf(afrText, "%5.1f", afr);
    setValue(afrText);
  }
};
