int boxSize = 20;
int rectX = 0;
int rectY = 0;
int space = 20;

void setup()
{
  size(800, 600);
  background (255);
  stroke(0);
}

void draw()
{
  for (int rectX=0; rectX<width; rectX = rectX + space)
  {
    for (int rectY=0; rectY<height; rectY = rectY + space)
    {
      float col = constrain(dist(rectX, rectY, mouseX, mouseY),0,255);
      fill(col);
      rect(rectX, rectY, boxSize, boxSize);
    }
  }
}


