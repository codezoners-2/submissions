int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;

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
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + stepX;
  circleY = circleY + stepY;
  
  if (circleX > width || circleX < 0)
  {
    stepX = stepX * -1;    
  }
  
  if (circleY > height || circleY < 0)
  {
    stepY = stepY * -1;
  }
  
  noFill();
  rect(75,75,150,150);
  
  if (circleX>75 && circleX<=225 && circleY>75 && circleY<225)
  {
    fill(255,0,0);
     ellipse(circleX, circleY, 15, 15);
  }
  else
  {
    fill(150);
     ellipse(circleX, circleY, 15, 15);
  }
  
}
