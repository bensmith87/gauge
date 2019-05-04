#ifndef GPS_H
#define GPS_H

#include <Adafruit_GPS.h>

#define WORLD_RADIUS 6371000.0
#define MIN_DISTANCE 100

class Gps {
  Adafruit_GPS gps = Adafruit_GPS(&Serial1);
  double lastLatitude = 0;
  double lastLongitude = 0;
  double odo = 0;
  double trip = 0;
  
public:
  void setup() {
    gps.begin(9600);
    gps.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ);
  }

  void update() {
    gps.read();
    
    if (gps.newNMEAreceived()) {
      if (!gps.parse(gps.lastNMEA())) {
        Serial.println("GPS failed!");
        return;
      }
    }

    if (gps.fix) {
      double latitude = gps.latitudeDegrees;
      double longitude = gps.longitudeDegrees;
  
      if (lastLatitude == 0) lastLatitude = latitude;
      if (lastLongitude == 0) lastLongitude = longitude;
      
      double dist = distance(lastLatitude, lastLongitude, latitude, longitude);
      
      if (!isnan(dist) && dist > MIN_DISTANCE) {
        odo += dist;
        trip += dist;
        lastLatitude = latitude;
        lastLongitude = longitude;
      }
    }
  }

  int getHour() {
    return gps.hour;
  }

  int getMinute() {
    return gps.minute;
  }

  double getSpeed() {
    return gps.fix ? gps.speed * 1.852 : 0;
  }

  double getOdo() {
    return odo;
  }

  double getTrip() {
    return trip;
  }

  double resetTrip() {
    trip = 0;
  }

private:
  double distance(double latitudeA, double longitudeA, double latitudeB, double longitudeB) {
    double phi = (latitudeB - latitudeA) * DEG_TO_RAD;
    double lambda = (longitudeB - longitudeA) * DEG_TO_RAD;
    double a = sq(sin(phi / 2)) + cos(latitudeA * DEG_TO_RAD) * cos(latitudeB * DEG_TO_RAD) * sq(sin(lambda / 2));
    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
      
    return WORLD_RADIUS * c;
  }
};

#endif
