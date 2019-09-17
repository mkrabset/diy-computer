

#define CNT 28
#define CLK 7
#define LOAD_L 24
#define LOAD_H 22
#define LOAD_O 30

int AL[]={A0,A1,A2,A3,A4,A5,A6,A7};

unsigned int expected=0;

void setup() {
  pinMode(CNT,OUTPUT);
  pinMode(CLK,OUTPUT);
  pinMode(LOAD_L,OUTPUT);
  pinMode(LOAD_H,OUTPUT);
  pinMode(LOAD_O,OUTPUT);

  for (int i=0;i<8;i++) {
    pinMode(AL[i],OUTPUT);
  }
  Serial.begin(115200);

  test();
}

void loop() {
  tick();
}

void test() {
  load16(0x2348);
  cnt(true);
}

void load16(unsigned int val) {
  load(false,true, val >>8);
  load(true,false, val);
}

void load(bool h, bool l, byte busval) {
  digitalWrite(LOAD_H,h);
  digitalWrite(LOAD_L,l);
  setbus(busval);
  tick();
  delay(100);
  digitalWrite(LOAD_H,true);
  digitalWrite(LOAD_L,true);
}

void cnt(bool enable) {
  digitalWrite(CNT,enable);
}

void tick() {
  digitalWrite(CLK,HIGH);
  delay(1);
  digitalWrite(CLK,LOW);
  delay(1);
}

void load_offset(byte b) {
  digitalWrite(LOAD_L,LOW);  // active low
  digitalWrite(LOAD_H,HIGH);
  setbus(b);
  tick();
}

void setbus(byte val) {
  for (int i=0;i<8;i++) {
    digitalWrite(AL[i],((val >> i)&1) ==1);
  }
}



