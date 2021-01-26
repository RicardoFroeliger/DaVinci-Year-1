setTimeout(() => {
    let allDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    let h3 = num => document.getElementById(`h3_${num}`);

    h3(1).innerHTML = allDays.join(', ');
    for(let i = 0; i < 5; i++) h3(2).innerHTML += (i != 4 ? `${allDays[i]}, ` : allDays[i]);
    for(let i = 5; i < 7; i++) h3(3).innerHTML += (i != 6 ? `${allDays[i]}, ` : allDays[i]);
    h3(4).innerHTML = allDays.reverse().join(', ');
    for(let i = 6; i > 0; i--) h3(5).innerHTML += (i != 1 ? `${allDays[i]}, ` : allDays[i]);
    for(let i = 1; i >= 0; i--) h3(6).innerHTML += (i != 0 ? `${allDays[i]}, ` : allDays[i]);
}, 100);