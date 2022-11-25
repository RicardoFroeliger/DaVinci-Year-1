let questions = [];
function editH1(content) { document.getElementById('question').innerHTML = content; };

function answer(bool) {
    questions.push(bool);
    if(questions[0] === true) {

        editH1('Okay great so the cheese is yellow. Are there holes in the cheese?');
        if(questions[1] === true) {
            
            editH1('The cheese is yellow with holes. Is the cheese ridiculously expensive?');
            if(questions[2] === true) editH1('I think the cheese you have in mind is:<br>Emmental Cheese, Am I right?');
            else if(questions[2] === false) editH1('I think the cheese you have in mind is:<br>Dutch Leerdammer, Am I right?');
            
        } else if(questions[1] === false) {

            editH1('The cheese is yellow without holes. Is the cheese hard as stone?');
            if(questions[2] === true) editH1('I think the cheese you have in mind is:<br>Parmigiano-Reggiano, Am I right?');
            else if(questions[2] === false) editH1('I think the cheese you have in mind is:<br>Gouda Cheese, Am I right?');
            
        };
    } else {

        editH1('Okay great so the cheese is not yellow. Is there blue mold on the cheese?');
        if(questions[1] === true) {

            editH1('The cheese is not yellow and has blue mold. Does the cheese have a crust?');
            if(questions[2] === true) editH1('I think the cheese you have in mind is:<br>Bleu De Rochebaron, Am I right?');
            else if(questions[2] === false) editH1('I think the cheese you have in mind is:<br>Fourme d\'Ambert, Am I right?');

        } else if(questions[1] === false) {

            editH1('The cheese is not yellow and has no blue mold. Does the cheese have a crust?');
            if(questions[2] === true) editH1('I think the cheese you have in mind is:<br>Camembert, Am I right?');
            else if(questions[2] === false) editH1('I think the cheese you have in mind is:<br>Mozzarella, Am I right?');

        };
    };
    if(questions[3] === true || questions[3] === false) {
        document.getElementById('leftButton').style.backgroundColor = 'darkgrey';
        document.getElementById('rightButton').style.backgroundColor = 'darkgrey';    
    };
    if(questions[3] === true) editH1('Glad I guessed right!');
    else if(questions[3] === false) editH1('Sad to hear! I\'m sorry I guessed wrong.');
};

function createButtons() {
    /* Deletes Continue Button */
    let centerButton = document.getElementById('centerButton');
    centerButton.parentNode.removeChild(centerButton);
    
    /* Creates Yes Button */
    let leftButton = document.createElement('input');
    leftButton.type = 'button'; leftButton.value = 'Yes';

    leftButton.classList.add('button', 'leftButton');
    leftButton.id = 'leftButton';
    leftButton.onclick = function() {answer(true)}; 
    document.body.appendChild(leftButton);

    /* Creates No Button */
    let rightButton = document.createElement('input');
    rightButton.type = 'button'; rightButton.value = 'No';

    rightButton.classList.add('button', 'rightButton');
    rightButton.id = 'rightButton';
    rightButton.onclick = function() {answer(false)}; 
    document.body.appendChild(rightButton);

    /* Edits H1 */
    editH1('Let\'s start with the color, is the cheese yellow?');
};