void setup()
{
  size(600,600);
  noLoop();
}

void draw()
{
  background(255);
  stroke(0);
  noFill();
  fill(255);
  drawCircle(width/2, height/2, 300);
}

void 
drawCircle(float x, float y, float diam)
{
  //STEP 1. DRAW AN ELLIPSE AT x,y WITH DIAMETER=diam
   
   ellipse(x,y,diam,diam);
  
  if (diam>=10)
  {    
    float newPos = diam/2;
    fill(122,33,456);
    drawCircle(x+newPos, y, diam/2);
    fill(12,233,56);
    drawCircle(x-newPos,y,diam/2);
    fill(34,231,126);
    drawCircle(x,y-newPos,diam/2);
    fill(72,213,26);
    drawCircle(x,y+newPos,diam/2);
  }
}

