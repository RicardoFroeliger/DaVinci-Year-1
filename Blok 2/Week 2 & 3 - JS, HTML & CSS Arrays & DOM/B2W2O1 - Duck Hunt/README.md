# B2W2O1 - Duck Hunt
## Created by Ricardo Froeliger

The Nintendo NES was released about 30 years ago.<br>
Besides Mario, you could play the game Duck Hunt with a Zapper (kind of gun), where you had to aim at the screen and shoot ducks.

In this assignment we are going to make a derivative of this game.<br>
Attached you will find an animated GIF of a duck and a background image of the playing field.


### Step 1: Flying Duck
Create a web page with the image of the stage (from the images folder) and a picture of the duck over it.<br>
Position the duck so that it is in the middle of the playing field as the starting position.

Create a JavaScript function fly(); with the string 'direction' as parameter.<br>
This parameter represents the direction that you give in the function call and can be: N, NE, E, SE, S, SW, W or NW.<br>
With a "switch" or "if statements" you let the duck "fly" on the screen by adjusting the position.<br>
The flying distance is always 75px. So if you fly to location "NE" you go 75px to the right and 75px up. If you fly to "W" go 75px to the left.


### Step 2: Moving Duck
Create a global array with all directions (N, NE, E, SE, S, SW, W, NW) and make sure you have a function (e.g. moveDuck ()) that runs the fly () function every 0.5 seconds with a random direction from the array.
 

### Step 3: Score
Make two score counters, HIT & MISS.
* If you click on the image of the duck, the HIT counter must be increased by 1, 
* if you click on the background image, the MISS counter must be increased by 1. 
* In either case, When the total of HIT & MISS is 20, the game is over and you will be shown your score.