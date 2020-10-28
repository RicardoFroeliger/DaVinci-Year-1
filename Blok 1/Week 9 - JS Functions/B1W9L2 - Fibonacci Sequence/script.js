let output = [], quantity = 20;

for(let i = 0; i < quantity - 1; i++) {
    i == 0 ? output.push(0, 1) : output.push(output[i - 1] + output[i]);
};

setTimeout(() => {
    document.getElementById('output').innerHTML = output.join(', ');
}, 100);