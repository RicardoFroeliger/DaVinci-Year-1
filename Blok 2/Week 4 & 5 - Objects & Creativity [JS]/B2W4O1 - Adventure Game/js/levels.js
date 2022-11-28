const loadLevel = (lvl, del) => {
    setBackground('black');
    if(del !== false) deleteLastScene();
    createNewScene(LEVELS[lvl].imageURL);

    setTimeout(() => {
        let allButtons = [];
        for(const BTN of LEVELS[lvl].buttons) {
            let current = createButton(BTN.value, BTN.onclick, BTN.Delete);
            allButtons.push(current);
        };
        positionButtons(allButtons);
    }, 250);
};


const LEVELS = [ 
    {
        imageURL: './media/southernCompound.png',
        buttons: [
            {
                value: 'Mission 1: Fire Bending Test',
                onclick: () => MISSIONS.fireTest(),
            },
            {
                value: 'Go to Frozen Tundra',
                onclick: () => loadLevel(1),
            },
        ],
    },
    {
        imageURL: './media/southernTundra.png',
        buttons: [
            {
                value: 'Go to Southern Compound',
                onclick: () => loadLevel(0),
            },
        ],
    },
];


const MISSIONS = new class Missions {
    fireTest() {
        setBackground('black');
        deleteLastScene();

        setTimeout(() => {
            let fireTestIntro = createTextDiv([
                [1, 'Welcome your fire bending test, Avatar.', 1],
                [2, 'Today you\'ll perform your fire bending test for the White Lotus.\n'+
                'In this test, you will be facing 2 opponents. Your goal is to beat them.', 1],
                [3, '[Click to Continue]'],
            ]);
            textDivContinueListener(fireTestIntro, () => {
                fireTestIntro = createTextDiv([
                    [1, 'Are you sure you\'re ready?', 1],
                    [3, '[Click to Continue]'],
                ]);
                textDivContinueListener(fireTestIntro, () => {
                    let confirmButton = createButton('I\'m ready', () => startFight());
                    let cancelButton = createButton('Not yet', () => loadLevel(0, false));
                    positionButtons([confirmButton, cancelButton]);   
                });
            });
        }, 1000);

        const startFight = () => {
            createNewScene('./media/fireTest_1.png', 'fade-in-out 1.5s ease-in-out');
            setTimeout(() => {
                deleteLastScene();
                createNewScene('./media/fireTest_2.png');

                let hp = { you: 150, op1: 100, op2: 100 };
                const updateFight = first => {
                    let dmgMin = 30 - 1, dmgMax = 35;
                    let dmg = Math.floor(Math.random() * (dmgMax - dmgMin)) + dmgMin + 1;

                    /* -------- Health Points -------- */
                    let hpDiv = createTextDiv([[1, `Your Health: ${hp.you}hp`]], false);
                    hpDiv[0].className = 'centerX'; 

                    if(first === true) hpDiv[1].style.color = 'black';
                    else if(first === false) {
                        hpDiv[1].style.color = 'red';
                        setTimeout(() => hpDiv[1].style.color = 'black', 500);
                    };

                    const updateHP = () => {
                        hp.you -= Math.floor(dmg / 2);
                        setTimeout(() => {
                            deleteElement(hpDiv[0]);
                            updateFight(false);
                        }, 1000);
                    };
                    /* -------- Health Points -------- */

                    let fightButtons = []; 
                    setTimeout(() => {
                        for(let i = 1; i <= 2; i++) {
                            if(hp[`op${i}`] > 0) fightButtons.push(
                                createButton(`Attack Opponent ${i} [${hp[`op${i}`]} hp]`, () => {
                                    hp[`op${i}`] -= dmg;
                                    if(hp.op1 > 0 || hp.op2 > 0) updateHP();
                                    else {
                                        setTimeout(() => {
                                            fireTestCompleted();
                                            deleteElement(hpDiv[0]);
                                        }, 1000);
                                    };
                                },
                            ));
                            positionButtons(fightButtons);
                        };
                    }, 250);
                };
                updateFight(true);
            }, 5000);
        };

        const fireTestCompleted = () => {
            deleteLastScene();
            let fireTestOutro = createTextDiv([
                [1, 'Congratulations Avatar!', 1],
                [2, 'You have passed the test. You will now be able to go to Republic City!', 1],
                [3, '[Click to Continue]'],
            ]);
            textDivContinueListener(fireTestOutro, () => {
                LEVELS[0].buttons[0] = {
                    value: 'Fly to Republic City',
                    onclick: () => console.log('This part is in development'),
                };
                loadLevel(0, false);
            });
        };
    };    
};