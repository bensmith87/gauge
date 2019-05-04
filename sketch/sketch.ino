#include "Button.h"
#include "Mode.h"
#include "Speedo.h"
#include "Trip.h"
#include "Odo.h"
#include "Clock.h"
#include "Gps.h"
#include "Tacho.h"
#include "Battery.h"
#include "Afr.h"
#include "Settings.h"

Settings settings = Settings();
Display display = Display();
Button button = Button();
Gps gps = Gps();
Tacho tacho = Tacho();

Speedo speedo = Speedo(&gps);
Trip trip = Trip(&gps);
Odo odo = Odo(&gps);
Clock clock = Clock(&settings, &gps);
Battery battery = Battery();
Afr afr = Afr();
Mode* modes[] = {
  &speedo,
  &trip,
  &odo,
  &clock,
  &battery,
  &afr
};
int numberOfModes = sizeof(modes) / sizeof(Mode*);
int currentMode = 0;

void setup() {
  Serial.begin(9600);
  while (!Serial) { ; }
  
  settings.setup();
  display.setup();
  button.setup();
  gps.setup();
  tacho.setup();

  for (int i = 0; i < numberOfModes; i++) {
    modes[i]->setup();
  }
  
  modes[currentMode]->start();
}

void loop() {
  settings.update();
  button.update();
  tacho.update();
  gps.update();

  for (int i = 0; i < numberOfModes; i++) {
    modes[i]->update();
  }

  if (button.isPressed()) {
    boolean pressConsumed = modes[currentMode]->handlePress(button.isLongPress());
    
    if (button.isShortPress() && !pressConsumed) {
      if (modes[currentMode]->isTitleDisplayed()) {
        currentMode = (currentMode + 1) % numberOfModes;
      }
      modes[currentMode]->start();
    }
  }

  modes[currentMode]->display(&display);
}
