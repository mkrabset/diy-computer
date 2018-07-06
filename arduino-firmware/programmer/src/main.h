#ifndef MAIN_HPP
#define MAIN_HPP

#include <Arduino.h>

void setup();
void test();
void setMastered(boolean m);
void loop();
void serialEvent();
void processCommand();
void setMAR(int addr);
void initPC();
void halt();
void run();
void writeBufferToRAM();
void set(byte instr, byte step);
void setData(byte data);
void busWrite(bool doWrite);
void execStep(int instruction, int step);
void tick();
void toggleCLK();
void writeRAM(byte b);
void incMAR();
boolean beginsWith(char *src, char pattern[]);
long getHex(char* start, int length);
void printHex(int num, int precision);

#endif
