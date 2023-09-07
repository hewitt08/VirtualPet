import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
  
public void draw()
{
  background(50,180,50);
  noStroke();
  //water
  int waterY = arduino.analogRead(5);
  fill (0,150,255);
  if (waterY < 380){
    rect(0,(waterY),500,(500-waterY));
  } else {
    rect(0,380,500,120);
  }
  
  //bill
  fill (250,160,0);
  int mic = arduino.analogRead(4);
  System.out.println(mic);
  int billY = mic/20;
  if (mic < 150){
    rect(400,200,20,30);
    ellipse(420,215,30,30);
    stroke(0,0,0);
    line(435,215,410,215);
  }
  else{
    rect(400,215,20,15);
    arc(420,215,30,30,0,HALF_PI);
    rect(380,200-billY,40,15);
    arc(420,215-billY,30,30,1.5*PI,TWO_PI);
  }
  
  //body
  noStroke();
  fill (250,190,0);
  arc(250,250,300,300,0,PI/0.85);
  rect(250,200,150,50);
  ellipse(325,200,150,150);
  
  //eye
  fill (0,0,0);
  ellipse(350,200,20,20);
  
  //wing
  noStroke();
  fill(250,200,0);
  ellipse(270,320,60,60);
  triangle(240,330,270,290,210,280);
  triangle(247,340,270,290,210,300);
  
  //hat
  fill(0,0,0);
  rect(250,130,150,10);
  rect(290,50,70,90);
}
