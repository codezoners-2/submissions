int circleX=25;
int circleY=150;
int stepX = 5;
int stepY = 5;
int diam = 10;
void setup()
{
  size(300, 300);
  stroke(0);
  fill(175);
  smooth();
}

void draw()
{
  background(255);
  ellipse (circleX, circleY, diam, diam);
  circleX=circleX+stepX;
  circleY=circleY+stepY;

  if (circleX>=300 || circleX<=0) 
  {
    stepX=stepX*-1;
    fill(random(0, 255), random(0, 255), random(0, 255));
    diam = diam + 10;
    circleX=circleX+stepX;
  }

  if (circleY>=300 || circleY<= 0)
  {
    stepY=stepY*-1;
    fill(random(0, 255), random(0, 255), random(0, 255));
    diam = diam + 10;
  }
}

