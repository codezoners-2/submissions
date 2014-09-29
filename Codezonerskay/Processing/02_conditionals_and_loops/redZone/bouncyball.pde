int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;
    
    

void setup()
{
  size(500, 500);
  stroke(0);
  fill(175);
  smooth();
}

void draw()
{
  background(255);
  
    float haw = random(0,255); 
    float yet = random(0,255); 
    float thy = random(0,255);
   
  fill(255);  
  rect(150,150,200,200);
 
  
  
  if (circleX >= 150 && circleX <= 350 && circleY >= 150 && circleY <=350)
  {
    
  fill(thy,yet,haw);  
  rect(150,150,200,200);
 
    fill(255,0,0);
    
    ellipse(circleX, circleY, 15, 15);  
  
  circleX = circleX + stepX;
  
  circleY = circleY + stepY;  
  }
  
  else
  {
    fill(0,0,255);
    
    ellipse(circleX, circleY, 15, 15);  
  
  circleX = circleX + stepX;
  
  circleY = circleY + stepY;  
  }
  
  if (circleX > width || circleX < 0)
  
  {
    stepX = stepX * -1;   
    
  }
  
  if (circleY > height || circleY < 0)
  {
    stepY = stepY * -1;
  }
}
