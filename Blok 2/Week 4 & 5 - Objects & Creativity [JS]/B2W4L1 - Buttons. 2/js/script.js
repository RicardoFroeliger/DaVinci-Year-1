setTimeout(() => {
    let button_clicked = [0, 0, 0, null], // btn1, btn2, btn3, last btn clicked
    image = document.getElementById('image');
    bgImage = document.getElementById('bgImage');
    
    let createButton = num => {
        let button = document.getElementById(`button_${num}`);
        button.addEventListener('click', () => {

            if(button_clicked[3] !== num) {
                button_clicked[num - 1]++;
                button.value = button_clicked[num - 1];

                for(let i = 1; i <= 3; i++) {
                    let eachButton = document.getElementById(`button_${i}`);
                    eachButton.style.backgroundColor = 'lightgrey'; 
                    eachButton.style.cssText = `div.buttons input:hover { background-color: #b7ffb7; cursor: pointer; }`;
                };
                button.style.backgroundColor = '#ff4d4d';
                button.style.cursor = 'not-allowed';
                
                image.src = `images/${num}.jpg`;
                image.alt = `Image of number ${num}`;
                bgImage.src = `images/bg${num}.jpg`;
                bgImage.alt = `Background image of number ${num}`;    
            };

            button_clicked[3] = num; // Set last btn clicked 

        });
    };

    for(let i = 1; i <= 3; i++) createButton(i);
}, 100);