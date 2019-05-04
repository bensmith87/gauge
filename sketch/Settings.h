#ifndef SETTINGS_H
#define SETTINGS_H

#include <SD.h>

#define WRITE_PERIOD 10000

enum TempUnit {
  DEGREES_CELCIUS,
  DEGREES_FAHRENHEIT
};

enum DistanceUnit {
  KILOMETERS,
  MILES
};

enum SpeedUnit {
  KILOMETERS_PER_HOUR,
  MILES_PER_HOUR
};

class Settings {
  long lastWriteTime = -1;
  
public:
  double trip = 0.0;
  double odo = 0.0;
  int hourOffset = 10;
  int minuteOffset = 0;
//  int tempUnits;

  void setup() {
    Serial.println("Setup Settings...");
    
    if (!SD.begin(4)) {
      Serial.println("SD card setup failed!");
      while (1);
    }

      Serial.println("Done");
  }

  void update() {
    long time = millis();
    if (time - lastWriteTime > WRITE_PERIOD) {
      backup();
      write();
      lastWriteTime = time;
    }
  }
  
private:
  void read() {
    
  }

  void backup() {
    Serial.print("Backing up Settings...");
    
    // TODO: this should back not delete
    SD.remove("settings.txt");
    
    Serial.println("Done");
  }
    
  void write() {
    File file = SD.open("settings.txt", FILE_WRITE);
    if (file) {
      Serial.print("Writing Settings...");

      char line[50];
      sprintf(line, "trip = %f", trip);
      file.println(line);
      sprintf(line, "odo = %f", odo);
      file.println(line);
      sprintf(line, "hourOffset = %d", hourOffset);
      file.println(line);
      sprintf(line, "minuteOffset = %d", minuteOffset);
      file.println(line);
      
      file.close();
      
      Serial.println("Done");
    } else {
      // if the file didn't open, print an error:
      Serial.println("Write failed!");
    }
  }
};

#endif
