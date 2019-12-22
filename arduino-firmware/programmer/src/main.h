#ifndef MAIN_HPP
#define MAIN_HPP

#include <Arduino.h>

void setup();
void test();
void setSource(boolean src);
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

void tick();
void toggleClock();
void setMicrocodeStep(byte instr, byte step);
void sleep();


boolean beginsWith(char *src, char pattern[]);
long getHex(char* start, int length);
void printHex(int num, int precision);

#endif
