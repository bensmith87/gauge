#include <Stepper.h>

#define STEPS_PER_REVOLUTION 600
#define SPEED 60

class Tacho {
  Stepper stepper = Stepper(STEPS_PER_REVOLUTION, 10, 11, 12, 13);
  int position = 0;
  
public:
  void setup() {
    stepper.setSpeed(SPEED);

    // Home
    stepper.step(-STEPS_PER_REVOLUTION);
    stepper.step(STEPS_PER_REVOLUTION);
  }

  void update() {
    
  }
};
