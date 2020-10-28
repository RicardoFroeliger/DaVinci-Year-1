let output = [];
let helloWorld = num => {
    for(let i = 0; i < num; i++) {
        output.push(`${i + 1}. Hello World!`);
    };
};

setTimeout(() => { // Page has to load first
    document.getElementById('output').innerHTML = output.join('<br>');
}, 100);