void setup ()
{
  size (600, 600);
  background (255);
} 

void draw ()
{
  float randX = random (-30, 30);
  float randY = random (-30, 30);
  float randRad = random(5,15);
  fill (random (0), random (0), random (0, 255), random (255)); 
  ellipse (mouseX+randX, mouseY+randY, randRad, randRad);
} 


