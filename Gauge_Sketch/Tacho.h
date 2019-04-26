#include <Stepper.h>

#define STEPS_PER_REVOLUTION 600
#define SPEED 60
#define TACHO_PIN A1
#define MAX_RPM 12000
#define MIN_PULSE_DURATION 60.0 / MAX_RPM * 1000000 // micros

class Tacho {
  Stepper stepper = Stepper(STEPS_PER_REVOLUTION, 10, 11, 12, 13);
  int position = 0; // steps
  
  static volatile int pulsePeriod;    // micros
  static unsigned long lastPulseTime; // micros
  
public:
  void setup() {
    stepper.setSpeed(SPEED);

    // Home
    stepper.step(-STEPS_PER_REVOLUTION);
    stepper.step(STEPS_PER_REVOLUTION);

    pinMode(TACHO_PIN, INPUT_PULLDOWN);
    attachInterrupt(digitalPinToInterrupt(TACHO_PIN), interrupt, FALLING);
  }

  void update() {
    if (pulsePeriod != 0) {
      double frequency = 1000000.0 / pulsePeriod;
      pulsePeriod = 0;
      double rpm = min(frequency * 60, MAX_RPM);
      int newPosition = rpm / MAX_RPM * STEPS_PER_REVOLUTION;
      stepper.step(position - newPosition);
      position = newPosition;
    }
  }

  static void interrupt() {
    unsigned long time = micros();
    if (time > lastPulseTime + MIN_PULSE_DURATION) {
      pulsePeriod = time - lastPulseTime;
      lastPulseTime = time;
    }
  }
};

volatile int Tacho::pulsePeriod = 0;
unsigned long Tacho::lastPulseTime = 0;
