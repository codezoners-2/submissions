int circleX =25;
int circleY= 10;
int circleW = 50;
int circleH = 50;
int rainStartX= 10;
int rainStartY=25;
int rainStopX= rainStartX;
int rainStopY= rainStartY+5;
int rectX=500;
int rectY=170;
int rectW=50;
int rectH=100;
int circle1Col= color (255, 0, 0);
int circle3Col= color (255);
int carLimit= 300;

void setup()

{
  size (900, 600);
  background (255);
  //rect(rectX, rectY, rectW, rectH);
}

void draw()

{  

  //CAR
  fill(255);   
  rect(0, 170, 900, 400);
  background(255);
  rect( circleX, height/3, 100, 100);
  rect(circleX+100, height/2.5, 50, 50);
  ellipse (circleX, height/2, circleW, circleH);
  ellipse (circleX+100, height/2, circleW, circleH);
  circleX = circleX+10;
  circleX= constrain(circleX, 0, carLimit);


  //LIGHT
  noFill();
  rect(rectX, rectY, rectW, rectH);
  fill (circle1Col);
  ellipse(rectX+25, rectY+20, 25, 25);
  fill(255);
  ellipse(rectX+25, rectY+50, 25, 25);
  fill(circle3Col);
  ellipse(rectX+25, rectY+80, 25, 25);
  //RAIN
  for (int lineX=10; lineX<850; lineX= lineX+20)

  {
    for (int lineY= 10; lineY<150; lineY=lineY+20)
    {

      line (lineX, lineY, lineX+rainStartX, lineY+rainStopY);
    }
  }
}
void keyPressed()
{
  if (key == 'h' ||key== 'H')
  {
    circle1Col= color (255);
    circle3Col= color (0, 255, 0);
    carLimit = 900;
  }
}  
void mousePressed () 
{

  circle1Col= color (255, 0, 0);
  circle3Col= color (255);
  carLimit = 300;
}

