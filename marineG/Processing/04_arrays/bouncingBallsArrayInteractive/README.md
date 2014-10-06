# bouncing balls interactive

Use the code provided here to program interaction.

### step-by-step:
1. Create an array of type float, called diamArray, which will hold the diameters of all the balls.
2. Modify the setup() function so that you assign a random value between 3 and 30 to each ball's diameter. By this point when you start your program, you should see balls of different size.


3. Create a global array, called ballState of type boolean (boolean = True/False), where you will store the state of each ball. Inside the for loop in the setup() intialize all the positions to True.


4. Ammend your drawBall() function so that it draws the ball in white if it's corresponding location in the ballState array is True. If it is False make it draw the ball black. At this point you should see the same thing as in step 2 (ie. many white balls).



5. Write an ballUserInteraction(x, y) function, called from the draw() function, which takes the position of the mouse as input parameters and checks if the mouse is on top of a ball or not. You'll need to use the dist() command as well as each ball's specific diameter from the array we created in step 1.


6. Ammend the ballUserInteraction(x, y) function you have written so that if the mouse is on top of the ball the ball is turned permanently into black (i.e. it has been infected).


7. Write a ballBallInteraction() function which is called inside draw() which checks to see if balls have hit each other. Attention! In this case we have to check if each ball has hit each ball. It's an NxN comparison. We have to have a loop within a loop. Write in code the following if statements. If two balls touch each other and one of them is black then make sure both of the become black (ie. the black one infects the white one and turns it into black).


8. BONUS: Create a function restartIfAllDead() which contains a for loop which checks if all balls are black. If all of them are black then reset the game by turning all of them white again.
