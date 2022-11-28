window.onload = () => startScreen();


const startScreen = () => {
    setBackground('url("./media/startScreen.png") 50% 30% / cover no-repeat');
    setTimeout(() => {
        let startButton = createButton('Start Game', () => startIntro(1, 5, 5000));
        let helpButton = createButton('Help & Controls', () => helpScreen());
        positionButtons([startButton, helpButton]);
    }, 250);
};


const helpScreen = () => {
    setTimeout(() => {
        let helpText = createTextDiv([
            [1, 'Welcome to the Legend of Korra', 2],
            [2, 'Storyline:', 1],
        ], false);

        /* ---------------- Div Resizer ---------------- */
        const helpTextResizer = () => helpText[0].style.width = `calc(${window.innerWidth}px - 1%)`;
        window.addEventListener('resize', helpTextResizer);
        /* ---------------- Div Resizer ---------------- */

        let btn = document.createElement('button');
        btn.appendChild(document.createTextNode('Back to Start Screen'));
        btn.classList.add('centerX');
        btn.onclick = () => {
            window.removeEventListener('resize', helpTextResizer);
            deleteElement(helpText[0]);
            startScreen();
        };
        helpText[0].appendChild(btn);
    }, 250);
};


const startIntro = (index, imgCount, speed) => {
    setBackground('black');
    playAudio('snowstorm', true);

    const loopImages = () => {
        let introImage = createImage(
            `./media/intro/introImg_${index}.png`, 
            `fade-in-out ${speed / 1000}s ease-in-out`
        );

        /* ---------------- Image Resizer ---------------- */
        const introImageResizer = () => imageResizer(introImage);
        window.addEventListener('resize', introImageResizer);
        /* ---------------- Image Resizer ---------------- */

        setTimeout(() => {
            window.removeEventListener('resize', introImageResizer); 
            deleteElement(introImage);
            if(index < imgCount) {
                index++; loopImages();
                if(index == imgCount) playAudio('snowstorm', true, 0.5);
            } else setTimeout(() => playPrologue(), speed / 2);
        }, speed);
    };

    const playPrologue = () => {
        playAudio('snowstorm', false); 
        let introVideo = createVideo('./media/intro/introVideo.mp4', true);

        /* ---------------- Video Resizer ---------------- */
        const introVideoResizer = () => imageResizer(introVideo);
        window.addEventListener('resize', introVideoResizer);
        /* ---------------- Video Resizer ---------------- */

        introVideo.onended = () => {
            window.removeEventListener('resize', introVideoResizer);
            setTimeout(() => {
                let prologue = createTextDiv([
                    [1, 'You wake up in the Southern Water Tribe Compound.', 1],
                    [2, 'It is where you, Avatar Korra is kept and protected during your training to become a fully realized Avatar.', 1],
                    [3, '[Click to Continue]'],
                ]);
                textDivContinueListener(prologue, () => loadLevel(0, false));
            }, 2000);
        };
    };

    loopImages();
};