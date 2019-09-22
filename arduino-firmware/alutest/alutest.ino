

#define CLK 4
#define LOAD_A 5
#define RES_A 6
#define LOAD_B 7
#define RES_B 8
#define INV_B 9

#define CS 10
#define CC 11
#define FLAGW 12 

#define CARRY 22
#define OVERFLOW 24
#define ZERO 26
#define NEG 28

#define OP0 30
#define OP1 32
#define OE 34
#define FLOOR 36


int RESPINS[]={A0,A1,A2,A3,A4,A5,A6,A7};

int LOADPINS[]={A15,A14,A13,A12,A11,A10,A9,A8};

unsigned int expected=0;

void setup() {
  pinMode(CLK,OUTPUT);
  pinMode(LOAD_A,OUTPUT);
  pinMode(RES_A,OUTPUT);
  pinMode(LOAD_B,OUTPUT);
  pinMode(RES_B,OUTPUT);
  pinMode(INV_B,OUTPUT);

  pinMode(CC,OUTPUT);
  pinMode(CS,OUTPUT);
  pinMode(FLAGW,OUTPUT);

  pinMode(CARRY,INPUT);
  pinMode(OVERFLOW,INPUT);
  pinMode(ZERO,INPUT);
  pinMode(NEG,INPUT);

  pinMode(OP0,OUTPUT);
  pinMode(OP1,OUTPUT);
  pinMode(OE,OUTPUT);
  pinMode(FLOOR,OUTPUT);

  for (int i=0;i<8;i++) {
    pinMode(RESPINS[i],INPUT);
  }

  for (int i=0;i<8;i++) {
    pinMode(LOADPINS[i],OUTPUT);
  }
  
  Serial.begin(115200);
  digitalWrite(LOAD_A,HIGH);
  digitalWrite(LOAD_B,HIGH);
  digitalWrite(RES_A,LOW);
  digitalWrite(RES_B,LOW);
  digitalWrite(INV_B,HIGH);
  digitalWrite(OE,LOW);

  test();
}

void loop() {

}

void test() {
  for (unsigned int b=0;b<=255;b++) {
    for (unsigned int a=0;a<=255;a++) {
      byte result=add(a,b,false);
      byte expectedResult=a+b;
      Serial.print(a,HEX);
      Serial.print(" + ");
      Serial.print(b,HEX);
      Serial.print(" = ");
      Serial.print(result,HEX);
      Serial.print(", carry=");
      Serial.println(digitalRead(CARRY));
      if (result!=expectedResult) {
        Serial.println("ERROR!!!!!!");
      }
      Serial.println();
    }
  }
  
}

byte add(byte a, byte b, bool carry) {
  digitalWrite(FLAGW,LOW);
  setCarry(carry);
  loadA(a);
  loadB(b);
  invB(false);
  digitalWrite(FLOOR,LOW);
  digitalWrite(FLAGW,HIGH);
  digitalWrite(OE,LOW);
  byte result=getbus();
  tick();
  return result;
}

void setCarry(bool carry) {
  if (carry) {
    digitalWrite(CS,true);
    digitalWrite(CC,false);
    tick();
  } else {
    digitalWrite(CC,true);
    digitalWrite(CS,false);
    tick();    
  }
  digitalWrite(CC,false);
  digitalWrite(CS,false);
}

void isCarry() {
  return digitalRead(CARRY);
}

void loadA(byte busval) {
  digitalWrite(LOAD_A,false);
  setbus(busval);
  tick();
  digitalWrite(LOAD_A,true);
}

void loadB(byte busval) {
  digitalWrite(LOAD_B,false);
  setbus(busval);
  tick();
  digitalWrite(LOAD_B,true);
}

void invB(boolean inv) {
  digitalWrite(INV_B,inv);
}

void setbus(byte val) {
  for (int i=0;i<8;i++) {
    digitalWrite(LOADPINS[i],((val >> i)&1) ==1);
  }
}

byte getbus() {
  byte b=0;
  for (int i=0;i<8;i++) {
    b=(b<<1)+digitalRead(RESPINS[i]);
  }
  return b;
}

void tick() {
  delay(1);
  digitalWrite(CLK,HIGH);
  delay(1);
  digitalWrite(CLK,LOW);
  delay(1);
}





