#ifndef MAIN_HPP
#define MAIN_HPP

#include <Arduino.h>

void setup();
void test();
void setMastered(boolean m);
void loop();
void serialEvent();
void processCommand();
void setMar(int addr);
void initPC();
void halt();
void run();
void writeBufferToRAM();
void writeRamAndIncreaseMar(byte value);
void setMicrocodeStep(byte instr, byte step);
void setBusValue(byte value);
void busWrite(bool doWrite);
void tick(long delay);
void toggleClock();
void setMicrocodeStep(byte instr, byte step);


boolean beginsWith(char *src, char pattern[]);
long getHex(char* start, int length);
void printHex(int num, int precision);

#endif
