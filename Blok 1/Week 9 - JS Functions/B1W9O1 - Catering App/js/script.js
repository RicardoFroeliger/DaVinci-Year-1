/* Variables */
let order, quantity, orderList = [];
const PRICES = {
    soda: 2,
    beer: 3.50,
    wine: 5,
    bitterballen: 6 // per 8 
};

/* Returns a value with a capital letter */
String.prototype.capitalize = function() { 
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase(); 
};
const noData = () => document.getElementById('output').innerHTML = 'You canceled.<br>Have a nice day!';



/* Cancel Function: Triggers whenever canceled is clicked or 'stop' is entered */
// if the orderlist is empty, you'll be wished a good day, if you ordered something, a receipt will be created.

// the receiptFilter checks which item is ordered and how many of them, then push that item in the receipt.
// the receiptFilter will also increase the totalprice depending on the item you ordered (bitterballen per 8).

// the receiptFilter has to given it's parameters and has to be executed, in which the 2nd loop comes in.
// the Object.keys loop, loops through the length and keys of the PRICES object (easier to add items to the menu).
// at last, the receipt and totalprice will be displayed on the screen.
function canceled() { 
    if(orderList.length == 0) { 
        alert('You canceled. Have a nice day!'); 
        noData(); 
    } else {

        /* Create Receipt */
        let receipt = [], totalPrice = 0;
        let receiptFilter = order => { // Checks how many of each product, if 1 or more, push it in the receipt
            let orderLength = orderList.filter(val => val === order).length; 
            let price = PRICES[order] * (order === 'bitterballen' ? orderLength/8 : orderLength);
            if(orderLength > 0) {
                receipt.push(`${orderLength}x ${order.capitalize()}: ${price.toFixed(2)}€`); 
                totalPrice += price;  
            };
        };

        /* Loop through through the receiptFilter function so that the receipt gets built */
        for(let i = 0; i < Object.keys(PRICES).length; i++) {
            receiptFilter(Object.keys(PRICES)[i]); 
        }; // Used PRICES here cause PRICES contains all available products
        
        alert('Here\'s your receipt. Have a nice day!'); 
        document.getElementById('output').innerHTML = (`
            You have ordered: <br><br>${receipt.join('<br>')}
            <br><br>Total: ${totalPrice.toFixed(2)}€
        `);
        orderList.join('<br>');
    };
    order = false, quantity = false;
};



/* Validate Order: Checks the prompt entry: */
// if the entry is left empty, it will ask again for an order.
// if canceled, you'll either quit, or recieve the receipt.

// if there is an entry, it will check if it's not 'stop', and if the order is on the menu.
// if both are true, it will go on to the quantity.
function validateOrder() {
    while(!order) {
        let menu = `MENU:\nSoda: 2.00€\nBeer: 3.50€\nWine: 5.00€\nBitterballen: 6:00€ / 8`;
        order = prompt(`Which order do you want to add?\nTo cancel or finish order, enter 'stop'.\n\n${menu}`, ''); 
        if(order === '') alert('You didn\'t enter anything.\nPlease try again.');
        else if(order) {

            /* Validate order */ 
            order = order.toLowerCase().trim();          
            if(order === 'stop') { // If 'stop' has been entered
                canceled();
                break; 
            } else if(order !== 'soda' && order !== 'beer' && order !== 'wine' && order !== 'bitterballen') {
                alert(`Incorrect order.\nPlease choose something from our menu.\n\n${menu}`); 
                order = false; 
            } else { 

                /* If order exists, go on to the quantity */
                validateQuantity(); 
                break;
            };
        } else { // If cancel button is clicked
            canceled(); 
            break; 
        };
    };
};



/* Validate Quantity: Checks the prompt entry: */
// if the entry is left empty, it will ask again for an quantity.
// if canceled, you'll either quit, or recieve the receipt.

// if there is an entry, it will check if it's not 'stop', is a number and is under 15.
// if all are true, it will complete the order and then reset everything.
function validateQuantity() {
    while(!quantity) {
        quantity = prompt(`How much ${order} do you want to add to your order?\nTo cancel or finish order, enter 'stop'.\nTo go back to the menu, enter 'back'.`, '');
        if(quantity === '') alert('You didn\'t enter anything.\nPlease try again.'); 
        else if(quantity) {

            /* Validate Quantity */
            quantity = quantity.toLowerCase().trim();
            if(quantity === 'stop') { // If 'stop' has been entered
                canceled();
                break;
            } else if(quantity === 'back') {
                order = false, quantity = false;
                validateOrder();
                break;
            } else if(!quantity.match(/^\d+$/)) { // Checks if quantity is a number
                alert('You didn\'t enter a valid number.\nPlease try again.');    
                quantity = false;
            } else if(order === 'bitterballen' ? (quantity != 8 && quantity != 16) : quantity > 15) { 

                /* Checks if quantity is 8 / 16 or under 15 */
                if(order === 'bitterballen') alert(`You have to order 8 or 16 ${order} at a time.\nPlease try again.`);
                else alert(`You can\'t order more than 15 You have to order 8 or 16 ${order} at a time.\nPlease try again.`);
                quantity = false;
            } else {

                /* Completes order and resets loops */
                for(let i = 0; i < quantity; i++) orderList.push(order); // Adds order * quantity to orderList
                alert(`You have ordered ${quantity} ${order}.`);
                order = false, quantity = false; // Activate both while loops again
                validateOrder(); // Go repeat and ask for another order
                console.log(orderList);
                break;
            };
        } else { // If cancel button is clicked
            canceled(); 
            break; 
        };
    };
};

setTimeout(() => { // CSS doesn't load if not in timeout :(
    if(confirm('Welcome to café The Lukewarm Croquette!')) validateOrder(); 
    else canceled();
}, 1000);