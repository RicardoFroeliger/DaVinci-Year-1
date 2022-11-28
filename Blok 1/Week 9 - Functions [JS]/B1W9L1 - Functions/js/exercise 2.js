/* Variables */
let firstNum, secondNum;

/* Functions */
function addition(num1, num2) {
    return `${num1} + ${num2} = ${parseInt(num1) + parseInt(num2)}`; 
};
function subtraction(num1, num2) {
    return `${num1} - ${num2} = ${parseInt(num1) - parseInt(num2)}`;
};
function multiplication(num1, num2) {
    return `${num1} x ${num2} = ${parseInt(num1) * parseInt(num2)}`;  
};
function division(num1, num2) {
    return `${num1} / ${num2} = ${(parseInt(num1) / parseInt(num2)).toFixed(2)}`; // round 2 decimals
};
function increment(num) {
    return `${num} + 1 = ${parseInt(num) + 1}`;  
};
function decrement(num) {
    return `${num} - 1 = ${parseInt(num) - 1}`;   
}

/* Finalize / Execute */
const noData = () => document.getElementById('output').innerHTML = 'No data to show! You canceled.';
const err = content => alert(`${content}\nPlease try again.`);

if(confirm('Welcome!\nPlease only enter numbers.')) {

    /* Validate First Number */
    while(!firstNum || !firstNum.match(/^\d+$/)) {
        firstNum = prompt('Enter the first number you want to calculate with.', '');
        if(firstNum === '') err('You didn\'t enter anything.');
        else if(firstNum) {
            if(!firstNum.match(/^\d+$/)) err('You didn\'t enter a valid number.');
            else {

                /* Validate Second Number */
                while(!secondNum || !secondNum.match(/^\d+$/)) {
                    secondNum = prompt('Enter the second number you want to calculate with.', '');
                    if(secondNum === '') err('You didn\'t enter anything.');
                    else if(secondNum) {
                        if(!secondNum.match(/^\d+$/)) err('You didn\'t enter a valid number.');
                        else {
                            document.getElementById('output').innerHTML = `
                                ${addition(firstNum, secondNum)}<br>
                                ${subtraction(firstNum, secondNum)}<br>
                                ${multiplication(firstNum, secondNum)}<br>
                                ${division(firstNum, secondNum)}<br><br>
                                ${increment(firstNum)}<br>
                                ${decrement(firstNum)}<br>
                            `;
                            break;
                        };
                    } else { alert('You have canceled.'); noData(); break; };
                };
            };
        } else { alert('You have canceled.'); noData(); break; };
    };
} else { alert('You have canceled.'); noData(); };