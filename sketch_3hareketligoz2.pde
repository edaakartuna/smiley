int angle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 355;
float a = 0.0;
float s = 0.0;

void setup(){
  size(600,600);
  noStroke();
  smooth();
  frameRate(30);
}

void draw()
{
  a = a+ 0.04;
  s = cos(a)*2;
  
  fill(#F4FC1C);
  ellipse(300, 300, 300, 300);   //head
  fill(#79FFA9);


  ellipse(350, 270, 50, 90);    //eyes
  ellipse(255, 270, 50, 90);
  fill(0);
  
  angle += angleChange;
  if (angle > ANGLE_LIMIT || angle < 0)
  {
    angleChange = -angleChange;
    angle += angleChange;
  }
  
  pushMatrix();
  translate(255,270);
  scale(s-0.5);
  rotate(radians(angle));
  noStroke();
  ellipse(0, 0, 20, 60);
  popMatrix();
  
  pushMatrix();
  translate(350,270);
  scale(s+0.5);
  rotate(radians (angle-60));
  noStroke();
  ellipse(0, 0, 20, 60);
  popMatrix();
  
  
  fill(#3E4FFF);            //mouth
  arc(300, 350, 190, 100, 0, 3.14);
  
  fill(#79FFA9);          //teeth
  rect(345,350,10,6);
  rect(325,350,10,20);
  rect(306,350,10,16);
  rect(295,350,10,30);
  rect(280,350,10,10);
  rect(260,350,10,20); 
}
