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
    // startGame();
};

const startGame = () => {
    let randomWord = words[letters][Math.floor(Math.random() * words[letters].length)].toUpperCase();
    let guesses = { editIndex: 1, letters: [randomWord[0]], goodLetters: [] };
    

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
        let currentBox = letterBoxes[guesses.editIndex], lastBox = letterBoxes[guesses.editIndex - 1];

        if(alphabet.includes(key) && currentBox && currentBox.childNodes[0]) {
            currentBox.replaceChild(document.createTextNode(key), currentBox.childNodes[0]);
            guesses.letters.push(e.key.toUpperCase());
            guesses.editIndex++;
            
        } else if(key == 'BACKSPACE' && lastBox && lastBox.childNodes[0] && lastBox.id !== 'rowUsed') {
            lastBox.replaceChild(document.createTextNode('.'), lastBox.childNodes[0]);
            guesses.letters.pop();
            guesses.editIndex--;
        } else if(key == 'ENTER' && guesses.letters.length == letters) {
            letterChecker();
            createNewRow();
            console.log(guesses)
        };

        for(const B of letterBoxes) B.style.opacity = '100%';
        if(letterBoxes[guesses.editIndex].childNodes[0]) letterBoxes[guesses.editIndex].style.opacity = '50%';   
    });
    /* ------------------ Key Listener ------------------ */
    

    /* ----------------- Letter Checker ----------------- */
    const letterChecker = () => {
        let wordChars = randomWord.split(''), inputChars = guesses.letters;
        for(const C in wordChars) {
            let pos = inputChars.indexOf(wordChars[C]);
            if(wordChars[C] === inputChars[C]) {
                letterBoxes[C].style.background = '#df2936';
                letterBoxes[C].style.borderRadius = '10%';
                wordChars[C] += '✅';
                inputChars[C] += '✔️';
            } else if(pos !== -1) {
                letterBoxes[pos].style.background = '#d4b648';
                letterBoxes[pos].style.borderRadius = '50%';
                wordChars[pos] += '🟡';
            };
        };
    };
    /* ----------------- Letter Checker ----------------- */

    
    /* ----------------- Create New Row ----------------- */
    const createNewRow = () => {
        for(let i = 0; i < letters; i++) {
            guesses.goodLetters[i] = guesses.letters[i].includes('✔️') ? guesses.letters[i][0] : '.';
            letterBoxes[i + guesses.editIndex].appendChild(document.createTextNode(guesses.goodLetters[i]));  
            // letterBoxes[i + guesses.editIndex - letters].id = 'rowUsed';
        };
    };
    /* ----------------- Create New Row ----------------- */
};