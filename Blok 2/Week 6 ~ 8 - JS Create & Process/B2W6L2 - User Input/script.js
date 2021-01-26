setTimeout(() => {
    let names = document.getElementById('names');
    let namesReversed = document.getElementById('namesReversed');
    let nameArr = [];
    let continueLoop = true;

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
            continueLoop = false;
        };
    };
    askMaximum();
    
    let askedNames = 0;
    const askName = () => {
        setTimeout(() => {
            let name = prompt(`Enter name ${askedNames + 1}:`);
            if(name) {
                name = name.trim();
                if(name.match(/^\d+$/)) {
                    alert('You have not entered a valid name.');
                    askName();
                } else {
                    nameArr.push(name);
                    names.innerHTML = `The names entered in the array are:<br>${nameArr.join(', ')}`;
                    namesReversed.innerHTML = `The names entered in the array in reverse order are:<br>${nameArr.reverse().join(', ')}`;
                    if(askedNames < quantity - 1) {
                        askedNames++;
                        if(continueLoop == true) askName();
                    };
                };
            } else { 
                names.innerHTML = 'You canceled.'; 
                namesReversed.innerHTML = '';
                continueLoop = false;
            };
        }, 100);    
    };  
    if(continueLoop == true) askName();      
}, 500);