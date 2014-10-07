int x=10;
int y =0;
float locX=0;
float locY=0;
int rectheight=2;
int R= int(random(0, 255));
int G= int(random(0, 255));
int B= int(random(0, 255));
int oceanR= 0;
int oceanG= 0;
int oceanB= 200;
PImage img;
PImage img2;
int imgX=width;
int imgY= 400;
int img2X= 500;
int img2Y= 400;

void setup()
{
  size (500, 500);
  noStroke ();
  locX= random(0, width);
  img=loadImage ("fish2.png");
  img2=loadImage ("fish.png");
}

void draw()
{
  background (255);

  drawDroplet();
  drawOcean();
  pebbles();
  drawFish();
 drawFish2();
}

void keyPressed()
{
  if (key=='h') 
  {
    locX= random(0, width);  
    locY=0;
  }
}

void drawFish2()
{
 int m=millis();
  m=(m%5000);
 if (rectheight> height/4 )
  {
 image(img2,img2X,img2Y, width/6, height/6);
 img2X=img2X-1; 
 if (img2X<0-m) img2X=500;
  }  
}

void drawFish()
{
  int m=millis();
 m=(m%5000);
 if (rectheight> height/4)
  {
 image(img,imgX,imgY, width/6, height/6);
 imgX=imgX+1; 
 if (imgX>width+m) imgX=0;
}
}
void pebbles()
{
  int pebblesY=height;
  int pebblesDiam=10;
  fill(255);
  for (int pebblesX=0; pebblesX<width; pebblesX=pebblesX+15)
  {
    ellipse (pebblesX, pebblesY, pebblesDiam, pebblesDiam);
  }
}

void drawDroplet()
{
  fill (R, G, B);
  int diam=20;
  triangle (locX-diam/2, locY, locX+diam/2, locY, locX, locY-diam);
  ellipse(locX, locY, diam, diam);
  locY=locY+5;
}

void drawOcean()
{
  //fill (0,0,75);
  fill (oceanR, oceanG, oceanB);
  rect(0, height-rectheight, width, rectheight);

  if (locY>height-rectheight) 
  {
    rectheight=rectheight+10;
    locY=0;
    locX= random(0, width);

    oceanR=R;
    oceanG=G;
    oceanB=B;
    R= int(random(0, 255));
    G= int(random(0, 255));
    B= int(random(0, 255));    

    if (rectheight>=height) rectheight =2;
  }
}

