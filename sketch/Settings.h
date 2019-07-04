#ifndef SETTINGS_H
#define SETTINGS_H

//#include <SD.h>

#define WRITE_PERIOD 10000
#define TRIP "trip="
#define ODO "odo="
#define HOUR_OFFSET "hourOffset="
#define MINUTE_OFFSET "minuteOffset="

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
//    Serial.println("Setup Settings...");
//    
//    if (!SD.begin(4)) {
//      Serial.println("SD card setup failed!");
//      while (1);
//    }
//
//    read();
//
//    Serial.println("Done");
  }

  void update() {
//    long time = millis();
//    if (time - lastWriteTime > WRITE_PERIOD) {
//      backup();
//      write();
//      lastWriteTime = time;
//    }
  }
  
private:
//  void read() {
//    File file = SD.open("settings.txt");
//    if (file) {
//      while (file.available()) {
//        String line = file.readStringUntil('\n');
//        Serial.println(line);
//        if (line.startsWith(TRIP)) {
//          trip = line.substring(sizeof(TRIP) - 1).toDouble();
//        } else if (line.startsWith(ODO)) {
//          odo = line.substring(sizeof(ODO) - 1).toDouble();
//        } else if (line.startsWith(HOUR_OFFSET)) {
//          hourOffset = line.substring(sizeof(HOUR_OFFSET) - 1).toInt();
//        } else if (line.startsWith(MINUTE_OFFSET)) {
//          minuteOffset = line.substring(sizeof(MINUTE_OFFSET) - 1).toInt();
//        }
//      }
//      file.close();
//    }
//  }
//
//  void backup() {
//    Serial.print("Backing up Settings...");
//    
//    // TODO: this should back not delete
//    SD.remove("settings.txt");
//    
//    Serial.println("Done");
//  }
//    
//  void write() {
//    File file = SD.open("settings.txt", FILE_WRITE);
//    if (file) {
//      Serial.println("Writing Settings...");
//
//      char line[50];
//      
//      sprintf(line, "%s%f", TRIP, trip);
//      Serial.println(line);
//      file.println(line);
//      
//      sprintf(line, "%s%f", ODO, odo);
//      Serial.println(line);
//      file.println(line);
//      
//      sprintf(line, "%s%d", HOUR_OFFSET, hourOffset);
//      Serial.println(line);
//      file.println(line);
//      
//      sprintf(line, "%s%d", MINUTE_OFFSET, minuteOffset);
//      Serial.println(line);
//      file.println(line);
//      
//      file.close();
//      
//      Serial.println("Done");
//    } else {
//      // if the file didn't open, print an error:
//      Serial.println("Write failed!");
//    }
//  }
};

#endif
