void setup()
{
 size(400,400); 
 noStroke();
}

void draw()
{
  int randomColour1 = int (random(0,255));
  int randomColour2 = int (random(0,255));
  int randomColour3 = int (random(0,255));
  int randomTrans = int (random(0,255));
  
  int randomLocationX = int (random(0,400));
  int randomLocationY = int (random(0,400));
  fill(randomColour1, randomColour2, randomColour3, randomTrans);
  ellipse(randomLocationX,randomLocationY , 30,30);
}
