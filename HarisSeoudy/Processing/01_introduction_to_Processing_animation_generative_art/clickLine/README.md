# clickLine:

Write a program that does [this](http://artech.cc/_class_material_/exercises/week2/exercise2/) (click anywhere to see it in action).

###Step-by-step:

1. Create a global variable lastClickX and lastClickY to store the mouse clicks. (Q: Why does it have to be a global variable?)
2. Write a setup function which creates the canvas of size 500x500 and of white background. Also inside setup, set the stroke() to be red.
3. Write a draw() function but leave it empty. (Q: Why?)
4. Write a mousePressed() function that:
  1. draws a line between the lastClickX, lastClickY variables and the current mouse location.
  2. stores the current mouse location inside the lastClick variables so that it can be used next time.
5. Write a keyPressed() function that erases the canvas as soon as any key is pressed.
