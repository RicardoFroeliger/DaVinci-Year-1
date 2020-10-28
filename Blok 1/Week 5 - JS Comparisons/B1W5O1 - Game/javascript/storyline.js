function waterPath() {
    let editH2 = (content) => { document.getElementById('waterStory').innerHTML = content };

    if(path.length == 1) {

        setBackground('url(images/iceberg.png)');
        createElement('h2', 'waterStory', 'center');
        let waterStoryH2 = document.getElementById('waterStory');
        waterStoryH2.appendChild(document.createTextNode('You\'re out at sea catching some fish until you suddenly see a big glowing iceberg.\nWhat are you going to do?')); 
        createButton('Go towards it', 'waterChoice1Left', 'button, choiceButton, leftChoiceButton', 'towards');
        createButton('Continue fishing', 'waterChoice1Right', 'button, choiceButton, rightChoiceButton', 'fishing');                

    };
    if(path[1] === 'towards') {

        if(path.length == 2) {
            
            editH2('You are sailing towards the giant glowing iceberg.'); 
            deleteElement('waterChoice1Left'); deleteElement('waterChoice1Right');
            setTimeout(() => {
                setBackground('url(images/aangIceberg.png)');
                editH2('You see someone frozen in the iceberg!<br>What will you do?');
                createButton('Break the ice', 'waterChoice2LeftTowards', 'button, choiceButton, leftChoiceButton', 'break');
                createButton('Get the F* out', 'waterChoice2RightTowards', 'button, choiceButton, rightChoiceButton', 'run');
            }, speed * 5000);

        };
        if(path[2] === 'break') {

            if(path.length == 3) {

                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('You start continuously hitting the ice with a Water Tribe made whale tooth club.');
                deleteElement('waterChoice2LeftTowards'); deleteElement('waterChoice2RightTowards');
                setTimeout(() => {
                    editH2('*THE ICE BURSTS*');
                    setTimeout(() => {
                        setBackground('url(images/lightbeam.png)');
                        document.getElementById('waterStory').style.color = 'black';
                        editH2('A bright light appears and blinds you for a few seconds.');
                        setTimeout(() => {
                            editH2('You notice the boy inside the iceberg broke free.<br>You talk to the boy and find out he\'s an airbender!');
                            setTimeout(() => {
                                setBackground('black');
                                document.getElementById('waterStory').style.color = 'white';
                                editH2('You have a conversation in which you find out his name is Aang.');
                                setTimeout(() => {
                                    setBackground('url(images/blackSnow.png)');
                                    editH2('Suddenly you see black snow snowing from the sky.<br>You rush back to your village!');
                                    setTimeout(() => {
                                        editH2('A Fire Navy ship is approaching.<br>Will you attack or surrender to the Fire Nation?');
                                        createButton('Attack', 'waterChoice3LeftBreak', 'button, choiceButton, leftChoiceButton', 'attack');
                                        createButton('Surrender', 'waterChoice3RightBreak', 'button, choiceButton, rightChoiceButton', 'surrender');  
                                        createButton('Find Aang', 'waterChoice3CenterBreak', 'button, choiceButton, centerChoiceButton', 'aang');                   
                                    }, speed * 5000);   
                                }, speed * 5000);
                            }, speed * 7000);
                        }, speed * 5000);
                    }, speed * 3000);
                }, speed * 5000);

            };
            if(path[3] === 'attack') {
                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('You attack the Fire Nation!');
                deleteElement('waterChoice3LeftBreak'); deleteElement('waterChoice3RightBreak'); deleteElement('waterChoice3CenterBreak');
                setTimeout(() => {
                    editH2('The Fire Nation easily outdoes you.');
                    setTimeout(() => {
                        setBackground('url(images/aangGliding.png)');
                        document.getElementById('waterStory').style.color = 'black';
                        editH2('While fighting, you see Aang gliding through the air!');
                        setTimeout(() => {
                            editH2('Aang uses some airbending moves and helps you defeat the Fire Nation soldiers!');
                            setTimeout(() => {
                                setBackground('black');
                                document.getElementById('waterStory').style.color = 'white';
                                editH2('But it is too late.. Many of the Water Tribe people have been killed or seriously injured.');
                                setTimeout(() => {
                                    gameover('waterStory');
                                }, speed * 7500);
                            }, speed * 7500);
                        }, speed * 5000);
                    }, speed * 5000);
                }, speed * 5000);

            } else if(path[3] === 'surrender') {

                editH2('You surrender to the Fire Nation.');
                deleteElement('waterChoice3LeftBreak'); deleteElement('waterChoice3RightBreak'); deleteElement('waterChoice3CenterBreak');
                setTimeout(() => {
                    setBackground('url(images/aangGliding.png)');
                    document.getElementById('waterStory').style.color = 'black';
                    editH2('While walking towards the Fire Navy ship,<br>you see someone gliding through the air.<br>Is that Aang?!');
                    setTimeout(() => {
                        editH2('Aang uses some airbending moves and frees you from the Fire Nation soldiers!');
                        setTimeout(() => {
                            setBackground('url(images/snowbending.png)');
                            document.getElementById('waterStory').style.color = 'black';
                            editH2('Aang bends the snow off an iceberg right onto the Fire Nation ship!');
                            setTimeout(() => {
                                editH2('You fly away with Aang, escaping the Fire Nation.');
                                setTimeout(() => {
                                    gamewon('waterStory');
                                }, speed * 5000);
                            }, speed * 5000);
                        }, speed * 5000);
                    }, speed * 10000);
                }, speed * 5000);

            } else if(path[3] === 'aang') {

                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('You hurry to the place where your met Aang,<br>hoping you will find him.');
                deleteElement('waterChoice3LeftBreak'); deleteElement('waterChoice3RightBreak'); deleteElement('waterChoice3CenterBreak');
                setTimeout(() => {
                    editH2('You don\'t much time!<br>Click Aang before the timer runs out! (5sec)');
                    
                    document.getElementById('waterStory').style.color = 'black';
                    setBackground('url(images/aang.png)');

                    let foundAang = false;
                    createElement('input', 'findAangButton', 'button, findAangButton');
                    let findAangButton = document.getElementById('findAangButton');
                    findAangButton.type = 'button';
                    findAangButton.onclick = function() { foundAang = true };
                    setTimeout(() => {
                        if(foundAang === true) {

                            document.getElementById('waterStory').style.color = 'white';
                            setBackground('black');
                            editH2('You found Aang just in time!<br>Aang helps you fight off the Fire Nation.');
                            setTimeout(() => {
                                gamewon('waterStory');
                            }, speed * 5000);

                        } else {

                            document.getElementById('waterStory').style.color = 'white';
                            setBackground('black');
                            editH2('You didn\'t find Aang in time!<br>You return to your village and see everything on fire.');
                            setTimeout(() => {
                                gameover('waterStory');
                            }, speed * 5000);

                        };
                    }, 5000); // MUST HAVE NO SPEED APPLIED, ALWAYS 5SEC!!!
                }, speed * 5000);

            };

        } else if(path[2] === 'run') {

            if(path.length == 3) {

                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('Nope, not gonna bother breakin\' that ice bro,<br>that shit\'s crazy.');
                deleteElement('waterChoice2LeftTowards'); deleteElement('waterChoice2RightTowards');
                setTimeout(() => {
                    editH2('You return to your village, terrified of what you just saw.');
                    setTimeout(() => {
                        setBackground('url(images/blackSnow.png)');
                        editH2('Suddenly black snow starts to snow from the sky.<br>A Fire Navy ship is on their way.');
                        setTimeout(() => {
                            editH2('The Fire Navy ship is approaching.<br>Will you attack or surrender to the Fire Nation?');
                            createButton('Attack', 'waterChoice3LeftRun', 'button, choiceButton, leftChoiceButton', 'attack');
                            createButton('Surrender', 'waterChoice3RightRun', 'button, choiceButton, rightChoiceButton', 'surrender');
                        }, speed * 5000);
                    }, speed * 5000);
                }, speed * 5000);

            };
            if(path[3] === 'attack') {
                
                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('You attack the Fire Nation!');
                deleteElement('waterChoice3LeftRun'); deleteElement('waterChoice3RightRun');
                setTimeout(() => {
                    editH2('But you fail. The Fire Nation easily outdoes you.');
                    setTimeout(() => {
                        gameover('waterStory');
                    }, speed * 5000);
                }, speed * 5000);

            } else if(path[3] === 'surrender') {

                setBackground('black');
                document.getElementById('waterStory').style.color = 'white';
                editH2('You surrender to the Fire Nation.<br>There is no one coming to save you.');
                deleteElement('waterChoice3LeftRun'); deleteElement('waterChoice3RightRun');
                setTimeout(() => {
                    gameover('waterStory');
                }, speed * 5000);

            };

        };
        
    } else if(path[1] === 'fishing') {
        
        if(path.length == 2) {

            setBackground('black');
            document.getElementById('waterStory').style.color = 'white';
            editH2('You return to your village with a whole lot of fish.');
            deleteElement('waterChoice1Left'); deleteElement('waterChoice1Right');
            setTimeout(() => {
                setBackground('url(images/blackSnow.png)');
                editH2('Suddenly black snow starts to snow from the sky.<br>A Fire Navy ship is on their way.');
                setTimeout(() => {
                    editH2('The Fire Navy ship is approaching.<br>Will you attack or surrender to the Fire Nation?');
                    createButton('Attack', 'waterChoice2LeftFishing', 'button, choiceButton, leftChoiceButton', 'attack');
                    createButton('Surrender', 'waterChoice2RightFishing', 'button, choiceButton, rightChoiceButton', 'surrender');
                }, speed * 5000);
            }, speed * 5000);

        };
        if(path[2] === 'attack') {

            setBackground('black');
            document.getElementById('waterStory').style.color = 'white';
            editH2('You attack the Fire Nation!');
            deleteElement('waterChoice2LeftFishing'); deleteElement('waterChoice2RightFishing');
            setTimeout(() => {
                editH2('But you fail. The Fire Nation easily outdoes you.');
                setTimeout(() => {
                    gameover('waterStory');
                }, speed * 5000);
            }, speed * 5000);

        } else if(path[2] === 'surrender') {

            setBackground('black');
            document.getElementById('waterStory').style.color = 'white';
            editH2('You surrender to the Fire Nation.<br>There is no one coming to save you.');
            deleteElement('waterChoice2LeftFishing'); deleteElement('waterChoice2RightFishing');
            setTimeout(() => {
                gameover('waterStory');
            }, speed * 5000);
            
        };

    };    
};