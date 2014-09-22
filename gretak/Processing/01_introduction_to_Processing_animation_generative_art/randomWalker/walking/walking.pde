float lastLockX;
float lastLockY;

void setup()
{
  size(500,500);
  background(0);
  stroke(255);
  lastLockX=(width/2);
  lastLockY=(height/2);
}
void draw()
{

float stepX=lastLockX - random(-10,10);
float stepY=lastLockY - random(-10,10);
 
line(lastLockX, lastLockY, stepX,stepY);
lastLockX=stepX;
lastLockY=stepY;
}


