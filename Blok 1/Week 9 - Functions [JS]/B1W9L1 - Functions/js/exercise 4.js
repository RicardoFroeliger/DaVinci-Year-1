/* Variables */
let output = [];

/* Calculate Function */
function calculate(quantity) {
    for(let i = 0; i < quantity; i++) {
        for(let j = 1; j < 11; j++) {
            output.push(`${j} x ${i + 1} = ${j * (i + 1)}`);    
        };
        output.push('<br><hr>');   
    };
};

/* Finalize / Execute */
const noData = () => document.getElementById('outputH1').innerHTML = 'No data to show! You canceled.';
const err = content => alert(`${content}\nPlease try again.`);
if(confirm('Welcome!\nPlease only enter numbers from 1 to 10.')) {
    let quantity = false;
    while(!quantity || !quantity.match(/^\d+$/) || quantity > 10) {

        quantity = prompt('Enter the number of multiplication tables you want.', '');
        if(quantity === '') err('You didn\'t enter anything.');
        else if(quantity) {
            if(!quantity.match(/^\d+$/)) err('You didn\'t enter a valid number.');
            else if(quantity > 10) err('You have entered a number above 10.');
            else {
                calculate(quantity);
                document.getElementById('outputP').innerHTML = output.join('<br>');    
            };
        } else { alert('You have canceled.'); noData(); break; };
        
    };
} else { alert('You have canceled.'); noData(); };