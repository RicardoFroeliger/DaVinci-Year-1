window.onload = () => {
    let div = document.getElementById('container');
    let btnColors = ['#ff0033', '#9900cc', '#3300ff'];
    let btnClicks = [];

    for(let i = 0; i < 30; i++) {
        let btn = document.createElement('button');
        btn.appendChild(document.createTextNode(i + 1));
        btn.onclick = () => {
            btnClicks[i]++;
            if(btnClicks[i] <= btnColors.length) btn.style.background = btnColors[btnClicks[i] - 1];
            else if(btnClicks[i] == btnColors.length + 1) {
                tn.style.background = 'black'; 
                btn.style.color = 'white';
            } else btn.parentNode.removeChild(btn);
        };
        div.appendChild(btn);
        btnClicks.push(0);
    };
};