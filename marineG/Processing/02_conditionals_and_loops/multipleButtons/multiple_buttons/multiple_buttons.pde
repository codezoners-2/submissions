void setup ()
{
  size (500, 500);
  background (255);
  fill (75, 0, 0);
} 

void draw ()
{
  background (255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
 
  if (mouseX <=width/2 && mouseY<= height/2)
  {
    rect(0, 0, width/2, height/2);
  }
  else if (mouseX >=width/2 && mouseY<height/2)
  {
   rect(width/2, 0,width/2, height/2); 
  }
   
 if (mouseX <=width/2 && mouseY>= height/2)
  {
    rect(0,height/2, width/2,height/2);
  }
  else if (mouseX >=width/2 && mouseY>=height/2)
  {
   rect(width/2, height/2,width, height); 
  }  


}

