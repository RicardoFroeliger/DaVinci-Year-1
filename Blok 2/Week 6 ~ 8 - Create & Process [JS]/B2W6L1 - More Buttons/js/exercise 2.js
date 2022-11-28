window.onload = () => {
    let div = document.getElementById('container');
    for(let i = 0; i < 30; i++) {
        let btn = document.createElement('button');
        btn.appendChild(document.createTextNode(i + 1));
        btn.onclick = () => btn.style.background = '#ff0033';
        div.appendChild(btn);
    };
};