/* Variables */
let firstNum, secondNum;

/* Functions */
let addition = (num1, num2) => {
    return `${num1} + ${num2} = ${parseInt(num1) + parseInt(num2)}`; 
}, subtraction = (num1, num2) => {
    return `${num1} - ${num2} = ${parseInt(num1) - parseInt(num2)}`;
}, multiplication = (num1, num2) => {
    return `${num1} x ${num2} = ${parseInt(num1) * parseInt(num2)}`;  
}, division = (num1, num2) => {
    return `${num1} / ${num2} = ${(parseInt(num1) / parseInt(num2)).toFixed(2)}`; // round 2 decimals
}, increment = num => {
    return `${num} + 1 = ${parseInt(num) + 1}`;  
}, decrement = num => {
    return `${num} - 1 = ${parseInt(num) - 1}`;   
}, modules = (num1, num2) => {
    return `${num1} % ${num2} = ${parseInt(num1) % parseInt(num2)}`; // modules operator / division remainder   
};

/* Finalize / Execute */
setTimeout(() => {
    let noData = () => document.getElementById('output').innerHTML = 'No data to show! You canceled.';
    let err = content => alert(`${content}\nPlease try again.`);
    
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
                                    ${modules(firstNum, secondNum)}<br>
                                `;
                                break;
                            };
                        } else { alert('You have canceled.'); noData(); break; };
                    };
                };
            } else { alert('You have canceled.'); noData(); break; };
        };
    } else { alert('You have canceled.'); noData(); };
}, 100);