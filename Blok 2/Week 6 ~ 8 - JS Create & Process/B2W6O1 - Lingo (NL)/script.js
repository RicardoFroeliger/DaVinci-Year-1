let letters = null;
const createElement = (element, Class, target, text) => {
    let elm = document.createElement(element);
    if(text) elm.appendChild(document.createTextNode(text));
    elm.classList.add(Class);
    target.appendChild(elm);
    return elm;
};


window.onload = () => {
    let mainDiv = createElement('div', 'letterSelector', document.body);
    createElement('h1', 'selectorH1', mainDiv, 'Selecteer het aantal letters waarmee u wilt spelen');
    
    let btnDiv = createElement('div', 'selectorDiv', mainDiv);
    btnDiv.style.height = 'calc(25vmin - (5vmin / 3))';
    for(let i = 0; i < 5; i++) {
        let btn = createElement('button', 'selectorBtn', btnDiv, i + 5);
        btn.onclick = () => {
            letters = i + 5;
            mainDiv.parentNode.removeChild(mainDiv);
            startGame();
        };
    };
};


const startGame = () => {
    let randomWord = words[letters][Math.floor(Math.random() * words[letters].length)].toUpperCase();
    let guessedLetters = [randomWord[0]], goodLetters = [randomWord[0]];
    let editIndex = 1, tries = 0, gameEnded = false;
    

    /* -------------- Create Body of Board -------------- */
    let board = createElement('div', 'board', document.body);
    board.style.width = `${letters * 16}vmin`;
    console.log(randomWord);

    let letterBoxes = [];
    for(let i = 0; i < letters * 5; i++) {
        let box = createElement('div', 'letterBox', board, null);
        if(i < letters) box.appendChild(document.createTextNode(i % letters == 0 ? randomWord[0] : '.'));
        letterBoxes.push(box);
    };
    /* -------------- Create Body of Board -------------- */

    
    /* ------------------ Key Listener ------------------ */
    document.addEventListener('keyup', e => {
        let key = e.key.toUpperCase(), alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        let currentBox = letterBoxes[editIndex], lastBox = letterBoxes[editIndex - 1];

        if(alphabet.includes(key) && editIndex < letters * (tries + 1) && gameEnded == false) {
            currentBox.replaceChild(document.createTextNode(key), currentBox.childNodes[0]);
            guessedLetters.push(e.key.toUpperCase());
            editIndex++;
        } else if(key == 'BACKSPACE' && editIndex > letters * tries && gameEnded == false) {
            lastBox.replaceChild(document.createTextNode('.'), lastBox.childNodes[0]);
            guessedLetters.pop();
            editIndex--;
        } else if(key == 'ENTER' && editIndex == letters * (tries + 1) && tries < 5 && gameEnded == false) {
            letterChecker();
            createNewRow();
            tries++;
        };

        for(const B of letterBoxes) B.style.opacity = '100%';
        if(letterBoxes[editIndex] && letterBoxes[editIndex].childNodes[0]) letterBoxes[editIndex].style.opacity = '50%';   
    });
    /* ------------------ Key Listener ------------------ */
    

    /* ----------------- Letter Checker ----------------- */
    const letterChecker = () => {
        let wordChars = randomWord.split('');
        for(let C in wordChars) {
            C = parseInt(C);
            let pos = guessedLetters.indexOf(wordChars[C]);
            if(wordChars[C] == guessedLetters[C]) {
                letterBoxes[C + (tries * letters)].style.background = '#df2936';
                letterBoxes[C + (tries * letters)].style.borderRadius = '10%';
                guessedLetters[C] += '✅';
                wordChars[C] += '✔️';
            } else if(pos != -1) {
                letterBoxes[pos + (tries * letters)].style.background = '#d4b648';
                letterBoxes[pos + (tries * letters)].style.borderRadius = '50%';
                guessedLetters[pos] += '🟡';
            };
        };
    };
    /* ----------------- Letter Checker ----------------- */

    
    /* ----------------- Create New Row ----------------- */
    const createNewRow = () => {
        
        /* Converts guessedLetters to goodLetters if they are correct */
        for(let i = 0; i < letters; i++) {
            if(!goodLetters[i] || goodLetters[i] == '.') 
                goodLetters[i] = guessedLetters[i].includes('✅') ? guessedLetters[i][0] : '.';
        };

        if(randomWord != guessedLetters.join('').replaceAll('✅', '')) {

            /* Creates the new row */            
            for(let i = 0; i < letters; i++) {
                if(letterBoxes[i + editIndex]) {
                    letterBoxes[i + editIndex].appendChild(document.createTextNode(goodLetters[i]));
                } else if(i == 0) endGame('lost');
            };

            /* Change the editIndex depending on the correct guesses */
            guessedLetters = []; 
            for(let i = 0; i < letters; i++) {
                if(goodLetters[i] != '.') {
                    guessedLetters.push(goodLetters[i]);
                    editIndex++;
                } else i = letters;
            };
            
        } else endGame('won');
    };
    /* ----------------- Create New Row ----------------- */


    /* -------------- Shows Result of Game -------------- */
    const endGame = result => {
        let endDiv = createElement('div', 'endDiv', document.body);
        createElement('h1', 'endDiv', endDiv, `You ${result}!`);
        if(result == 'won') createElement('h2', 'endDiv', endDiv, `Je hebt het woord geraden in ${tries + 1} ${tries == 0 ? 'poging' : 'pogingen'}.`);
        else createElement('h2', 'endDiv', endDiv, `Het correcte woord was ${randomWord.toLowerCase()}.`);
        gameEnded = true;
    };
    /* -------------- Shows Result of Game -------------- */
};