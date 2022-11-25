function editH1(content) { 
    document.getElementById('h1').innerHTML = content;
};    
function error() {
    editH1('You have not answered yes/no or cancelled.<br>Please refresh this page to start over.'); 
};

const CONFIRM = confirm(`Welcome!\nI\'m going to try to guess a cheese by asking you questions.\nPlease only answer with 'yes' or 'no'`);
while(true) {
    if(!CONFIRM) { alert('Alright have a nice day!'); error(); break; };

    const YELLOW = prompt('Is the cheese yellow?');
    if(YELLOW.toLowerCase() === 'yes') {

        const HOLES = prompt('Are there holes in the cheese?');
        if(HOLES.toLowerCase() === 'yes') {

            const EXPENSIVE = prompt('Is the cheese ridiculously expensive?');
            if(EXPENSIVE.toLowerCase() === 'yes') editH1('I think the cheese you have in mind is: Emmental Cheese');
            else if(EXPENSIVE.toLowerCase() === 'no') editH1('I think the cheese you have in mind is: Dutch Leerdammer');
            else { error(); break; };

        } else if (HOLES.toLowerCase() === 'no') {

            const HARD = prompt('Is the cheese hard as stone?');
            if(HARD.toLowerCase() === 'yes') editH1('I think the cheese you have in mind is: Parmigiano-Reggiano');
            else if(HARD.toLowerCase() === 'no') editH1('I think the cheese you have in mind is: Gouda Cheese');
            else { error(); break; };

        } else { error(); break; };

    } else if(YELLOW.toLowerCase() === 'no') {

        const MOLD = prompt('Is there blue mold on the cheese?');
        if(MOLD.toLowerCase() === 'yes') {

            const MOLDCRUST = prompt('Does the cheese have a crust?');
            if(MOLDCRUST.toLowerCase() === 'yes') editH1('I think the cheese you have in mind is: Bleu De Rochebaron');
            else if(MOLDCRUST.toLowerCase() === 'no') editH1('I think the cheese you have in mind is: Fourme d\'Ambert');
            else { error(); break; };

        } else if(MOLD.toLowerCase() === 'no') {

            const CRUST = prompt('Does the cheese have a crust?');
            if(CRUST.toLowerCase() === 'yes') editH1('I think the cheese you have in mind is: Camembert');
            else if(CRUST.toLowerCase() === 'no') editH1('I think the cheese you have in mind is: Mozzarella');
            else { error(); break; };

        } else { error(); break; };

    } else { error(); break; };

    break;
};