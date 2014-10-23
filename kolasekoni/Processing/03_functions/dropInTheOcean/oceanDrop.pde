int axisY=0;
int axisX;
int rectHeight =20;
int rectY;
int colPick = 2;
PImage fish1;
PImage fish2;
int fishStep = 2;
int seaW = 0;
int fish1X;
int fish2X = 0;
int m=millis()/1000;

void setup()
{
  size(500, 500);
  axisX = width/2;
  fish1X=width-80;
  rectY=height;
  noStroke();
  fill(0, 0, 100);
  colPick = (int)random(0, 3);
  fish1 = loadImage("fish.png");
  fish2 = loadImage("fish2.png");
}

void draw()
{
  background(255);
  int x = drawDrop();
  drawSea(x);
  pebbles();
  drawFish();

}


void pebbles()
{
  fill(255);
  for (int x = 0; x <= width; x += 20)
  {
    ellipse(x, height, 10, 10);
  }
}

int drawDrop()
{
  int step = 5;
  int diam = 20;

  if (colPick == 0) fill(255, 0, 0); 
  else if (colPick == 1) fill(0, 255, 0);
  else if (colPick == 2) fill(0, 0, 255);

  triangle(axisX, axisY-diam, axisX+diam/2, axisY, axisX-diam/2, axisY);
  ellipse(axisX, axisY, diam, diam);
  axisY = axisY + step;
  int oldColour = colPick;

  if (axisY >= rectY)
  {
    axisY = 0;
    axisX = (int)random(50, width-50);
    rectY = rectY-rectHeight;
    colPick = (int)random(0, 3);
  }
  return oldColour;
}

void drawSea(int dropPick)
{
  if (axisY <= rectY)
  {
    if (dropPick == 0) fill(255, 0, 0); 
    else if (dropPick == 1) fill(0, 255, 0);
    else if (dropPick == 2) fill(0, 0, 255);
  }

  rect(0, rectY, width, height);
  if (rectY<=0)
  {
    axisY=0;
    rectY=height;
  }
}

void keyPressed()
{
  if (key == 'f' || key == 'F')
  {
    drawFish();
  } else
  {
    axisX = (int)random(50, width-50);
    axisY = 0;
  }
}

void drawFish()
{

  if (rectY <= height-90)
  { 
    if (fish2X < width)
    { 
      image(fish2, fish2X, height-80, 80, 70);
      fish2X = fish2X + 1;
    } else if (fish2X >= width )
    {
      image(fish1, fish1X+250, height-80, 80, 70);
      fish1X = fish1X - 1;
    }
  }
}


