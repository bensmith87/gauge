#ifndef FILTER_H
#define FILTER_H

class Filter {
  int numReadings;
  int readIndex = 0;
  float *readings;
  float total = 0;
  
public:
    Filter(float size) {
      numReadings = size;
      readings = new float[numReadings];
      clear();
    }

    ~Filter() {
      delete[] readings;
    }

    float addReading(float reading) {
      total = total - readings[readIndex];
      readings[readIndex] = reading;
      total = total + readings[readIndex];
      readIndex = readIndex + 1;
  
      if (readIndex >= numReadings) {
        readIndex = 0;
      }
  
      return total / numReadings;
    }

    void clear() {
      total = 0;
      readIndex = 0;
      for (int i = 0; i < numReadings; i++) {
        readings[i] = 0;
      }
    }
};

#endif
