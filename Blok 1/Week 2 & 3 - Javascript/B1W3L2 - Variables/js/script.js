const CONFIRM = confirm('Welcome! Please answer 3 questions to continue.');
if(CONFIRM) {
    /* Defines variables to value entered inside prompt */
    let firstname = prompt('Enter your first name.'); 
    let lastname = prompt('Enter your last name.');
    let age = prompt('Enter your age.');

    /* Checks if all questions has been answered */
    if(firstname && lastname && age) {
        /* Displays variables to screen */
        document.getElementById('output').innerHTML = `First name: ${firstname}<br>Last name: ${lastname}<br>Age: ${age}`;
    } else {
        document.getElementById('output').innerHTML = 'You haven\'t answered all questions.';
    };
} else {
    alert('Alright, have a nice day.');
    document.getElementById('output').innerHTML = 'You have canceled.';
};