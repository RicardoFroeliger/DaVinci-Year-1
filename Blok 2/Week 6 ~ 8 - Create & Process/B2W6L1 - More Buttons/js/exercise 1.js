window.onload = () => {
    let div = document.getElementById('container');
    const bg = bg => document.body.style.background = bg;
    bg('grey');

    let colors = [
        { val: 'Green', col: '#33ff33' }, 
        { val: 'Red',   col: '#ff3333' },
        { val: 'Blue',  col: '#3333ff' }, 
    ];
    
    for(let i = 0; i < colors.length; i++) {
        let btn = document.createElement('button');
        btn.appendChild(document.createTextNode(colors[i].val));
        btn.style.background = colors[i].col;
        btn.onclick = () => bg(colors[i].col);
        if(i === 0) btn.classList.add('first');
        div.appendChild(btn);
    };
};