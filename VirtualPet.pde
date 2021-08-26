import processing.serial.*;







public void setup(){
size(400,400);
background(100,100,255);
}
public void draw(){
int y=0;
int heightChange = y;

background(255,0,0,20);
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
