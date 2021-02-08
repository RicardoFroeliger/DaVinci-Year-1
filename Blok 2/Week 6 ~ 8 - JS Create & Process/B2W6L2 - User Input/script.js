setTimeout(() => {
    let names = document.getElementById('names');
    let namesReversed = document.getElementById('namesReversed');
    let nameArr = [];

    let quantity = null;
    const askMaximum = () => {
        let qty = prompt('How many names do you want to put in the array? (atleast 3).');
        if(qty) {
            qty = qty.trim();
            if(!qty.match(/^\d+$/)) {
                alert('You have not entered a valid number.');
                askMaximum();
            } else if(qty < 3 || qty > 10) {
                alert('You must enter between 3 and 10 names.');
                askMaximum();
            } else quantity = qty;            
        } else {
            names.innerHTML = 'You canceled.';
            quantity = 0;
        };
    };
    askMaximum();

    for(let i = 0; i < quantity; i++) {
        const askName = () => {
            let name = prompt(`Enter name ${i + 1}:`);
            if(name) {
                name = name.trim();
                if(name.match(/^\d+$/)) {
                    alert('You have not entered a valid name.');
                    askName();
                } else {
                    nameArr.push(name);
                    names.innerHTML = `The names entered in the array are:<br>${nameArr.join(', ')}`;
                    nameArr = nameArr.reverse();
                    namesReversed.innerHTML = `The names entered in the array in reverse order are:<br>${nameArr.join(', ')}`;
                    nameArr = nameArr.reverse();
                };
            } else { 
                names.innerHTML = 'You canceled.'; 
                namesReversed.innerHTML = '';
                quantity = 0;
            };
        };
        setTimeout(() => askName(), 10);
    };    
}, 500);