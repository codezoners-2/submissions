

void setup()
{
  size(500, 500);
  stroke(0);
  background(255);
  smooth();
}
void draw()
{
  background(255);
  line(width/2, 0, width/2, 500);
  line(0, height/2, 500, height/2);

  if (mouseX<=250 && mouseY<=250)
  { 
    fill(255, 0, 0);
    rect(0, 0, 250, 250);
  } else if (mouseX>250 && mouseY<250)
  {
    fill(255, 0, 0);
    rect(250, 0, 250, 250);
  } else if (mouseX<=250 && mouseY>=250)
  {
    fill(255, 0, 0);
    rect(0, 250, 250, 500);
  } else
  {
    fill(255, 0, 0);
    rect(250, 250, 500, 500);
  }
}

