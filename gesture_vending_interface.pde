//PREM KUMAR R - TEAM REFLOW
//written for HAC-SAC 1.0 Round 2
//Gesture based Interfaces for Vending Machines


import processing.serial.*;
Serial myPort;
String val;
char input;
PFont f;
PImage coke;
PImage pepsi;
PImage bang;
PImage qrcode;
PImage paid;
int xpos = -100;
 



void setup() {
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName,  9600);
  size(1200,680);
  background(255, 255, 255);
  f = createFont("Arial", 30, true);
  coke = loadImage("coke.jpeg");
  pepsi = loadImage("pepsi.jpg");
  bang = loadImage("bang.jpeg");
  qrcode = loadImage("qrcode.jpg");
  paid = loadImage("paid.png");
  
}


void draw() {
  textFont(f, 30);
  fill(50);
  
  text("CHOOSE DRINK ?", 250,80);
  text("SCAN QR TO PAY", 800, 80);
  fill(255,255,255);
  rect(40, 450, 150, 200);
  fill(50);
  text("Selected :", 50, 500);
  text("Volume   :", 50, 550);
  text("Price       :", 50, 600);
  
  image(coke, 60, 120, 200, 200);
  image(pepsi, 260, 135, 180, 180);
  image(bang, 460, 120, 210, 210);
 
  
  if ( myPort.available() > 0) {
   val = myPort.readStringUntil('\n'); 
    
  }
  
  if ( val != null ) {
   input = val.charAt(0);
    if (input == 'c') {
      fill(57,242,24);
      rect(125, 350, 65, 15);
      fill(255,255,255);
      rect(315, 350, 65, 15);
      rect(530, 350, 65, 15);
      
    }
    
     else if (input == 'p') {
     
      fill(57,242,24);
      rect(315, 350, 65, 15);
      fill(255,255,255);
      rect(125, 350, 65, 15);
      rect(530, 350, 65, 15);
      
    }
    
     else if (input == 'b') {
      
        fill(57,242,24);
        rect(530, 350, 65, 15);
        fill(255,255,255);
        rect(125, 350, 65, 15);
        rect(315, 350, 65, 15);
       
    }
    
    else if (input == 'n') {
       xpos = -100;
       
    }
    
    else if (input == 'a') {
       
       fill(255,255,255);
       noStroke();
       rect(200,450, 500, 200);
       fill(0,0,0);
       text("COKE", 250,500);
       text("200ml", 250,550);
       text("₹60", 250,600);
       
    }
    
    else if (input == 'd') {
       fill(255,255,255);
        noStroke();
       rect(200,450, 500, 200);
       fill(0,0,0);
       text("PEPSI", 250,500);
       text("160ml", 250,550);
       text("₹55", 250,600);
       
    }
    
    else if (input == 'e') {
       fill(255,255,255);
        noStroke();
       rect(200,450, 500, 200);
       fill(0,0,0);
       text("BANG", 250,500);
       text("220ml", 250,550);
       text("₹85", 250,600);
    }
    
 
    
    else if (input == 's') {
       
       image(qrcode, 800, 130, 250, 250);
       
       
    }
    
    else if (input == 'q') {
       image(qrcode, 800, 130, 250, 250);
       
    }
    
    else if (input == 'z') {
       image(qrcode, 800, 130, 250, 250);
       
       
       
    }
    
    else if (input == 'g') {
       image(paid, 800, 130, 250, 250);
       
      
    }
    
    else if (input == 'h') {
       image(paid, 800, 130, 250, 250);
       
       fill(255,255,255);
       rect(800, 130, 250, 250);
    }
    
    else if (input == 'j') {
       image(paid, 800, 130, 250, 250);
       fill(255,255,255);
       rect(800, 130, 250, 250);
    }
    
    else if (input == 'j') {
       image(paid, 800, 130, 250, 250);
       fill(255,255,255);
       rect(800, 130, 250, 250);
    }
    
    else if (input == 'u') {
       
       fill(255,255,255);
       rect(800, 130, 250, 250);
    }
    
  }
  
  print(val);
  
  
  
  
  
  
  
}
