//#define DS A7
#define DS 4


#define SHIFT_CL 3
#define LATCH 2


//#define OE_SHIFTREG A6
#define OE_SHIFTREG 5


#define WE 8
#define OE 9
#define CE 10

#define PIN_BUSY 7
#define PIN_ERROR 6

int bitPin[8]={A5,A4,A3,12,11,A0,A1,A2};

byte data[256];

#define MAX_BUF 256

#define ADDRESS_BITS 13

boolean bitOrderFlipped;
long cpos=0;
char buffer[MAX_BUF];
char buffer2[MAX_BUF];
bool commandComplete=false;
volatile boolean failed=false;

void setup() {
  pinMode(A6,INPUT);
  pinMode(A7,INPUT);
  pinMode(PIN_BUSY,OUTPUT);
  pinMode(PIN_ERROR,OUTPUT);
  digitalWrite(WE, HIGH);
  digitalWrite(OE, HIGH);
  digitalWrite(CE,HIGH);
  digitalWrite(OE_SHIFTREG,HIGH);
  dataReadMode();

  pinMode(DS,OUTPUT);
  pinMode(SHIFT_CL,OUTPUT);
  pinMode(LATCH,OUTPUT);
  pinMode(OE_SHIFTREG,OUTPUT);

  pinMode(WE,OUTPUT);
  pinMode(OE,OUTPUT); 
  pinMode(CE,OUTPUT); 
  bitOrderFlipped=false;

  Serial.begin(115200);
  Serial.println("EEPROM AT28C16 Writer/Reader");
  Serial.println();
  Serial.println("Usage (examples):");
  Serial.println("r 02af 0100                   // Reads 0x0100 (256) bytes, starting at address 02af");
  Serial.println("w 02af 12 34 23 1a a0         // Writes the byte values 12 34 23... into memory, starting at address 02af");
  Serial.println("f                             // Flip address/data bit order");
  Serial.println();
  Serial.println(">");
  delay(100);
/*
  boolean success=writeData(data,0,8);
  if(success) {
    Serial.println("Write successful");
  } else {
    Serial.println("Write failed!!!");
  }
  readData(0,8);
  */
}



void setAddress(int address) {
  if (bitOrderFlipped) {
    address<<=(16-ADDRESS_BITS);
    shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)address & 0xff));
    shiftOut(DS, SHIFT_CL, LSBFIRST, ((byte)(address>>8) & 0xff));
  } else {
    shiftOut(DS, SHIFT_CL, MSBFIRST, ((byte)(address>>8) & 0xff));
    shiftOut(DS, SHIFT_CL, MSBFIRST, ((byte)address & 0xff));
  }
  digitalWrite(LATCH,LOW);
  digitalWrite(LATCH,HIGH);
}

void readData(int startAddress, int length) {
  digitalWrite(WE,HIGH);
  dataReadMode();
  digitalWrite(CE,LOW);
  digitalWrite(OE,LOW);
  digitalWrite(OE_SHIFTREG,LOW);
  delayMicroseconds(10);
  for (int i=0;i<length;i++) {
    int addr=startAddress+i;
    setAddress(addr);
    if (i % 16 == 0) {
      Serial.println();
      printHex(addr,4);
    }
    Serial.print(" ");
    printHex(getByteFromRead(),2);
  }
  Serial.println();
  digitalWrite(OE,HIGH);
  digitalWrite(CE,HIGH);
  digitalWrite(OE_SHIFTREG,HIGH);
  digitalWrite(WE,HIGH);
}

boolean writeData(byte* data, int startAddress, int length) {
  digitalWrite(WE,HIGH);
  digitalWrite(CE,LOW);
  digitalWrite(OE,HIGH);
  dataWriteMode();
  digitalWrite(OE_SHIFTREG,LOW);
  delayMicroseconds(10);
  for (int i=0;i<length;i++) {
    setAddress(startAddress+i);
    setByteToWrite(data[i]);
    delayMicroseconds(20);
    digitalWrite(WE,LOW);
    delayMicroseconds(10);
    digitalWrite(WE,HIGH);
    delay(7);
  }
  delay(2);
  dataReadMode();
  digitalWrite(OE,HIGH);
  digitalWrite(CE,HIGH);
  digitalWrite(OE_SHIFTREG,HIGH);
  digitalWrite(WE,HIGH);
  return verifyData(data,startAddress, length);
}

boolean verifyData(byte* data, int startAddress, int length) {
  boolean ok=true;
  digitalWrite(WE,HIGH);
  dataReadMode();
  digitalWrite(CE,LOW);
  digitalWrite(OE,LOW);
  digitalWrite(OE_SHIFTREG,LOW);
  delayMicroseconds(10);
  for (int i=0;i<length;i++) {
    setAddress(startAddress+i);
    byte actual=getByteFromRead();
    if (actual!=data[i]) {
      ok=false;
    }
  }
  digitalWrite(OE,HIGH);
  digitalWrite(CE,HIGH);
  digitalWrite(OE_SHIFTREG,HIGH);
  digitalWrite(WE,HIGH);
  failed=failed | !ok;
  return ok;
}







void dataReadMode() {
  for (int i=0;i<8;i++) {
    pinMode(bitPin[i],INPUT);
  }
}

byte getByteFromRead() {
  byte b=0;
  for (int i=0;i<8;i++) {
    b<<=1;
    int index=bitOrderFlipped ? i : (7-i);
    b|=digitalRead(bitPin[index]);
  }
  return b;
}

void dataWriteMode() {
  for (int i=0;i<8;i++) {
    pinMode(bitPin[i],OUTPUT);
  }
}

void setByteToWrite(byte b) {
  for (int i=0;i<8;i++) {
    int index=bitOrderFlipped ? (7-i) : i;
    digitalWrite(bitPin[index],(b & 0x01) == 1);
    b>>=1;
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



void loop() {
  if (commandComplete) {
    digitalWrite(PIN_BUSY,HIGH);
    processCommand();
    digitalWrite(PIN_BUSY,LOW);
    cpos=0;
    commandComplete=false;
  }
    digitalWrite(PIN_ERROR,failed);
}

void processCommand() {
  if (buffer[0]=='w' || buffer[0]=='W') {
    processWrite();
  } else if (buffer[0]=='r' || buffer[0]=='R') {
    processRead();
  } else if (buffer[0]=='f' || buffer[0]=='F') {
    bitOrderFlipped=!bitOrderFlipped;
    Serial.print("AddressBitOrderFlipped=");
    Serial.println(bitOrderFlipped?"true":"false");    
  }
  Serial.println(">");
}

void processWrite() {
  Serial.println(buffer);
  int p=1;
  while (buffer[p]==' ') {
    p++;
  }
  if (buffer[p]==0) {
    return;
  }
  long startAddress=getHex(&buffer[p],4);
  if (startAddress==-1) {
    Serial.println("Illegal address");
    return;
  }
  p+=4;
  
  byte last=0;
  int dpos=0;
  while(buffer[p]!=0 && last!=-1) {
    while (buffer[p]==' ') {
      p++;
    }
    last=getHex(&buffer[p],2);
    p+=2;
    if (last==-1) {
      break;
    }
    
    data[dpos]=(byte)last;
    dpos++;
  } 
  Serial.print("Writing ");
  Serial.print(dpos);
  Serial.print(" bytes, starting at address ");
  Serial.print(startAddress);
  Serial.print("...");
  boolean success=writeData(data,startAddress, dpos);
  if(success) {
    Serial.println("successful");
  } else {
    Serial.println("failed!");
  }
}

void processRead() {
  Serial.println(buffer);
  int p=1;
  while (buffer[p]==' ') {
    p++;
  }
  if (buffer[p]==0) {
    return;
  }
  long startAddress=getHex(&buffer[p],4);
  p+=4;
    while (buffer[p]==' ') {
    p++;
  }
  if (buffer[p]==0) {
    return;
  }
  long length=getHex(&buffer[p],4);
  p+=4;
  if (startAddress==-1 || length==-1) {
    Serial.println("Wrong address or length, use 4 digit hex for both");
    return;
  }
  readData(startAddress, length);
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


