void setup()
{
  size(500,500);
  noStroke();
}
void draw()
{
  noStroke();
  //water
  fill (0,150,255);
  rect(0,400,500,100);
  
  //body
  fill (250,190,0);
  arc(250,250,300,300,0,PI/0.85);
  rect(250,200,150,50);
  ellipse(325,200,150,150);
  
  //eye
  fill (0,0,0);
  ellipse(350,200,20,20);
  
  //bill
  fill (250,160,0);
  rect(400,200,20,30);
  ellipse(420,215,30,30);
  stroke(0,0,0);
  line(435,215,410,215);
  
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
