setTimeout(() => {
    let allDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
    allDaysRvsd = ['Sunday', 'Saturday', 'Friday', 'Thursday', 'Wednesday', 'Tuesday', 'Monday'];

    let sortDays = num => {
        let h3 = document.getElementById(`h3_${num}`);
        switch(num) {
            case 1: h3.innerHTML = allDays.join(', '); break;
            case 2: h3.innerHTML = allDays.join(', ').split(`, ${allDays[5]}`)[0]; break;
            case 3: h3.innerHTML = allDays.join(', ').split(`${allDays[4]},`)[1]; break;
            case 4: h3.innerHTML = allDaysRvsd.join(', '); break;
            case 5: h3.innerHTML = allDaysRvsd.join(', ').split(`${allDays[5]},`)[1]; break;
            case 6: h3.innerHTML = allDaysRvsd.join(', ').split(`, ${allDays[4]}`)[0]; break;
        };
    };

    for(let i = 1; i <= 6; i++) sortDays(i);
}, 100);