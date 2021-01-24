window.onload = () => {
    let createElement = (element, Class, target) => {
        let elm = document.createElement(element);
        elm.classList.add(Class);
        target.appendChild(elm);
        return elm;
    };
    
    let pos = 59 /* 0-63 */, tiles = [];
    let board = createElement('div', 'board', document.body);

    for(let i = 0; i < 8; i++) {
        for(let j = 0; j < 8; j++) {
            let tile = createElement('div', 'tile', board); 
            if(i % 2 == 0) tile.style.backgroundColor = j % 2 == 0 ? 'white' : '#7c573d';
            else tile.style.backgroundColor = j % 2 == 0 ? '#7c573d' : 'white';
            if(i == (pos - (pos % 8)) / 8 && j == pos % 8) tile.classList.add('kingTile');
            tiles.push(tile);
        };
    };
    
    document.addEventListener('keydown', e => {
        tiles[pos].classList.remove('kingTile');
        if((e.key == 'w' || e.key == 'ArrowUp') && pos - 8 > -1) pos -= 8;
        if((e.key == 's' || e.key == 'ArrowDown') && pos + 8 < 64) pos += 8; 
        if((e.key == 'a' || e.key == 'ArrowLeft') && pos % 8 != 0) pos--;
        if((e.key == 'd' || e.key == 'ArrowRight') && pos % 8 != 7) pos++;
        tiles[pos].classList.add('kingTile');
    });
};

// tile.id = 'abcdefgh'[j] + (8 - i);
// console.log(tiles[pos].id);

// document.addEventListener('keydown', e => {
//     tiles[pos].classList.remove('kingTile');
//     switch(e.key) {
//         case 'w': if(pos - 8 > -1) pos -= 8; break;
//         case 's': if(pos + 8 < 64) pos += 8; break;
//         case 'a': if(pos % 8 != 0) pos--; break;
//         case 'd': if(pos % 8 != 7) pos++; break;
//     };
//     tiles[pos].classList.add('kingTile');
// });