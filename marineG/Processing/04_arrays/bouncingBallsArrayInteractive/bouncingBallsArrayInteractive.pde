int numOfBalls = 10;
float[] posX = new float[numOfBalls];
float[] posY = new float[numOfBalls];
float[] directionX = new float [numOfBalls];
float[] directionY = new float [numOfBalls];
float[] radius = new float [numOfBalls];
float[] diamArray = new float [numOfBalls];
boolean[] ballState= new boolean [numOfBalls];
int numBlackBalls;

void setup()
{
  size(500, 500);
  stroke(0);
  fill(175);
  numBlackBalls = 0;

  for (int x=0; x<numOfBalls; x++)
  {
    posX[x] = random(0, width);
    posY[x] = random(0, height);
    directionX[x] = random(-5, 5);
    directionY[x] = random(-5, 5);
    diamArray[x]= random(3, 30);
    ballState[x]=true;
  }
}

void draw()
{
  background(255);
  drawBalls();
  moveBalls();
  bounceBall();
  ballUserInteraction (mouseX, mouseY);
  ballBallInteraction();
    
  if (numBlackBalls==10)
  {
    restartIfAllDead();
  }
  
} 

void drawBalls()
{
  for (int x=0; x<numOfBalls; x++)
  {
    if (ballState[x])
    { 
      fill (255);
    } else 
    {
      fill (0);
    }
    ellipse(posX[x], posY[x], diamArray[x], diamArray[x]);
  }
}

void moveBalls()
{
  for (int x=0; x<numOfBalls; x++)
  {
    posX[x] = posX[x] + directionX[x];
    posY[x] = posY[x] + directionY[x];
  }
}

void bounceBall()
{
  for (int x=0; x<numOfBalls; x++)
  {
    if (( posX[x] > width) || (posX[x] < 0))
    {
      directionX[x] = directionX[x] * -1;
    }
    if ((posY[x] > height) || (posY[x] < 0))
    {
      directionY[x] = directionY[x] * -1;
    }
  }
}

void ballUserInteraction (int mX, int mY)
{
  for (int i=0; i<numOfBalls; i++)
  {
    if (dist(mX, mY, posX[i], posY[i])<diamArray[i]/2 && ballState[i]== true)
    {
      ballState[i]= false;
      numBlackBalls = numBlackBalls+ 1;
      
    }
  }
}

void  ballBallInteraction()
{
  for  (int l=0; l<numOfBalls; l++)
  {
    for (int p=0; p<numOfBalls; p++)
    {

      if (dist(posX[l], posY[l], posX[p], posY[p])<=(diamArray[l]/2+diamArray[p]/2))

      {
        if (ballState [p] == false && ballState [l]==true)
        {
          //  ballState[p]=false;
          ballState [l]=false;
          numBlackBalls = numBlackBalls+ 1;
        }
      }
    }
  }
  
}


void restartIfAllDead()
{
println(numBlackBalls);
   for (int k=0; k<numOfBalls; k++)
  {

      ballState[k]= true;
      
   }
    numBlackBalls = 0;

}

