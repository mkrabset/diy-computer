#ifndef BUS_H
#define BUS_H

#include "Arduino.h"

void busInit();

void busEnable();
void busDisable();

void busDir(bool dir);

void setBusValue(byte value);
byte getBusValue();

#endif