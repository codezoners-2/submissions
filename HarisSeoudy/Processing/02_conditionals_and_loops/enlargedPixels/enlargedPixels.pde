int boxSize=20;
void setup ()
{
  size(500,500);
  background(255);
  stroke(0);
}

void draw ()
{
  for (int boxSizeX = 0; boxSizeX<width; boxSizeX=boxSizeX + 20)
{
    for (int boxSizeY = 0; boxSizeY<height; boxSizeY=boxSizeY +20)
    {
      float colour = dist(boxSizeX,boxSizeY,mouseX,mouseY);
      fill(colour);
      rect(boxSizeX,boxSizeY,boxSize,boxSize);
    }
} 

  }
 
