#define COND0 4
#define COND1 5
#define COND2 6
#define COND3 7

#define FLAG0 8
#define FLAG1 9
#define FLAG2 10
#define FLAG3 11

#define CNT 24
#define RES 22
#define CLK 26
#define LOAD_L 30
#define LOAD_H 32

#define COND_NOJMP 0x00
#define COND_EQ 0x01
#define COND_NE 0x02
#define COND_CS 0x03
#define COND_CC 0x04
#define COND_MI 0x05
#define COND_PL 0x06
#define COND_VS 0x07
#define COND_VC 0x08
#define COND_HI 0x09
#define COND_LS 0x0a
#define COND_GE 0x0b
#define COND_LT 0x0c
#define COND_GT 0x0d
#define COND_LE 0x0e
#define COND_UNCOND 0x0f


int AL[]={A0,A1,A2,A3,A4,A5,A6,A7};

unsigned int expected=0;

void setup() {
  pinMode(CNT,OUTPUT);
  pinMode(RES,OUTPUT);
  pinMode(CLK,OUTPUT);
  pinMode(LOAD_L,OUTPUT);
  pinMode(LOAD_H,OUTPUT);

  pinMode(COND0,OUTPUT);
  pinMode(COND1,OUTPUT);
  pinMode(COND2,OUTPUT);
  pinMode(COND3,OUTPUT);

  pinMode(FLAG0,OUTPUT);
  pinMode(FLAG1,OUTPUT);
  pinMode(FLAG2,OUTPUT);
  pinMode(FLAG3,OUTPUT);

  for (int i=0;i<8;i++) {
    pinMode(AL[i],OUTPUT);
  }
  Serial.begin(115200);

  cnt(false);
  
  digitalWrite(RES,LOW);
  tick();
  digitalWrite(RES,HIGH);

  setFlags(0,0,1,0);
  setCond(COND_CS);

  test();
}

void loop() {
}

void test() {
  delay(1000);
  for (unsigned int i=0;i<0xffff;i++) {
    load(i);
    tick();
  }
}

void cnt(bool enable) {
  digitalWrite(CNT,enable);
}

void setFlags(bool z,bool n,bool c,bool v) {
  digitalWrite(FLAG0,z);
  digitalWrite(FLAG1,n);
  digitalWrite(FLAG2,c);
  digitalWrite(FLAG3,v);
}

void setCond(byte cond) {
  digitalWrite(COND0,(cond & 1) == 0);  // Active low
  digitalWrite(COND1,(cond & 2) == 0);
  digitalWrite(COND2,(cond & 4) == 0);
  digitalWrite(COND3,(cond & 8) == 0);
}


void tick() {
  digitalWrite(CLK,HIGH);
  delay(1);
  digitalWrite(CLK,LOW);
  delay(1);
}

void load(unsigned int val) {
  digitalWrite(LOAD_L,LOW);  // active low
  digitalWrite(LOAD_H,HIGH);
  setbus(val);
  tick();
  digitalWrite(LOAD_L,HIGH);
  digitalWrite(LOAD_H,LOW);
  setbus(val >> 8);
  tick();
}

void setbus(unsigned int val) {
  for (int i=0;i<8;i++) {
    digitalWrite(AL[i],((val >> i)&1) ==1);
  }
}



