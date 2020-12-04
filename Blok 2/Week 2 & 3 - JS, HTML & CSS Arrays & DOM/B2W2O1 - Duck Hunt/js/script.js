setTimeout(() => {
    let duck = document.getElementById('duck'),
    stage = document.getElementById('stage'),
    score = document.getElementById('scoreHitMiss'),
    crosshair = document.getElementById('crosshair'),

    position = [0, 0], // X, Y
    scorePoints = [0, 0], // Hit, Miss
    lastShotHit = false, // Did you hit the last shot?
    loopAfterClick = true; // Stops functions from executing after 20 shots

    /* Duck Movement Randomizer */
    let moveDuck = async (directions, hideDuck) => {
        let randomDir = directions[Math.floor(Math.random () * directions.length)];
        switch(randomDir) {
            case 'N': 
                if(position[1] < 225) {
                    position[1] += 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                };
            break;
            case 'NE': 
                if(position[1] < 225 && position[0] < 450) {
                    position[1] += 75; position[0] += 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = 'translate(-50%, -50%) scaleX(1)';
                } else if(hideDuck === true) duck.style.visibility = 'hidden';
            break;
            case 'E':
                if(position[0] < 450) {
                    position[0] += 75;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = 'translate(-50%, -50%) scaleX(1)';
                } else if(hideDuck === true) duck.style.visibility = 'hidden';
            break;
            case 'SE':
                if(position[1] > -75 && position[0] < 450) {
                    position[1] -= 75; position[0] += 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = 'translate(-50%, -50%) scaleX(1)';
                };
            break;
            case 'S':
                if(position[1] > -75) {
                    position[1] -= 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                } else if(hideDuck === true) duck.style.visibility = 'hidden';
            break;
            case 'SW':
                if(position[1] > -75 && position[0] > -450) {
                    position[1] -= 75; position[0] -= 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = 'translate(-50%, -50%) scaleX(-1)';
                };
            break;
            case 'W':
                if(position[0] > -450) {
                    position[0] -= 75;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = `translate(-50%, -50%) scaleX(-1)`;
                };
            break;
            case 'NW': 
                if(position[1] < 225 && position[0] > -450) {
                    position[1] += 75; position[0] -= 75;
                    duck.style.top = `calc(50% - ${position[1]}px)`;
                    duck.style.left = `calc(50% + ${position[0]}px)`;
                    duck.style.transform = 'translate(-50%, -50%) scaleX(-1)';
                };
            break;
        };
    };

    /* Game Over Screens */
    let gameover = () => {
        let scoreBox = document.getElementById('score'),
        gameover = document.getElementById('gameover'),
        gameoverText = document.getElementById('gameoverText'),
        gameoverReason = document.getElementById('gameoverReason'),
        gameoverScore = document.getElementById('gameoverScore');

        let displayGOScreen = async (text, reason) => {
            scoreBox.style.visibility = 'hidden';
            gameover.style.visibility = 'visible';
            gameoverText.innerHTML = `YOU ${text}!`;
            gameoverReason.innerHTML = `You ${reason} 10 times`;
            gameoverScore.innerHTML = `Final score: ${scorePoints[0]}`;
        };
 
        if(scorePoints[0] >= 10 && loopAfterClick === true) { // WON
            loopAfterClick = false;
            if(lastShotHit === true) duck.src = 'images/explosion.gif';
            else if(lastShotHit === false) setInterval(() => moveDuck(['S'], true), 200);
            setTimeout(() => displayGOScreen('WON', `shot the duck ${scorePoints[0] > 10 ? 'over': ''}`), 2000);
        } 
        else if(loopAfterClick === true) { // LOST
            loopAfterClick = false;
            setInterval(() => moveDuck(['NE', 'E'], true), 200); // The duck flies away bacially 
            setTimeout(() => displayGOScreen('LOST', 'did not shoot the duck atleast'), 2000);
        };
    };





    /* Moving The Duck */
    let move = setInterval(() => {
        moveDuck(['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW']);
    }, 750);

    /* Event: 'Click' Listeners */
    duck.addEventListener('click', () => {scorePoints[0]++; lastShotHit = true});
    stage.addEventListener('click', () => {scorePoints[1]++; lastShotHit = false});
    document.addEventListener('click', () => {
        let shotsFired = scorePoints[0] + scorePoints[1];
        if(shotsFired >= 20) { clearInterval(move); gameover(); };
        if(shotsFired <= 20) score.innerHTML = `${scorePoints.join('<br>')}`;

        /* Crosshair Increases Quickly When Shot */
        crosshair.style.height = '75px';
        crosshair.style.width = '75px';
        setTimeout(() => {
            crosshair.style.height = '50px';
            crosshair.style.width = '50px';
        }, 50);
    });

    /* Crosshair Movement */
    document.addEventListener('mousemove', e => {
        let chX = e.clientX;
        let chY = e.clientY;
        
        let borderLeft = ((window.innerWidth - 1000) / 2) + 30;
        let borderRight = (((window.innerWidth - 1000) / 2) + 1000) - 30;
        let borderTop = ((window.innerHeight - 600) / 2) + 30;
        let borderBottom = (((window.innerHeight - 600) / 2) + 600) - 30;

        if(chX > borderLeft && chX < borderRight) crosshair.style.left = `${chX}px`;
        if(chY > borderTop && chY < borderBottom) crosshair.style.top = `${chY}px`;   
    });
}, 100);