void setup()
{
  size(500, 500);
  background(180);
}

void draw()
{
  flock(10, 40, 200, 200, 30);
  flock(400, 400, width, height, 50);
}

void flock(int startX, int startY, int endX, int endY, int spacing)
{

  for (int owlX = startX; owlX<endX; owlX = owlX + spacing)
  {
    for (int owlY = startY; owlY<endY; owlY = owlY + spacing)
    {
      int owlColor;
      int distFromOwl = (int)dist(owlX, owlY, mouseX, mouseY);
      if (distFromOwl <= 20)  owlColor = 0;
      else owlColor = int(random(0, 50));
      owl(owlX, owlY, owlColor);
    }
  }
}

void owl(int x, int y, int g)
{
  pushMatrix();
  translate(x, y);
  scale(0.35);
  // Set the size
  stroke(g); // Set the gray value
  strokeWeight(70);
  line(0, -35, 0, -65);
  // Body
  noStroke();
  fill(255-g);
  ellipse(-17.5, -65, 35, 35); // Left eye dome
  ellipse(17.5, -65, 35, 35); // Right eye dome
  arc(0, -65, 70, 70, 0, PI); // Chin
  fill(g);
  ellipse(-14, -65, 8, 8); // Left eye
  ellipse(14, -65, 8, 8); // Right eye
  quad(0, -58, 4, -51, 0, -44, -4, -51); // Beak
  popMatrix();
}


