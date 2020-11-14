#include <SoftwareSerial.h> 

SoftwareSerial MyBlue(0, 1);

int flag = 0; 
int trigPin = 7;
int echoPin = 6;
int var = 0;
int one = 4;
int two = 5;
int three = A4;
char junk;
String inputString = "";
int i = 0;
int bar = 0;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
MyBlue.begin(9600); 
pinMode( trigPin, OUTPUT);
pinMode( echoPin, INPUT);


pinMode( two, INPUT);
pinMode( three, INPUT);

}

void loop() {
  // put your main code here, to run repeatedly:



long duration, distance;
digitalWrite(trigPin, LOW);
delay(200);
digitalWrite(trigPin, HIGH);
delay(100);
digitalWrite(trigPin, LOW);
duration = pulseIn(echoPin, HIGH);
distance= (duration/29/2);
var = digitalRead(two);
bar = digitalRead(three);
delay(10);
if (distance <= 5) {
  Serial.println("c");
}

else if (distance <= 15 && distance >= 10) {
  Serial.println("p");
}

else if (distance <= 25   && distance >= 20) {
  Serial.println("b");
}

else {
  Serial.println("n");
}

if (var == 1 && bar == 0) {
  if (distance <= 5) {
  Serial.println("a");
}

  if (distance <= 15 && distance >= 10) {
  Serial.println("d");
}

  if (distance <= 25   && distance >= 20) {
  Serial.println("e");
}

  
}

if (var == 0 && bar == 0) {
  if (distance <= 5) {
  Serial.println("s");
  delay(5000);
  Serial.println("g");
  delay(1000);
  Serial.println("u");
 
}

  if (distance <= 15 && distance >= 10) {
  Serial.println("q");
   delay(5000);
  Serial.println("h");
  delay(1000);
  Serial.println("u");
}

  if (distance <= 25   && distance >= 20) {
  Serial.println("z");
   delay(5000);
  Serial.println("j");
  delay(1000);
  Serial.println("u");
  
  
}

  
}

  
  
}
