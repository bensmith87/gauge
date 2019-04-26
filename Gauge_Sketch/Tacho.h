#include <AccelStepper.h>

#define STEPS_PER_REVOLUTION 600
#define STEPPER_MAX_SPEED 1000
#define STEPPER_ACCELERATION 400
#define TACHO_PIN A1
#define MAX_RPM 12000
#define MIN_PULSE_DURATION 60.0 / MAX_RPM * 1000000 // micros

class Tacho {
  AccelStepper stepper = AccelStepper(AccelStepper::FULL4WIRE, 10, 11, 12, 13);
  
  static volatile int pulsePeriod;    // micros
  static unsigned long lastPulseTime; // micros
  
public:
  void setup() {
    stepper.setMaxSpeed(STEPPER_MAX_SPEED);
    stepper.setAcceleration(STEPPER_ACCELERATION);

    // Home
    stepper.runToNewPosition(STEPS_PER_REVOLUTION);
    stepper.runToNewPosition(0);

    pinMode(TACHO_PIN, INPUT_PULLDOWN);
    attachInterrupt(digitalPinToInterrupt(TACHO_PIN), interrupt, FALLING);
  }

  void update() {
    stepper.run();
    
    if (pulsePeriod > 0) {
      double frequency = 1000000.0 / pulsePeriod;
      pulsePeriod = -1;
      double rpm = min(frequency * 60, MAX_RPM);
      int position = rpm / MAX_RPM * STEPS_PER_REVOLUTION;
      stepper.moveTo(position);
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

volatile int Tacho::pulsePeriod = -1;
unsigned long Tacho::lastPulseTime = 0;
