if(confirm('Welcome! Please answer 3 questions to continue.')) {
    
    /* Displays variables to screen */
    document.getElementById('output').innerHTML = `
    First name: ${prompt('Enter your first name.')}<br>
    Last name: ${prompt('Enter your last name.')}<br>
    Age: ${prompt('Enter your age.')}`;

} else {
    alert('Alright, have a nice day.');
    document.getElementById('output').innerHTML = 'You have canceled.';
};