int diam=25;

void setup()

{
  size(400,400);
  background(255);
  smooth();
}


void draw()
{
  
  noStroke();
  fill(255,0,0,50);
  ellipse(mouseX,mouseY,diam+2,diam+2);
  

}

void mousePressed()
{
  background (random(100,150),random(100,150),random(100,150),150);
  noStroke();
  fill(random(0,100));
  ellipse(mouseX,mouseY,diam+1,diam+1);
 
}
