let output = [];
function helloWorld(num) {
    for(let i = 0; i < num; i++) output.push(`${i + 1}. Hello World!`);
};

helloWorld(3);
document.getElementById('output').innerHTML = output.join('<br>');