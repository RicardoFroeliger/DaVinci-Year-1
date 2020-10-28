# B1W9L1 - Functions
## Created by Ricardo Froeliger

### Exercise 1
We are going to extend the function helloWorld,<br>
if you call the function helloWorld(3) then the output to the screen will be:

1. Hello world!
2. Hello world!
3. Hello world!

 
When you call the function helloWorld(7) the output becomes:

1. Hello world!
2. Hello world!
3. Hello world!
4. Hello world!
5. Hello world!
6. Hello world!
7. Hello world!

### Exercise 2
Create a JS application that can perform calculations.<br> 
You are going to create the following functions:

* addition (number1, number2) returns number1 + number2
* subtraction (number1, number2) returns number1 - number2
* multiplication (number1, number2) returns number1 * number2
* division (number1, number2) returns number1 / number2
* increment (number) returns number + 1
* decrement (number) returns number - 1


You perform 3 calculations for each function. The output should look like this: <br>

10 + 12 = 22 <br>
58 - 34 = 24 <br>
6 x 7 = 42 <br>
144: 12 = 12 <br>
12 + 1 = 13 <br>
34 - 1 = 33 <br>

### Exercise 3
You are going to make a JS application that will print names and ages to the screen.<br> 
To print the name and age, you create a function that does this for you.<br>
The output of this function is: "Hello name, your age is number years".<br> 
(name and number is the value entered by user).<br>

The following requirements are set for the application:
* The user can enter the names and ages himself via a prompt.
* The application keeps asking for names and ages until you enter the word 'stop'.

### Exercise 4
Create a JS application that calculates multiplication tables. 
The user can indicate via a prompt which tables will be printed on the screen. 
If the user entered the number 2, the output will be as follows:

1 x 1 = 1 <br>
2 x 1 = 2 <br>
3 x 1 = 3 <br>
4 x 1 = 4 <br>
5 x 1 = 5 <br>
6 x 1 = 6 <br>
7 x 1 = 7 <br>
8 x 1 = 8 <br>
9 x 1 = 9 <br>
10 x 1 = 10 <br>

1 x 2 = 2 <br>
2 x 2 = 4 <br>
3 x 2 = 6 <br>
4 x 2 = 8 <br>
5 x 2 = 10 <br>
6 x 2 = 12 <br>
7 x 2 = 14 <br>
8 x 2 = 16 <br>
9 x 2 = 18 <br>
10 x 2 = 20 <br>

If the user fills in 3, multiplication tables 1 to 3 are printed to the screen.<br>
The application must contain a function that prints the table to the screen.


The application continues to ask the user until the input is correct.<br> 
A correction entry is a number from 1 to 10.<br> 
The following error messages are displayed to the user via an alert:
* Please only enter numbers (if input is text).
* Number range must be: 1 to 10 (if input is out of range).