#define PIN A7
#define LONG_DURATION 1000
  
class Button {
  boolean shortPress = false;
  boolean longPress = false;
  boolean lastDown = false;
  long timer = 0;
  boolean longPressAlreadyTriggured = false;
  
public:
  void setup() {
    pinMode(PIN, INPUT_PULLUP);
  }

  void update() {
    
    shortPress = false;
    longPress = false;
    
    boolean down = digitalRead(PIN) == HIGH;

    // Button pressed
    if (!lastDown && down) {
      timer = millis();
      longPressAlreadyTriggured = false;
    }
    
    boolean timerElapsed = millis() - timer > LONG_DURATION;

    // Button released
    if (lastDown && !down) {
      if (!timerElapsed) {
        shortPress = true;
      }
    } else if (down && timerElapsed && !longPressAlreadyTriggured) {
      longPress = true;
      longPressAlreadyTriggured = true;
    }

    lastDown = down;
  }

  boolean isPressed() {
    return shortPress || longPress;
  }

  boolean isShortPress() {
    return shortPress;
  }

  boolean isLongPress() {
    return longPress;
  }
};
