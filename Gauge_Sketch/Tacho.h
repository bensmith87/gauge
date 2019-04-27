#include <AccelStepper.h>

#define MAX_STEPS 600 / 315.0 * 240.0
#define STEPPER_MAX_SPEED 2000
#define STEPPER_ACCELERATION 1000
#define TACHO_PIN A1
#define MIN_RPM 100
#define MAX_RPM 12000
#define MIN_PULSE_DURATION 60.0 / MAX_RPM * 1000000 // micros
#define MAX_PULSE_DURATION 60.0 / MIN_RPM * 1000    // millis

class Tacho {
  AccelStepper stepper = AccelStepper(AccelStepper::FULL4WIRE, 10, 11, 12, 13);
  
  static volatile int pulsePeriod;    // micros
  static unsigned long lastPulseTime; // micros
  unsigned long lastUpdateTime;       // millis
  
public:
  void setup() {
    stepper.setMaxSpeed(STEPPER_MAX_SPEED);
    stepper.setAcceleration(STEPPER_ACCELERATION);

    // Home
    stepper.runToNewPosition(MAX_STEPS);
    stepper.runToNewPosition(0);

    pinMode(TACHO_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(TACHO_PIN), interrupt, RISING);
  }

  void update() {
    stepper.run();
    unsigned long time = millis();
    
    if (pulsePeriod > 0) {
      double frequency = 1000000.0 / pulsePeriod;
      pulsePeriod = -1;
      double rpm = min(frequency * 60, MAX_RPM);
      int position = rpm / MAX_RPM * MAX_STEPS;
      stepper.moveTo(position);
      lastUpdateTime = time;
    }
    else if (time > lastUpdateTime + MAX_PULSE_DURATION) {
      stepper.moveTo(0);
      lastUpdateTime = time;
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
