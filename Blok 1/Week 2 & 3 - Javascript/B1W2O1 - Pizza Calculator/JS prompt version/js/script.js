let stop = false, sizes = [], receipt = [], totalPrice = 0;
const PRICES = {
    small: 4.99, 
    medium: 7.49, 
    large: 9.99
};

// Returns a value with a capital letter
String.prototype.capitalize = function() { 
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase(); 
};

/* Function that executes itself 2 more times */
// Checks if the number is valid, and pushes the order into an array.
// If all sizes has been asked, the receipt will be calculated and printed on the screen.
function validate(size) { 
    const num = prompt(`Enter the number of ${size} (${PRICES[size]}€) pizzas you want to order.`);
    if(!num || !num.match(/^\d+$/)) {
        alert('Invalid number! Refresh the page and try again.');
        document.getElementById('output').innerHTML = 'Invalid number! Refresh the page and try again.';
    } else {
        sizes.push(num, size);
        alert(`You ordered ${num} ${size} pizzas.`);

        if(size === 'small') validate('medium');
        else if(size === 'medium') validate('large'); // Executes itself for all 3 sizes
        else {
            for(i = 0; i < 6; i+=2) {
                sizes[i] = parseInt(sizes[i]); // Parse string to int
                receipt.push(`${sizes[i]}x ${sizes[i + 1].capitalize()} Pizza: ${(PRICES[sizes[i + 1]] * sizes[i]).toFixed(2)}€`);
                totalPrice += (PRICES[sizes[i + 1]] * sizes[i]); // calculate total price
            };
            document.getElementById('output').innerHTML = (`You have ordered:<br><br>${receipt.join('<br>')}<br><br>Total: ${totalPrice.toFixed(2)}€`);
            console.log(sizes);
        };
    };
};

if(confirm('Welcome to The Thick Slice pizzeria.')) validate('small');
else {
    alert('Alright, have a nice day.');
    document.getElementById('output').innerHTML = 'You have canceled.';
};