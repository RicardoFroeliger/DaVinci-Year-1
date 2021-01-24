let output = [], quantity = 20; // Max: 1477 

for(let i = 0; i < quantity - 1; i++) {
    i == 0 ? output.push(0, 1) : output.push(output[i - 1] + output[i]);
};

window.onload = () => document.getElementById('output').innerHTML = output.join(', ');