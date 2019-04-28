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

Display display = Display();
Button button = Button();
Gps gps = Gps();

Tacho tacho = Tacho();

Speedo speedo = Speedo(&gps);
Trip trip = Trip(&gps);
Odo odo = Odo(&gps);
Clock clock = Clock(&gps);
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
int numberOfModes = 6;
int currentMode = 0;

bool showTitle = false;

void setup() {
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
  button.update();

  tacho.update();
  
  if(!gps.update()) {
    Serial.println("FAILED GPS");
    return;
  }

  if (button.isShortPress()) {
    currentMode = (currentMode + 1) % numberOfModes;
    modes[currentMode]->start();
  }    

  for (int i = 0; i < numberOfModes; i++) {
    boolean longPress = i == currentMode ? button.isLongPress() : false;
    modes[i]->update(longPress);
  }

  modes[currentMode]->display(&display);
}
