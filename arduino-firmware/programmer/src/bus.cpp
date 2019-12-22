#include "bus.h"

// BUS pins
#define BUS0 3
#define BUS1 4
#define BUS2 5
#define BUS3 6
#define BUS4 11
#define BUS5 10
#define BUS6 9
#define BUS7 8
#define BUS_ENABLE 7
#define BUS_DIR 12

#define BUS_DIR_READ HIGH
#define BUS_DIR_WRITE LOW


void busInit() {
  pinMode(BUS_ENABLE, OUTPUT);
  pinMode(BUS_DIR, OUTPUT);
  busDisable();
  busDir(BUS_DIR_WRITE);  // Use write as default
}

void setBusValue(byte value) {
  digitalWrite(BUS0, ((value >> 0) & 0x01)==1);
  digitalWrite(BUS1, ((value >> 1) & 0x01)==1);
  digitalWrite(BUS2, ((value >> 2) & 0x01)==1);
  digitalWrite(BUS3, ((value >> 3) & 0x01)==1);
  digitalWrite(BUS4, ((value >> 4) & 0x01)==1);
  digitalWrite(BUS5, ((value >> 5) & 0x01)==1);
  digitalWrite(BUS6, ((value >> 6) & 0x01)==1);
  digitalWrite(BUS7, ((value >> 7) & 0x01)==1);
}

byte getBusValue() {
  busDir(BUS_DIR_READ);
  
  byte value=0;
  if (digitalRead(BUS0)) {
    value|=1;
  }
  if (digitalRead(BUS1)) {
    value|=2;
  }
  if (digitalRead(BUS2)) {
    value|=4;
  }
  if (digitalRead(BUS3)) {
    value|=8;
  }
  if (digitalRead(BUS4)) {
    value|=16;
  }
  if (digitalRead(BUS5)) {
    value|=32;
  }
  if (digitalRead(BUS6)) {
    value|=64;
  }
  if (digitalRead(BUS7)) {
    value|=128;
  }
  busDir(BUS_DIR_WRITE);
  return value;
}

void busEnable() {
  digitalWrite(BUS_ENABLE, LOW);
}

void busDisable() {
  digitalWrite(BUS_ENABLE, HIGH);
}

void busDir(bool dir) {
  digitalWrite(BUS_DIR, dir);
  bool busPinMode=(dir==BUS_DIR_WRITE) ? OUTPUT : INPUT;
  pinMode(BUS0,busPinMode);
  pinMode(BUS1,busPinMode);
  pinMode(BUS2,busPinMode);
  pinMode(BUS3,busPinMode);
  pinMode(BUS4,busPinMode);
  pinMode(BUS5,busPinMode);
  pinMode(BUS6,busPinMode);
  pinMode(BUS7,busPinMode);
}