/*** OUTPUTS ***/
// input a
#define a0 2
#define a1 3
#define a2 4
#define a3 5

// input b
#define b0 6
#define b1 7
#define b2 8
#define b3 9

// Function select
#define s0 11
#define s1 12
#define s2 13
#define s3 A0

/*** INPUTS ***/
// Result output
#define f0 A2
#define f1 A3
#define f2 A4
#define f3 A5

// Carry out
#define cout 10  // A6 funker ikke som input

// Equals out
#define AEQB A1  // A7 funker ikke som input


void setup() {
  Serial.begin(115200);

  // OUTPUT PINS
  pinMode(a0,OUTPUT);
  pinMode(a1,OUTPUT);
  pinMode(a2,OUTPUT);
  pinMode(a3,OUTPUT);

  pinMode(b0,OUTPUT);
  pinMode(b1,OUTPUT);
  pinMode(b2,OUTPUT);
  pinMode(b3,OUTPUT);


  pinMode(s0,OUTPUT);
  pinMode(s1,OUTPUT);
  pinMode(s2,OUTPUT);
  pinMode(s3,OUTPUT);

  // INPUT PINS
  pinMode(f0,INPUT);
  pinMode(f1,INPUT);
  pinMode(f2,INPUT);
  pinMode(f3,INPUT);
  
  pinMode(cout,INPUT);
  
  pinMode(AEQB,INPUT);

  //testSigned();
  testUnsigned();
}

void testSigned() {
  for (int a=-8;a<=7;a++) {
    for (int b=-8;b<=7;b++) {
      //testAddSigned(a,b);
      testAddSigned(a,b);
    }
  }
}

void testUnsigned() {
  for (int a=0;a<16;a++) {
    for (int b=0;b<16;b++) {
      testAddUnsigned(a,b);
    }
  }
}


// Requires MODE=LOW (arithmetic), CIN=HIGH (for no carry, since carry is inverted)
void testAddSigned(int a, int b) {
  setA(a);
  setB(b);
  setFunction(0B1001);
  delay(1);
  int result=getResult(true);
  Serial.print(a);
  Serial.print(" + ");
  Serial.print(b);
  Serial.print(" = ");
  Serial.print(result);
  Serial.print("   ");
  Serial.print("COUT=");
  bool carryOut=getCout();
  Serial.print(carryOut);
  Serial.print(", EQ=");
  Serial.print(getEquals());
  Serial.print(",   ");
  bool correctResult=(result==a+b);
  if (correctResult) {
    Serial.print("CORRECT  ");
  } else {
    Serial.print("WRONG!   ");
  }
  bool a_msb=((a&8)==8);
  bool b_msb=((b&8)==8);
  bool r_msb=((result&8)==8);
  bool overflow=!(a_msb ^ b_msb) & (a_msb ^ r_msb);
  if (overflow) {
    Serial.println("overflow!");
  } else {
    Serial.println();
  }
  if (correctResult==overflow) {
    Serial.println("ERROR!!!!");
  }
}


// Requires MODE=LOW (arithmetic), CIN=HIGH (for no carry, since carry is inverted)
void testAddUnsigned(int a, int b) {
  setA(a);
  setB(b);
  setFunction(0B1001);
  delay(1);
  int result=getResult(false);
  Serial.print(a);
  Serial.print(" + ");
  Serial.print(b);
  Serial.print(" = ");
  bool carryOut=getCout();
  Serial.print(result);
  if (!carryOut) {
    Serial.print("(+16)");
  }
  Serial.print("   ");
  Serial.print("COUT=");
  Serial.print(carryOut);
  Serial.print(", EQ=");
  Serial.print(getEquals());
  Serial.print(",   ");
  int cval=carryOut?0:16;
  bool correctResult=(result+cval==a+b);
  if (correctResult) {
    Serial.println("CORRECT  ");
  } else {
    Serial.println("WRONG!   ");
  }
}



void setA(int val) {
  digitalWrite(a0,(val & 1)==1);
  digitalWrite(a1,(val & 2)==2);
  digitalWrite(a2,(val & 4)==4);
  digitalWrite(a3,(val & 8)==8);
}

void setB(int val) {
  digitalWrite(b0,(val & 1)==1);
  digitalWrite(b1,(val & 2)==2);
  digitalWrite(b2,(val & 4)==4);
  digitalWrite(b3,(val & 8)==8);
}

void setFunction(int val) {
  digitalWrite(s0,(val & 1)==1);
  digitalWrite(s1,(val & 2)==2);
  digitalWrite(s2,(val & 4)==4);
  digitalWrite(s3,(val & 8)==8);
}

bool getCout() {
  return digitalRead(cout);
}

bool getEquals() {
  return digitalRead(AEQB);
}

int getResult(bool asSigned) {
  int result=digitalRead(f3);
  if (result==1 && asSigned) {
    result=-1;
  }
  result<<=1;
  result|=digitalRead(f2);  
  result<<=1;
  result|=digitalRead(f1); 
  result<<=1;
  result|=digitalRead(f0);
  return result;  
}

void loop() {
  
}

