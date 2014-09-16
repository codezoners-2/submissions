void setup()
{
  size (600, 600);
  background (255);
  noStroke();
}

void draw()
{
  float randX = (random (-30, 30));
  float randY = (random (-30, 30));
  float randomSize = (random(5, 15));
  fill(0,0,random (0,255),random(0,255));
  ellipse (mouseX+randX, mouseY+randY,randomSize, randomSize);
}

