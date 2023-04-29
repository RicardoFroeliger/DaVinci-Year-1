let nums = [], cards = [], lastPiece = null;
const generateCard = target => {
    let div = document.createElement('div');
    div.classList.add('card');
    div.appendChild(document.createTextNode('\u200b'));
    target.appendChild(div);
    cards.push(div);
    const generateRandomNumber = () => {
        let ranNum = Math.floor((Math.random() * 12) + 1);
        nums.filter(n => n == ranNum).length < 2 ? nums.push(ranNum) : generateRandomNumber();
    };
    generateRandomNumber();
    for(i in nums) cards[i].dataset.card = nums[i];
    div.addEventListener('click', () => {
        div.innerHTML = div.dataset.card;
        div.style.background = 'grey';
        if(lastPiece == null) lastPiece = div;
        else {
            if(lastPiece.dataset.card == div.dataset.card) {
                lastPiece.style.background = div.style.background = 'lime';
                lastPiece = null;  
            } else {
                lastPiece.style.background = div.style.background = 'red';   
                setTimeout(() => {
                    lastPiece.style.background = div.style.background = '#dddddd'; 
                    lastPiece.innerText = div.innerText = '\u200b';
                    lastPiece = null;
                }, 1000);
            };
        };
    });
};
for(let i = 0; i < 4; i++) {
    let subDiv = document.createElement('div');
    for(let j = 0; j < 6; j++) generateCard(subDiv);
    document.body.appendChild(subDiv);
};