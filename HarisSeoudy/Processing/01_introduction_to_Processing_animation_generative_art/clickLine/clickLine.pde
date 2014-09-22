int lastClickX;
int lastClickY;

void setup()
{
  size(500,500);
  background(255);  
  stroke(255,0,0);
}

void draw()
{

}

void mousePressed()
{
  line(lastClickX, lastClickY, mouseX, mouseY);
  lastClickX = mouseX;
  lastClickY = mouseY; 
}

void keyPressed()
{
  background(255);
}
