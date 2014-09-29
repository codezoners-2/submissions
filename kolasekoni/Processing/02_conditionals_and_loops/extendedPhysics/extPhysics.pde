int circleX = 25;
int circleY = 100;
int stepX = 5;
int stepY = 5;
int diam = 35;
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
  ellipse(circleX, circleY, diam, diam);
  circleX = circleX + stepX;
  circleY= circleY + stepY;
  if (circleX >= width - diam/2 || circleX <= diam/2)
  {
    fill(255, 0, 0);
    stepX= stepX * -1;
  }
  if (circleY >= height-diam/2 || circleY <= diam/2)
  {
    fill(0, 0, 255);
    stepY=stepY * -1;
  }
}


