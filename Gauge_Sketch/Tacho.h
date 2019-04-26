#include <Stepper.h>

#define STEPS_PER_REVOLUTION 600
#define SPEED 60
#define TACHO_PIN A1
#define MIN_PULSE_DURATION 4
#define RPM_UPDATE_DURATION 100
#define MAX_RPM 12000

class Tacho {
  Stepper stepper = Stepper(STEPS_PER_REVOLUTION, 10, 11, 12, 13);
  int position = 0;

  unsigned long lastUpdateTime = 0;
  double rpm = 0;
  double averageRpm = 0;
  
  static volatile int pulseCount;
  static unsigned long lastPulseTime;
  
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
    unsigned long time = millis();
    if (time > lastUpdateTime + RPM_UPDATE_DURATION) {
      double duration = (time - lastUpdateTime) / 1000.0;
      double frequency = pulseCount / duration;
      pulseCount = 0;
      lastUpdateTime = time;
      rpm = min(frequency * 60, MAX_RPM);
    }
    
    averageRpm = (9 * averageRpm + rpm) / 10;

//    Serial.println(averageRpm);
    int newPosition = averageRpm / MAX_RPM * STEPS_PER_REVOLUTION;
    stepper.step(position - newPosition);
    position = newPosition;
  }

  static void interrupt() {
    unsigned long time = millis();
    if (time > lastPulseTime + MIN_PULSE_DURATION) {
      pulseCount++;
      lastPulseTime = time;
    }
  }
};

volatile int Tacho::pulseCount = 0;
unsigned long Tacho::lastPulseTime = 0;
