setTimeout(() => {
    let button_clicked = [0, 0, 0],
    image = document.getElementById('image');
    bgImage = document.getElementById('bgImage');
    
    let createButton = num => {
        let button = document.getElementById(`button_${num}`);
        button.addEventListener('click', () => {
            button_clicked[num - 1]++;
            button.value = button_clicked[num - 1];
            
            image.src = `images/${num}.jpg`;
            image.alt = `Image of number ${num}`;
            bgImage.src = `images/bg${num}.jpg`;
            bgImage.alt = `Background image of number ${num}`;
        });
    };

    for(let i = 1; i <= 3; i++) createButton(i);
}, 100);