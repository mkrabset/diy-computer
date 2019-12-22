#include "Arduino.h"
#include "clock.h"

#define CLK A3

volatile boolean highCLK=false; 

void clockInit() {
    pinMode(CLK,OUTPUT);
}

void clock(bool val) {
  if (highCLK!=val) {
      toggleClock();
  }
}

void toggleClock() {
  if (highCLK) {
    PORTC&=B11110111;
  } else {
    PORTC|=B00001000;
  }
  highCLK=!highCLK;
}
