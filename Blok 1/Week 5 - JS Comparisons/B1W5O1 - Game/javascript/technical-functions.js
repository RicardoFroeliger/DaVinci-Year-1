let path = [], colorSwitch;
String.prototype.capitalize = function() { 
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase(); 
};

/* Toggles Color Cycle Of Start Button */
function toggleColor(bool) {
    let colorIndex = 0;
    let colorArray = ['#81D3E8-#173057', '#6E6D2D-#292712', '#D46628-#762815', '#FAD672-#F49547']; 
    if(bool === true) {
        colorSwitch = setInterval(() => {
            let splitColors = colorArray[colorIndex].split('-');
            document.getElementById('startButton').style.background = `linear-gradient(to bottom, ${splitColors[0]}, ${splitColors[1]}`;
            colorIndex < colorArray.length - 1 ? colorIndex++ : colorIndex = 0;
        }, 500);
    } else {
        clearInterval(colorSwitch);
        document.getElementById('startButton').style.background = 'linear-gradient(to right, #66ff33, #00ff77)';
    };
};

/* Creates Button */
function createButton(btnContent, btnId, btnClass, pathPush) {
    let element = document.createElement('input');
    element.type = 'button'; element.value = btnContent;
    element.id = btnId;
    if(btnClass && btnClass.length > 0) {
        btnClass = btnClass.split(', ');
        for(i = 0; i < btnClass.length; i++) { element.classList.add(btnClass[i]); };
    };
    element.onclick = function () { buttonClicked(pathPush) };    
    document.body.appendChild(element);
};

/* Creates Basic Element */
function createElement(elemType, elemId, elemClass) {
    let element = document.createElement(elemType);
    element.id = elemId;
    if(elemClass && elemClass.length > 0) {
        elemClass = elemClass.split(', ');
        for(i = 0; i < elemClass.length; i++) { element.classList.add(elemClass[i]); };
    };
    document.body.appendChild(element);
};

/* Deletes Any Element */
function deleteElement(id) {
    let element = document.getElementById(id);
    element.parentNode.removeChild(element);
};

/* Sets Background */
function setBackground(bg) {
    let element = document.getElementById('background');
    element.style.background = `${bg} no-repeat`;
    element.style.backgroundSize = 'cover';
    element.style.backgroundPosition = '50% 50%';
};