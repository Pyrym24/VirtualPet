import processing.serial.*;
import cc.arduino.*;
Arduino arduino;



public void setup(){
size(400,400);
background(100,100,255);
 arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
public void draw(){
  handDistance();
  int y = arduino.analogRead(5);
  System.out.println(y);
int heightChange = y;
if(y<300){
background(255,0,0,20);
}else{
background(100,100,255);
}
if(y>400){
    text("IM BURNING!",200,200);
  }
fill(190,190,190);
arc(200,200 + heightChange,400,400,PI,2*PI);
rect(0,200+ heightChange,400,200);
line(0,250,400,250);
ellipse(100,100 + heightChange,50,50);
ellipse(300,100+ heightChange,50,50);
fill(255,0,0);
ellipse(100,100 + heightChange,25,25);
ellipse(300,100 + heightChange,25,25);
fill(190,190,190);
arc(200,200 + heightChange,150,300,0,PI);
arc(200,200 + heightChange,100,350,0,PI);
rect(0,250,400,150);
ellipse(0,250,25,100);
ellipse(25,250,25,100);
ellipse(50,250,25,100);
ellipse(400,250,25,100);
ellipse(375,250,25,100);
ellipse(350,250,25,100);
fill(255,255,255);
textSize(24);
text("watcha doin",25,375);
}
void handDistance(){
  int y = arduino.analogRead(5);
  if(y <=300){
    arduino.digitalWrite(13,1);
  }else{
    arduino.digitalWrite(13,0);
  }
}
