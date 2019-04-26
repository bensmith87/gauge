#define PIN A7
#define LONG_DURATION 1000
  
class Button {
  boolean shortPress = false;
  boolean longPress = false;
  boolean lastDown = false;
  long timer = 0;
  
public:
  void setup() {
    pinMode(PIN, INPUT);
  }

  void update() {
    shortPress = false;
    longPress = false;
    
    boolean down = digitalRead(PIN) == HIGH;

    // Button pressed
    if (!lastDown && down) {
      timer = millis();
    }

    // Button released
    if (lastDown && !down) {
      if (millis() - timer > LONG_DURATION) {
        longPress = true;
      }
      else {
        shortPress = true;
      }
    }

    lastDown = down;
  }

  boolean isShortPress() {
    return shortPress;
  }

  boolean isLongPress() {
    return longPress;
  }
};
