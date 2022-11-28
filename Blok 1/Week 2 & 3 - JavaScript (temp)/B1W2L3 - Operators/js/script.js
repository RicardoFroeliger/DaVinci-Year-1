let num = prompt('Enter a number to calculate with.');
num = num.trim(); // Removes optional whitespace

if(!num || !num.match(/^\d+$/)) { // Checks if string only contains numbers
    alert('Invalid number! Refresh the page and try again.');
    document.getElementById('tableNum').innerHTML = 'Invalid number! Refresh the page and try again.';
} else {
    num = parseInt(num); // Parses sting to int so you can calculate with it
    
    /* Multiplication Tables */
    let tables = [];
    for(let i = 1; i < 11; i++) tables.push(`${i} x ${num} = ${i * num}`);
    document.getElementById('tableNum').innerHTML = `Multiplication<br>table of: ${num}:`;
    document.getElementById('tables').innerHTML = `${tables.join('<br>')}`;

    /* Calculation */
    let sum = num + 6, 
        mul = sum * 10, 
        div = mul / 5, 
        sub = div - 12;
    document.getElementById('calcNum').innerHTML = `Calculation<br>starting number: ${num}`;
    document.getElementById('calc').innerHTML = (`
        ${num} + 6 = ${sum}<br>
        ${sum} x 10 = ${mul}<br>
        ${mul} / 5 = ${div}<br>
        ${div} - 12 = ${sub}<br>
    `);
};