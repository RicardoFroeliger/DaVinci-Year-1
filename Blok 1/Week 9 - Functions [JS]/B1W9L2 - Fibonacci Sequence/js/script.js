let output = [], quantity = 100; // Max quantity: 1477 

for(let i = 0; i < quantity - 1; i++) {
    i == 0 ? output.push(0, 1) : output.push(output[i - 1] + output[i]);
};

document.getElementById('output').innerHTML = output.join(', ');