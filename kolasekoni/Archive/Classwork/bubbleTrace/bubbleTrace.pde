void setup()
{
  size(600, 600);
  background(255);
  //noStroke();
}
void draw()
{
  //fill(random(255), random(255), random(255), random(255));
  int randX = int(random(-30, 30));
  int randY = int(random(-30, 30)); 
  int randomSize = int(random(5, 15));
  fill(0,0,random(255),random(255));
  ellipse(mouseX+randX, mouseY+randY, randomSize, randomSize);
}


