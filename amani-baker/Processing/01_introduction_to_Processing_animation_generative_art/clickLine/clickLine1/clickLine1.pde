float lastClickX;
float lastClickY;

void setup ()
{
  size (500, 500);
  background (255);
  stroke (255, 0, 0);
}
void draw ()
{
}
void mousePressed ()
{
  lastClickX = (mouseX);
  lastClickY = (mouseY);
  line (pmouseX, pmouseY, 50, 50);
}
