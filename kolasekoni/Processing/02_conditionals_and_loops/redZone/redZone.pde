int circleX = 25;
int circleY = 150;
int stepX = 3;
int stepY = 3;
int diam = 20;


void setup()
{
  size(500, 500);
  stroke(0);
  fill(255);
  smooth();
}

void draw()
{
  background(255);
  int startX = width/3;
  int startY = height/3;
  int rectW = startX;
  int rectH = startY;
  fill(255);
  rect(startX, startY, rectW, rectH);

  if (circleX >= startX && circleX < startX+rectW && circleY >= startY && circleY < startY+rectH)
  {

    fill(255, 0, 0);
    ellipse(circleX, circleY, diam, diam);
    circleX = circleX + stepX;
    circleY = circleY + stepY;
  } else
  {
    fill(255);
    ellipse(circleX, circleY, diam, diam);
    circleX = circleX + stepX;
    circleY = circleY + stepY;
  }


  if (circleX > width || circleX < 0)
  {
    stepX = stepX * -1;
  }
  if (circleY > height || circleY < 0)
  {
    stepY = stepY * -1;
  }
}


