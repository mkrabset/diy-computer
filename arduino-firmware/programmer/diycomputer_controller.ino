#include <TimerOne.h>

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

// Pin for ext_clk (Freerunning clk input)
#define EXT_CLK A3

// Mastered clk
#define MAS_CLK 12


#define RUNDELAY 8000000
#define MASTERING_DEBUG false
#define MASTERING_DELAY 1

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

void setup() {
  digitalWrite(OE_DATA,HIGH);
  pinMode(OE_DATA,OUTPUT);        // Set to input if controlled by decoder
  pinMode(DS_DATA,OUTPUT);
  pinMode(SHIFT_DATA,OUTPUT);
  pinMode(LATCH_DATA,OUTPUT);  

  pinMode(DS,OUTPUT);
  pinMode(SHIFT_CL,OUTPUT);
  pinMode(LATCH,OUTPUT);  

  pinMode(MAS_CLK,OUTPUT);
  digitalWrite(MAS_CLK,LOW);
  
  pinMode(EXT_CLK,OUTPUT);
  digitalWrite(EXT_CLK,LOW);  

  pinMode(SRC_SEL,OUTPUT);
  digitalWrite(SRC_SEL,LOW);

  Serial.begin(115200);
  Serial.println("DIY Computer Programmer");
  Serial.println();
  Serial.println("Usage examples:");
  Serial.println("===============");
  Serial.println("mar xxxx           // Set memory address register to xxxx");
  Serial.println("w 12 34 23 1a a0   // Writes the byte values 12 34 23... into memory, starting at current MAR address, increase MAR after each byte");
  Serial.println("initpc             // Set program counter to zero");
  Serial.println("run                // Execute program");
  Serial.println("hlt                // Halt execution");
  Serial.println("s                  // Execute single step");
  Serial.println(">");
  mastered=true;
  halted=true;
  set(0,0);
  set(3,2);
  Timer1.initialize(runDelay);
}



void test() {
  setMastered(true);
  busWrite(false);
  set(125,5);
  while(true) {
  delay(masteredDelay*100);
  digitalWrite(MAS_CLK,HIGH);
  delay(masteredDelay*100);
  digitalWrite(MAS_CLK,LOW);
  }
}
  
  
  
  

void setMastered(boolean m) {
  mastered=m;
  if (!mastered) {
    busWrite(false);
  } else {
    halted=true;
    Timer1.detachInterrupt();
  }
  digitalWrite(SRC_SEL,!mastered);
  if (MASTERING_DEBUG) {
    Serial.print("MAS:");
    Serial.println(m);
  }
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
  if (beginsWith(buffer,"mar ")) {
    int address=getHex(&buffer[4],4);
    setMAR(address);
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
    masteredDelay=atoi(&buffer[3]);
    Serial.print("Setting masteredDelay to ");
    Serial.print(masteredDelay);
    Serial.println(" milliseconds");
  } else if (beginsWith(&buffer[0],"s")) {
    if (buffer[1]==0) {
      tick();
    } else {
      int num=atoi(&buffer[1]);
      for (int i=0;i<num;i++) {
        tick();
      }
    }
  } else if (beginsWith(&buffer[0],"w ")) {
    writeBufferToRAM();
  }
  Serial.println(">");
}

void setMAR(int addr) {
  setMastered(true);
  busWrite(true);
  setData(addr>>8);
  execStep(125,3);  //  high address -> MAR_H
  setData(addr);
  execStep(125,4);  //  low address -> MAR_H  
  busWrite(false);
}

void initPC() {
  setMastered(true);
  busWrite(false);
  execStep(125,7);
  for (int s=3;s<=7;s++) {
    execStep(126,s); // Step sequence for reset pc, instruction 126, steps 3-6
  }
  execStep(126,7);
  halted=true;
  setMastered(false);
}

void halt() {
  Timer1.detachInterrupt();
  halted=true;
  Serial.println("Halted");
}

void run() {
  setMastered(false);
  halted=false;
  Timer1.attachInterrupt(toggleCLK);
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
    writeRAM(data[i]);
    incMAR();
  }
  
  
  Serial.print("Wrote ");
  Serial.print(dpos);
  Serial.println(" bytes");
  for (int i=0;i<dpos;i++) {
    printHex(data[i],2);
    Serial.print(" ");
  }
  Serial.println();
}

void set(byte instr, byte step) {
  long address=0;
  address|=instr;
  address<<=8;
  address|=step<<3;
  shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)address & 0xff));
  shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)(address>>8) & 0xff));
  digitalWrite(LATCH,HIGH);
  digitalWrite(LATCH,LOW);
}

void setData(byte data) {
  if (MASTERING_DEBUG) {
    Serial.print("BUS <-- 0x");
    printHex(data,2);
    Serial.println();
  }
  shiftOut(DS_DATA, SHIFT_DATA, MSBFIRST, data);
  digitalWrite(LATCH_DATA,HIGH);
  digitalWrite(LATCH_DATA,LOW);
}

void busWrite(bool doWrite) {
  if (MASTERING_DEBUG) {
    Serial.print("BUSWRITE=");
    Serial.println(doWrite);
  }
  digitalWrite(OE_DATA, !doWrite);
}




void execStep(int instruction, int step) {
  if (MASTERING_DEBUG) {
    Serial.print("EXEC : ");
    Serial.print(instruction);
    Serial.print(":");
    Serial.println(step);
  }
  set(instruction,step);
  delay(masteredDelay);
  digitalWrite(MAS_CLK,HIGH);
  delay(masteredDelay);
  digitalWrite(MAS_CLK,LOW);
  delay(masteredDelay);
} 

void tick() {
  setMastered(false);
  delayMicroseconds(runDelay);
  digitalWrite(EXT_CLK,HIGH);
  delayMicroseconds(runDelay);
  digitalWrite(EXT_CLK,LOW);
}

volatile boolean highCLK=false;
void toggleCLK() {
  if (highCLK) {
    PORTC&=B11110111;
  } else {
    PORTC|=B00001000;
  }
  highCLK=!highCLK;
}




void writeRAM(byte b) {
  setMastered(true);
  busWrite(true);
  setData(b);
  execStep(125,6);  //  BUS -> RAM
  busWrite(false);
}

void incMAR() {
  setMastered(true);
  busWrite(false);
  execStep(125,5);  // MAR++
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





