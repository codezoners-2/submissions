int boxSizeX=20;
int boxSizeY=20;

void setup()
{
  size(500, 500);
  noFill();
  background(255);
}
void draw()
{
  for (int boxSizeX=0; boxSizeX<width; boxSizeX=boxSizeX+20)
  {
    for (int boxSizeY=0; boxSizeY<height; boxSizeY=boxSizeY+20)
    {
      float c = dist(boxSizeX, boxSizeY, mouseX, mouseY);
      fill(c);
      c = constrain (c,0,255);
      rect(boxSizeX, boxSizeY, 20, 20);
    }
  }
}

