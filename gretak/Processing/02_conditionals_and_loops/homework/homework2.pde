int boxSizeX=10;
int boxSizeY=10;
int dydis=10;
void setup()
{
  size(500, 500);
  noFill();
  background(255);
  frameRate(10);
  
}
void draw()
{
  for (int boxSizeX=0; boxSizeX<width; boxSizeX=boxSizeX+10)
  {
    for (int boxSizeY=0; boxSizeY<height; boxSizeY=boxSizeY+10)
    {
      fill(random(0,255), random(0.255), random(0,255), (50));
      rect(boxSizeX, boxSizeY, 10, 10);
    }
  }
  
  if (mouseX>200 && mouseX<300 && mouseY>200 && mouseY<300)
  {
    fill(255);
    ellipse(width/2, height/2,dydis,dydis);
    dydis+=20;
    if (dydis>400)
    {ellipse(width/2, height/2,dydis,dydis);
    dydis-=20;}
    }
  }

  void keyPressed()
  {
    fill(0);
    ellipse(width/2, height/2,300,300);
    fill(255);
    ellipse(width/2,height/2,200,200);
    fill(0);
    text("HOMEWORK",220, height/2);
  }
  


