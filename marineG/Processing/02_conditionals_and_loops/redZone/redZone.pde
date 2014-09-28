int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;
int circleW= 15;
int circleH=15;


void setup()
{
  size(300, 300);
  stroke(0);
  //fill(175);
  smooth();
}

void draw()
{
  int a=(width/2-75);
  int b=(height/2-75);
  int w=150;
  int h=150;
  background(255);
  noFill();
  rect(a, b, w, h);
  if (circleX>= a && circleY>b && circleX<a+w && circleY<b+h)
  {
    fill (255, 0, 0);
  }

  ellipse(circleX, circleY, circleW, circleH);
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


}

