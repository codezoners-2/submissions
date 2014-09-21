void setup()
{
  size(600,600);
  background(255);
  noStroke();
}
void draw()
{
  float randX = int (random(-30,30));
  float randY = int (random(-30,30));
  float randomSize = int (random(5,15));
  int randomFill = int (random(0,255));
  int randomTrans = int (random(0,255));
  fill(0,0,randomFill, randomTrans );
  ellipse(mouseX+randX, mouseY+randY,randomSize,randomSize);
}
