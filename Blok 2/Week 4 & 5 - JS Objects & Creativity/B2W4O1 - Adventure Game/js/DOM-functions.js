const setBackground = bg => document.body.style.background = bg;
const deleteElement = elmnt => document.body.removeChild(elmnt); 


/* -------------- AUDIO -------------- */
const audio = document.createElement('audio');
const playAudio = (source, play, volume) => {
    audio.src = `./media/audio & fonts/${source}.mp3`;
    volume ? audio.volume = volume : audio.volume = 1; 
    audio.loop = 'loop'; audio.load();
    if(play === true) audio.play();
    else if(play === false) audio.pause();
};
/* -------------- AUDIO -------------- */



/* ----------------- BUTTONS ----------------- */
const createButton = (text, onclick, Delete) => {
    let btn = document.createElement('button');
    btn.appendChild(document.createTextNode(text));
    btn.classList.add('center');
    btn.onclick = onclick;
    btn.addEventListener('click', () => {
        let buttons = []; 
        for(const BTN of document.getElementsByTagName('button')) {
            if(Delete) {
                if(Delete === 'all') buttons.push(BTN);
                else if(Delete === 'others') { if(BTN !== btn) buttons.push(BTN) }
                else if(Delete === 'self') { if(BTN === btn) buttons.push(BTN) };
            } else buttons.push(BTN);
        };
        for(const BTN of buttons) deleteElement(BTN);
    });
    document.body.appendChild(btn);
    return btn;  
};


const positionButtons = (buttons) => {
    let topValEven = (buttons.length / 2) * 5;
    let topValOdd = ((buttons.length - 1) / 2) * 10;
    for(const BTN of buttons.reverse()) {
        if(buttons.length % 2 === 0) {
            BTN.style.top = `calc(50% + ${topValEven}vh)`;
            topValEven -= 10;
        } else if(buttons.length % 2 === 1) {
            BTN.style.top = `calc(50% + ${topValOdd}vh)`;
            topValOdd -= 10;
        };
    };
};
/* ----------------- BUTTONS ----------------- */



/* --------- IMAGES & VIDEO --------- */
const createImage = (src, animation) => {
    let img = document.createElement('img');
    img.src = src;
    img.classList.add('center');
    img.style.height = `calc(${window.innerHeight}px - 1%)`;
    img.style.width = `calc(${Math.floor((window.innerHeight / 27) * 48)}px - 1%)`;
    if(animation) img.style.animation = animation;
    document.body.appendChild(img);
    return img;
};


let lastScenes = [];
const deleteLastScene = () => {
    window.removeEventListener('resize', lastScenes[lastScenes.length - 1][1]);
    deleteElement(lastScenes[lastScenes.length - 1][0]);  
};
const createNewScene = (image, animaton) => {
    let scene = createImage(image, animaton ? animaton : 'fade-in 1.5s ease-in');
    lastScenes.push([scene, () => imageResizer(scene)]);
    window.addEventListener('resize', lastScenes[lastScenes.length - 1][1]); 
    if(lastScenes.length > 2) lastScenes.shift();
};


const imageResizer = (img) => {
    img.style.height = `calc(${window.innerHeight}px - 1%)`;
    img.style.width = `calc(${Math.floor((window.innerHeight / 27) * 48)}px - 1%)`;
};


const createVideo = (src, play) => {
    let vid = document.createElement('video');
    vid.src = src;
    vid.classList.add('center');
    vid.style.height = `calc(${window.innerHeight}px - 1%)`;
    vid.style.width = `calc(${Math.floor((window.innerHeight / 27) * 48)}px - 1%)`;
    vid.load(); if(play !== false) vid.play();
    vid.addEventListener('ended', () => deleteElement(vid));
    document.body.appendChild(vid);
    return vid;
};
/* --------- IMAGES & VIDEO --------- */



/* ------------- TEXT DIVS ------------- */
const createTextDiv = (text, animation) => {
    let div = document.createElement('div');
    let allElements = [div];
    for(const LINE of text) {
        let h = document.createElement(`h${LINE[0]}`);
        h.appendChild(document.createTextNode(LINE[1]));
        h.style.fontSize = `${(7 - LINE[0]) * 1}vmin`;
        if(LINE[2]) h.style.marginBottom = `${LINE[2] * 5}vmin`;
        div.appendChild(h); 
        allElements.push(h);
    };
    div.classList.add('center');
    div.style.width = `calc(${window.innerWidth}px - 1%)`;
    if(animation !== false) div.style.animation = 'fade-in 1.5s ease-in';
    document.body.appendChild(div);
    return allElements;
};


const textDivContinueListener = (div, onContinue) => {
    const resizer = () => div[0].style.width = `calc(${window.innerWidth}px - 1%)`;
    const Continue = () => {
        window.removeEventListener('resize', resizer);
        window.removeEventListener('click', Continue);
        deleteElement(div[0]);
        const customFunc = onContinue; 
        customFunc();
    };
    window.addEventListener('resize', resizer);
    setTimeout(() => window.addEventListener('click', Continue), 2000);
};
/* ------------- TEXT DIVS ------------- */



// const createLockedButton = (text, onclick, id) => {
//     let btn = document.createElement('button');
//     let i = document.createElement('i');
//     i.classList.add('fas', 'fa-lock');
//     btn.appendChild(i);
//     btn.id = id;
//     btn.classList.add('center');

//     let oldText = document.createTextNode(` ${text}`);
//     let newText = document.createTextNode(` ${onclick}`);
//     let clicked = false;
//     btn.appendChild(oldText);

//     btn.onclick = () => {
//         if(clicked == false) {
//             clicked = true;
//             btn.style.color = '#ff0022';
//             btn.replaceChild(newText, oldText);
//             setTimeout(() => {
//                 clicked = false;
//                 btn.style.color = 'black';
//                 btn.replaceChild(oldText, newText);
//             }, 3000);    
//         };
//     };

//     document.body.appendChild(btn);
//     return btn;
// };