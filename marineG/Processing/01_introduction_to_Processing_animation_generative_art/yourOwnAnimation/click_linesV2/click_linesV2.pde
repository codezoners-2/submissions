float lineX;
float lineY;
float lineA;
float lineB;

void setup ()
{
  size (400, 400);
  stroke(3);
  background(255);
}
void draw()
{
}

void mouseClicked() 
{
 //background(255);
  lineX= mouseX ;
  lineY= mouseY;
  lineA=random(0, height);
  lineB=random(width, 0);
  stroke (random(0, 255), random(0, 255), random(0, 255));
  line (lineX, 0, lineX, lineY);
  stroke (random(0, 255), random(0, 255), random(0, 255));
  line (lineX, lineY, lineB, lineA);
  stroke (random(0, 255), random(0, 255), random(0, 255));
  line (lineX, lineY, lineA, lineB);
}

void keyPressed()
{
  background (255);
}

