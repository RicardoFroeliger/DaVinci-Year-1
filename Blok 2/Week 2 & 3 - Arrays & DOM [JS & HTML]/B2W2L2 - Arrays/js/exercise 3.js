setTimeout(() => {
    let tables = [2, 4, 6, 8];
    let output = [];

    for(let i = 0; i < tables.length; i++) {
        output.push(`<br>Multiplication table of ${tables[i]}:`);
        for(let j = 1; j <= 10; j++) {
            output.push(`${j} x ${tables[i]} = ${parseInt(j * tables[i])}`)
        };  
    };

    document.getElementById('h1').innerHTML = `The multiplication tables of ${tables.join(', ')}`;
    document.getElementById('h3').innerHTML = `${output.join('<br>')}`;
}, 100);