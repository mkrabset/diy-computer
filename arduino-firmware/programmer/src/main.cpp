#include <TimerOne.h>
#include <Arduino.h>
#include "main.h"

#define DEBUG false

#define DEBUGOUT if (DEBUG) Serial.println

#define RAM2INSTR_STEP 1
#define RAMLOAD_INSTR 0xFE
#define RAMLOAD_CLR_MAR_OFFSET_STEP 3
#define RAMLOAD_LOAD_MAR_HIGH_STEP 4
#define RAMLOAD_LOAD_MAR_LOW_STEP 5
#define RAMLOAD_INC_MAR_STEP 6
#define RAMLOAD_RAMWRITE_STEP 7

#define RESET_PC_INSTR 0xFF
#define RESET_PC_START_STEP 3
#define RESET_PC_END_STEP 14

// Shift-register pins for bus write
#define OE_DATA 5
#define SHIFT_DATA 4
#define LATCH_DATA 3
#define DS_DATA 6

// Shift-register pins for instruction register mastering
#define LATCH A1
#define SHIFT_CL A2
#define DS A0

// Pin for src selection    Mastered / Freerunning
#define SRC_SEL A4

// Pin for ext_clk 
#define EXT_CLK A3

#define RUNDELAY 5000
#define MASTERING_DEBUG false
#define MASTERING_DELAY 50

#define CLK_LED 13

long masteredDelay=MASTERING_DELAY;
long runDelay=RUNDELAY;

// Command buffer data
#define MAX_BUF 256
long cpos=0;
char buffer[MAX_BUF];
char buffer2[MAX_BUF];
byte data[MAX_BUF/2];
bool commandComplete=false;

// Execution control
boolean mastered=true;
boolean halted=true;

volatile boolean highCLK=false; 

void setup() {
  digitalWrite(OE_DATA,HIGH);
  pinMode(OE_DATA,OUTPUT);        // Set to input if controlled by decoder
  pinMode(DS_DATA,OUTPUT);
  pinMode(SHIFT_DATA,OUTPUT);
  pinMode(LATCH_DATA,OUTPUT);
  
  pinMode(DS,OUTPUT);
  pinMode(SHIFT_CL,OUTPUT);
  pinMode(LATCH,OUTPUT);

  pinMode(EXT_CLK,OUTPUT);
  pinMode(CLK_LED,OUTPUT);
  digitalWrite(EXT_CLK,LOW);
  digitalWrite(CLK_LED,LOW);

  pinMode(SRC_SEL,OUTPUT);
  digitalWrite(SRC_SEL,LOW);
  delay(100);
  Serial.begin(115200);
  delay(100);
  Serial.println();
  Serial.println("DIY Computer Programmer");
  Serial.println();
  Serial.println("Programmer commands:");
  Serial.println("====================");
  Serial.println("mar xxxx           // Set memory address register to xxxx");
  Serial.println("w 12 34 23 1a a0   // Writes the byte values 12 34 23... into memory, starting at current MAR address, increase MAR after each byte");
  Serial.println("initpc             // Set program counter to zero");
  Serial.println("run                // Execute program");
  Serial.println("hlt                // Halt execution");
  Serial.println("s                  // Execute single step");
  Serial.println("rd xxxxx           // Set run delay (us)");
  Serial.println("md xxxxx           // Set mastered delay (us)");
  Serial.println("dm                 // Display memory pointed by MAR as INSTR and inc MAR");
  Serial.println("dm xxx             // Display memory (repeat xxx times)");
  Serial.println("t                  // toggle clock level (warning: don't keep high when using external clock!)");
  Serial.println("mc iis             // Set mastered instruction/step to ii/s (for verifying decoder signals)");
  Serial.println(">");
  halted=true;
  busWrite(false);
  setMastered(true);
  initPC();
  Timer1.initialize(runDelay);
}

void clock(bool val) {
  if (val) {
    DEBUGOUT("CLK UP");
  } else {
    DEBUGOUT("CLK DOWN");
  }
  digitalWrite(EXT_CLK,val);
  digitalWrite(CLK_LED,val);
}

void setMastered(boolean m) {
  mastered=m;
  if (mastered) {
    DEBUGOUT("Mastered=true");
    halted=true;
    Timer1.detachInterrupt();
  } else {
    DEBUGOUT("Mastered=false");
  }
  digitalWrite(SRC_SEL,!mastered);
}

void loop() {
  if (commandComplete) {
    processCommand();
    cpos=0;
    commandComplete=false;
  }
}

void serialEvent() {
  while (Serial.available()) {
    char inChar = (char)Serial.read();
    buffer[cpos] = inChar;
    cpos++;
    if (cpos == MAX_BUF) {
      cpos = 0;
    }
    if (inChar == '\n') {
      buffer[cpos - 1] = 0;
      commandComplete = true;
    }
  }
}

void processCommand() {
  DEBUGOUT();
  DEBUGOUT(buffer);
  halt();
  setMastered(true);
  if (beginsWith(buffer,"mar ")) {
    int address=getHex(&buffer[4],4);
    setMar(address);
    Serial.print("MAR set to 0x");
    printHex(address,4);
    Serial.println();
  } else if (beginsWith(&buffer[0],"initpc")) {
    initPC();
    Serial.println("PC set to 0x0000");
  } else if (beginsWith(&buffer[0],"run")) {
    run();
  } else if (beginsWith(&buffer[0],"halt")) {
    halt();
  } else if (beginsWith(&buffer[0],"rd ")) {
    runDelay=atol(&buffer[3]);
    Timer1.initialize(runDelay);
    Serial.print("Setting runDelay to ");
    Serial.print(runDelay);
    Serial.println(" microseconds");
  } else if (beginsWith(&buffer[0],"md ")) {
    masteredDelay=atol(&buffer[3]);
    Serial.print("Setting masteredDelay to ");
    Serial.print(masteredDelay);
    Serial.println(" microseconds");
  } else if (beginsWith(&buffer[0],"s")) {
    halt();
    setMastered(false);
    if (buffer[1]==0) {
      tick();
    } else {
      int num=atoi(&buffer[1]);
      for (int i=0;i<num;i++) {
        tick();
      }
    }
  } else if (beginsWith(&buffer[0],"dm")) {
    halt();
    setMastered(true);
    if (buffer[2]==0) {
      DEBUGOUT("dm");
      setMicrocodeStep(RAMLOAD_INSTR, RAM2INSTR_STEP);
      tick();
      setMicrocodeStep(RAMLOAD_INSTR, RAMLOAD_INC_MAR_STEP);
      tick();
    } else {
      int num=atoi(&buffer[2]);
      for (int i=0;i<num;i++) {
        setMicrocodeStep(RAMLOAD_INSTR, RAM2INSTR_STEP);
        tick();
        setMastered(false);
        delay(1000);
        setMastered(true);
        setMicrocodeStep(RAMLOAD_INSTR, RAMLOAD_INC_MAR_STEP);
        tick();
      }
    }
    setMastered(false);
  } else if (beginsWith(&buffer[0],"t")) {
    setMastered(false);
    clock(!highCLK);
    highCLK=!highCLK;
  } else if (beginsWith(&buffer[0],"w ")) {
    writeBufferToRAM();
  } else if (beginsWith(&buffer[0],"mc ")) {
    int mcAddress=getHex(&buffer[3],3);
    setMicrocodeStep(mcAddress>>4, mcAddress & 0x0f);
    Serial.print("Set mc to #");
    Serial.println(mcAddress, HEX);
    setMastered(true);
  } 
  Serial.println(">");
}



void initPC() {
  for (int s=RESET_PC_START_STEP;s<=RESET_PC_END_STEP+1;s++) {
    setMicrocodeStep(RESET_PC_INSTR, s);
    tick();
  }
  setMastered(false);
}

void halt() {
  Timer1.detachInterrupt();
  halted=true;
  DEBUGOUT("Halted");
}

void run() {
  setMastered(false);
  halted=false;
  Timer1.attachInterrupt(toggleClock);
  Serial.println("Running program");
}

void writeBufferToRAM() {
  int p=2;
  byte last=0;
  int dpos=0;
  while(buffer[p]!=0 && last!=-1) {
    while (buffer[p]==' ') {
      p++;
    }
    if (buffer[p]==0) {
      break;
    }
    last=getHex(&buffer[p],2);
    p+=2;
    if (last==-1) {
      break;
    }

    data[dpos]=(byte)last;
    dpos++;
  }

  for (int i=0;i<dpos;i++) {
    writeRamAndIncreaseMar(data[i]);
  }

  DEBUGOUT("Wrote ");
  DEBUGOUT(dpos);
  DEBUGOUT(" bytes");
  for (int i=0;i<dpos;i++) {
    if (DEBUG) printHex(data[i],2);
    DEBUGOUT(" ");
  }
  DEBUGOUT();
}


void setMicrocodeStep(byte instr, byte step) {
  DEBUGOUT("SETINST: ");
  DEBUGOUT(instr,HEX);
  DEBUGOUT(",");
  DEBUGOUT(step);
  DEBUGOUT();
  long address=0;
  address|=instr;
  address<<=8;
  address|=step<<3;  // Only 3 because Q0 on 2nd shift register is unused
  shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)address & 0xff));
  shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)(address>>8) & 0xff));
  digitalWrite(LATCH,HIGH);
  digitalWrite(LATCH,LOW);
}

void setBusValue(byte value) {
  shiftOut(DS_DATA, SHIFT_DATA, MSBFIRST, value);
  digitalWrite(LATCH_DATA,HIGH);
  digitalWrite(LATCH_DATA,LOW);
}

void busWrite(bool doWrite) {
  digitalWrite(OE_DATA, !doWrite);
}

void tick() {
    sleep();
    clock(HIGH);
    sleep();
    clock(LOW);
}
  


void setMar(int address) {
  // Clear MAR offset
  setMicrocodeStep(RAMLOAD_INSTR,RAMLOAD_CLR_MAR_OFFSET_STEP); // Clear MAR offset
  tick();

  // Load MAR high
  setMicrocodeStep(RAMLOAD_INSTR,RAMLOAD_LOAD_MAR_HIGH_STEP);
  setBusValue(address>>8);
  busWrite(true);
  tick();
  busWrite(false);

  // Load MAR low
  setMicrocodeStep(RAMLOAD_INSTR,RAMLOAD_LOAD_MAR_LOW_STEP);
  setBusValue(address & 0xff);
  busWrite(true);
  tick();
  busWrite(false);
}

void writeRamAndIncreaseMar(byte value) {
  // Write value to RAM
  setMicrocodeStep(RAMLOAD_INSTR,RAMLOAD_RAMWRITE_STEP);
  setBusValue(value);
  busWrite(true);
  tick();
  busWrite(false);

  // Increase MAR
  setMicrocodeStep(RAMLOAD_INSTR,RAMLOAD_INC_MAR_STEP);
  tick();
}


void toggleClock() {
  if (highCLK) {
    PORTC&=B11110111;
  } else {
    PORTC|=B00001000;
  }
  highCLK=!highCLK;
}

boolean beginsWith(char *src, char pattern[]) {
  for (int i=0;i<256;i++) {
    if (pattern[i]==0) {
      return true;
    } else if (src[i]!=pattern[i]) {
      return false;
    }
  }
}

long getHex(char* start, int length) {
  long v=0;
  for (int i=0;i<length;i++) {
    v*=16;
    char c=start[i];
    if (c>='0' && c<='9') {
      v+=(c-'0');
    } else if (c>='a' && c<='f') {
      v+=(c-'a'+10);
    }else if (c>='A' && c<='F') {
      v+=(c-'A'+10);
    } else {
      return -1;
    }
  }
  return v;
}

void printHex(int num, int precision) {
   char tmp[16];
   char format[128];
   sprintf(format, "%%.%dX", precision);
   sprintf(tmp, format, num);
   Serial.print(tmp);
}

void sleep() {
  DEBUGOUT("...");
  long delayMicro=mastered ? masteredDelay : runDelay;
  if (delayMicro>15000) {
    delay(delayMicro/1000);
  } else {
    delayMicroseconds(delayMicro);
  }
}