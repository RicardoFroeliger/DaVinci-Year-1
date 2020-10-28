let speed = 0.8; // 1 = default,  0.5 = quick read,  0.01 = skip story text

/* Triggers When Element Button Is Clicked */
function startGame() {
    path.push('water');
    deleteElement('strokeText');
    toggleColor(false);
    deleteElement('startButton');
    
    /* Starts Storyline */
    setTimeout(() => {
        /* Blackscreens */
        document.getElementById('background').style.background = 'black';
        setTimeout(() => {

            /* Creates Intro H1 */
            createElement('h1', 'intro', 'center, intro');
            let intro = document.getElementById('intro');
            intro.style.color = 'white'; intro.style.top = '40%';
            intro.appendChild(document.createTextNode(`You wake up as a water bender..`)); 
            
            setTimeout(() => {

                /* Creates Intro Description (H3) */
                createElement('h3', 'introDesc', 'center');
                let introDesc = document.getElementById('introDesc');
                introDesc.style.color = 'white'; introDesc.style.top = '55%';

                /* Plays Intro Description */
                
                document.getElementById('intro').innerHTML = 'Water is the element of change.';
                introDesc.appendChild(document.createTextNode('The people of the Water Tribe are capable of adapting to many things. '+
                'They have a deep sense of community and love that holds them together through anything.'));

                /* Starts Path */
                setTimeout(() => {
                    deleteElement('intro');
                    deleteElement('introDesc');
                    setTimeout(() => {
                        waterPath();
                    }, speed * 3000);
                }, speed * 10000);
            }, speed * 5000);
        }, speed * 2000);
    }, speed * 1000);
};

/* Triggers When A Choice Button Is Chicked */
function buttonClicked(pathPush) {
    path.push(pathPush);
    waterPath();
    console.log(path);
};

/* Triggers When Called Inside Path Function */
function gameover(id) {
    if(id) deleteElement(id);
    createElement('h1', 'strokeText', 'center');
    let gameover = document.getElementById('strokeText');
    gameover.style.color = 'white';
    gameover.style.top = '50%';
    gameover.appendChild(document.createTextNode('GAME OVER')); 
    setBackground('url(images/zuko.png)');
};

/* Triggers When Called Inside Path Function */
function gamewon(id) {
    if(id) deleteElement(id);
    createElement('h1', 'strokeText', 'center');
    let gamewon = document.getElementById('strokeText');
    gamewon.appendChild(document.createTextNode('Congratulations you won!')); 
    setBackground('url(images/avatarState.png)')
};