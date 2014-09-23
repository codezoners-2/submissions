int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 2;
int x = 50;
 int y = 50;
 int w = 200;
void setup()
{
  size(300, 300);
  stroke(0);
  smooth();
 
}

void draw()
{
  background(255);
  fill(255);
  rect(x, y, w, 200);

  if (circleX > x && circleX< x+w && circleY > y && circleY <y+w)
  {
    fill(255, 0, 0);
  } else
  {
    fill(125);
  }

  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + stepX;
  circleY = circleY + stepY;

  if (circleX > width || circleX < 0)
  {
    stepX = stepX * -1;
  } else if (circleY > height || circleY <0)
  {
    stepY = stepY * -1;
  }
}

