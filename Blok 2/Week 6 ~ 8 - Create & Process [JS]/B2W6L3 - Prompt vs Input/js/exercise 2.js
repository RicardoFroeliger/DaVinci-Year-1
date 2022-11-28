setTimeout(() => {
    let input = document.getElementById('input');
    const output = (size, text) => {
        let h = document.createElement(`h${size}`);
        h.appendChild(document.createTextNode(text));
        document.body.appendChild(h);
    };
    const removeh3 = () => { for(const h3 of document.querySelectorAll('h3')) document.body.removeChild(h3) };

    let quantity = null, lastChange = null;
    setInterval(() => {
        if(input.value !== lastChange) {
            if(input.value.length == 0) {
                removeh3();
            } else if(!input.value.match(/^\d+$/)) {
                removeh3();
                output(3, 'Invalid number!');
            } else if(input.value > 100) {
                removeh3();
                output(3, 'Number is too big!');
            } else {
                removeh3();
                quantity = input.value;
    
                let numberArr = [];
                for(let i = 0; i <= quantity; i++) numberArr.push(i);
    
                for(const IND of numberArr) {
                    let lineOutput = [];
                    for(let i = quantity - IND; i > 0; i--) lineOutput.push(quantity - IND - i);
                    lineOutput.push(quantity - IND);
                    if(quantity) output(3, lineOutput.join(' '));
                };
            };
        };
        lastChange = input.value;
    }, 100);
}, 500);