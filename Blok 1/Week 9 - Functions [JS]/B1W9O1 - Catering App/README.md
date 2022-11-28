# B1W9O1 - Catering App
## Created by Ricardo Froeliger

In the city there is a new Café-Bar where you can enjoy a drink with your friends and you can also order tasty snacks. You come up with the name of the Café-Bar yourself. The Café-Bar asks you to make a JS application so that they can easily keep track of the orders and of course you must also be able to request the bill.

You first get started with only the drinks, if the JS application works well and then add that you can also order snacks. When programming the JS application you must of course use functions. The following functions should be seen: displaying the bill, adding orders and calculating the prices. Think of good function names for this yourself!


### Part 1
The orders are entered via a prompt. The order entry process works as follows: <br>

1. You will be asked 'Which order do you want to add?'
2. You can now specify which drink you want to order. You can type in 'soda', 'beer' or 'wine'.
3. Then you will be asked 'How much name drink do you want to add to your order'. 
For example, if you have entered 'soda', the question will be 'How much soda do you want to add to your order'. So where the name drink is shown you show which drink you are going to order
4. Then you automatically go back to step 1. In short, you can enter a new order again.


If you want the receipt, fill in the question 'Which order do you want to add?' Enter the word 'stop' and the receipt will be printed on the screen. 
All orders placed are neatly stated on the receipt with the number and name of the drink. 
Also show the costs per type and of course also the total price. 
Drinks that you have not ordered cannot be shown on the receipt.


You can only order drinks that are on the card, so you have to do an import check on the drinks you order.
If you enter something other than 'soda', 'beer' or 'wine' you will receive a message 'You have made an invalid entry. Your order cannot be added.' and then you automatically go back to step 1.



### Part 2 (expanding with bitterballen)
Expand the JS application so that you can also order bowls with bitterballen. 
The process of ordering bitterballen works as follows:

1. You will be asked 'Which order do you want to add?'
2. You type in the word 'snack'.
3. You will be asked 'How many bitterballen do you want to add (8 or 16)?'
4. You will be asked 'How many croquette bowls of number of pieces do you want to order? 
The number will show 8 or 16 depending on what you enter
5. Then you automatically go back to step 1. In short, you can enter a new order again.


If you enter a number other than 8 or 16 at point 3, you will receive the message 'You can only make a choice between 8 and 16. The snacks have not been added to the order.' and then you start again at step 1.



### Additional
In addition to the functional requirements, we will also pay attention to the following:

* Assignment submitted on github
* Naming of variables and function names is clear and self explaining
* Code is neat and correctly aligned
* Comments have been added on bits of code that are more difficult to understand. In any case, you briefly indicate what it does for each position
* Provide a nicely styled html page and of course you arrange the layout in the CSS
* You determine the prices for the drinks and the dishes with bitterballen