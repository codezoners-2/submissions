float lastLocX;
float lastLocY;

void setup()
{
  size (500, 500);
  background (0);
  stroke(255);
  lastLocX= (width/2);
  lastLocY=(height/2);
}

void draw()
{
  float stepX = lastLocX+ (random (-10, 10));
  float stepY= lastLocY+ (random(-10, 10));
  line(lastLocX, lastLocY, stepX, stepY );
  lastLocX= stepX;
  lastLocY= stepY;
}
