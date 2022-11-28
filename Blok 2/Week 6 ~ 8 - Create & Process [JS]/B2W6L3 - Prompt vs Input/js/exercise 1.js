setTimeout(() => {
    const output = (size, text) => {
        let h = document.createElement(`h${size}`);
        h.appendChild(document.createTextNode(text));
        document.body.appendChild(h);
    };

    let quantity = null;
    const askNum = () => {
        let qty = prompt('Enter a number.');
        if(qty) {
            qty = qty.trim();
            if(!qty.match(/^\d+$/)) {
                alert('You have not entered a valid number.');
                askNum();
            } else if(qty < 3 || qty > 50) {
                alert('You must enter a number between 3 and 50.');
                askNum();
            } else quantity = qty;            
        } else output(1, 'You canceled');
    };
    askNum();

    let numberArr = [];
    for(let i = 0; i <= quantity; i++) numberArr.push(i);

    for(const IND of numberArr) {
        let lineOutput = [];
        for(let i = 0; i <= IND; i++) lineOutput.push(i);
        if(quantity) output(3, lineOutput.join(' '));
    };
}, 500);