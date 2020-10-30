/**
 * Ricardo Froeliger
 * Davinci College Software Developer 
**/

/* Storage Variables */
let smallPizza = 0,      mediumPizza = 0,    largePizza = 0;
const SMALLPRICE = 4.99, MEDIUMPRICE = 7.49, LARGEPRICE = 9.99;



/* Margin Toggler */
function margin(Var, str) {
    if(Var < 10) // Toggles CSS margin class to align numbers in the center depending if number is 1 or 2 digits.
        document.getElementById(str).style.margin = '45';
    else 
        document.getElementById(str).style.margin = '35';
};



/* Quantity Updater */
function quantity(size, count) {
    
    // This function recieves a size, and if the user either wants to add or remove a pizza.
    // Switch decides which size the user wants to update, and then update it.
    switch(size) {
        case 'small':
            if(count === 'add' && (smallPizza + mediumPizza + largePizza) < 99) { // Only goes up if limit is not reached yet.
                smallPizza++; // Add 1 pizza.
                document.getElementById('smallPizza').innerHTML = smallPizza; // Update display.
            } else if(count === 'remove' && smallPizza > 0) { // Only goes down if still above 0.
                smallPizza--; // Remove 1 pizza.
                document.getElementById('smallPizza').innerHTML = smallPizza; // Update display.
            };
            margin(smallPizza, 'smallPizza');
        break;
        case 'medium':
            if(count === 'add' && (smallPizza + mediumPizza + largePizza) < 99) {
                mediumPizza++;
                document.getElementById('mediumPizza').innerHTML = mediumPizza;
            } else if(count === 'remove' && mediumPizza > 0) {
                mediumPizza--;
                document.getElementById('mediumPizza').innerHTML = mediumPizza;
            }; 
            margin(mediumPizza, 'mediumPizza');
        break;
        case 'large':
            if(count === 'add' && (smallPizza + mediumPizza + largePizza) < 99) {
                largePizza++;
                document.getElementById('largePizza').innerHTML = largePizza;
            } else if(count === 'remove' && largePizza > 0) {
                largePizza--;
                document.getElementById('largePizza').innerHTML = largePizza;
            };
            margin(largePizza, 'largePizza');
        break;
    };
 


/* Total Pizza */
    let totalPizza = smallPizza + mediumPizza + largePizza; // Sum of all pizzas.
    document.getElementById('totalPizza').innerHTML = totalPizza; // Update display.
    margin(totalPizza, 'totalPizza'); 

    // Changes color of total pizza to red if maximum limit (99) is reached.
    if(totalPizza == 99) document.getElementById('totalPizza').style.color = 'red';
    else document.getElementById('totalPizza').style.color = 'black';
    


/* Total Price */
    // Sum of amount multiplied by price.q
    let totalPrice = ((smallPizza * SMALLPRICE) + (mediumPizza * MEDIUMPRICE) + (largePizza * LARGEPRICE)).toFixed(2);
    document.getElementById('totalPrice').innerHTML = `${totalPrice}€`; // Update display.



/* Receipt */
    let receiptArray = []; // Pushing all orders inside the receipt array.
    if(smallPizza > 0) receiptArray.push(`${smallPizza}x Small Pizza; ${(smallPizza * SMALLPRICE).toFixed(2)}€`);
    if(mediumPizza > 0) receiptArray.push(`${mediumPizza}x Medium Pizza; ${(mediumPizza * MEDIUMPRICE).toFixed(2)}€`);
    if(largePizza > 0) receiptArray.push(`${largePizza}x Large Pizza; ${(largePizza * LARGEPRICE).toFixed(2)}€`);

    let receipt = (row, content, index) => {
        // Checks if the content provided includes ';'.
        // If so split the content at ';' and return the index, if not (blank string) just return the content. 
        document.getElementById(`receiptRow${row.toString()}`).innerHTML = content.includes(';') ? content.split(';')[index] : content; 
    };

    // Updating the lines of the receipt, 
    // Creating new ones if more orders, delete ones (blank string) if less orders.
    if(receiptArray.length == 1) { 
        receipt(1, receiptArray[0], 0); receipt(4, receiptArray[0], 1);
        receipt(2, '');                 receipt(5, '');
        receipt(3, '');                 receipt(6, '');
        receipt(7, 'Total:');           receipt(8, `${totalPrice}€`);
    } else if(receiptArray.length == 2) { 
        receipt(1, receiptArray[0], 0); receipt(4, receiptArray[0], 1);
        receipt(2, receiptArray[1], 0); receipt(5, receiptArray[1], 1);
        receipt(3, '');                 receipt(6, ''); 
        receipt(7, 'Total:');           receipt(8, `${totalPrice}€`);
    } else if(receiptArray.length == 3) { 
        receipt(1, receiptArray[0], 0); receipt(4, receiptArray[0], 1);
        receipt(2, receiptArray[1], 0); receipt(5, receiptArray[1], 1);
        receipt(3, receiptArray[2], 0); receipt(6, receiptArray[2], 1);
        receipt(7, 'Total:');           receipt(8, `${totalPrice}€`);
    } else { 
        receipt(1, '');                 receipt(4, '');  
        receipt(2, '');                 receipt(5, '');
        receipt(3, '');                 receipt(6, '');
        receipt(7, '');                 receipt(8, ''); 
    };
};