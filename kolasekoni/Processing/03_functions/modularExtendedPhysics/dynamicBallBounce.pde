int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;

void setup()
{
  size(500, 500);
  stroke(0);
  fill(175);
  smooth();
}

void draw()
{
  background(255);
  drawBall(circleX, circleY, 50);
  moveBall();
  bounceBall();
}

void drawBall(int x, int y, int d)
{
  ellipse(x, y, d, d);
  float wid = dist(mouseX, mouseY, x, y);
  if (wid <= d/2)
  {
    fill(0);
  }
}

void moveBall()
{
  circleX = circleX + stepX;
  circleY = circleY + stepY;
}

void bounceBall()
{
  if (circleX > width || circleX < 0)
  {
    stepX = stepX * -1;
    fill(255, 0, 0);
  }
  if (circleY > height || circleY < 0)
  {
    stepY = stepY * -1;
    fill(255, 0, 0);
  }
}

void keyPressed()
{
  if (key == 'f' || key == 'F')
  {
    if (stepX > 0) stepX = constrain(stepX + 1, 1, 10);
    else if (stepX < 0) stepX = constrain(stepX - 1, -10, -1);

    if (stepY > 0) stepY = constrain(stepY + 1, 1, 10);
    else if (stepY < 0) stepY = constrain(stepY - 1, -10, -1);
  } 
  else if (key == 's' || key == 'S' )
  {
    if (stepX > 0) stepX = constrain(stepX - 1, 1, 10);
    else if (stepX < 0) stepX = constrain(stepX + 1, -10, -1);

    if (stepY > 0) stepY = constrain(stepY - 1, 1, 10);
    else if (stepY < 0) stepY = constrain(stepY + 1, -10, -1);
  }
  //else
  //stepX = onstrain(stepX, -10, 10);
  //stepY = onstrain(stepY, -10, 10);
}


