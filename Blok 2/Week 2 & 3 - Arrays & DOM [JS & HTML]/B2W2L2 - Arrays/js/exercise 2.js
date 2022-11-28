setTimeout(() => {
    let arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    let arr2 = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
    let allCalcs = [];
    
    let addition = (arr1, arr2) => {
        let additionArr = [];
        for(let i = 0; i < 10; i++) additionArr.push(`${arr1[i]} + ${arr2[i]} = ${arr1[i] + arr2[i]}`);
        allCalcs.push(additionArr);
    }, subtract = (arr1, arr2) => {
        let subtractionArr = [];
        for(let i = 0; i < 10; i++) subtractionArr.push(`${arr1[i]} - ${arr2[i]} = ${arr1[i] - arr2[i]}`);
        allCalcs.push(subtractionArr);
    }, multiply = (arr1, arr2) => {
        let multiplicationArr = [];
        for(let i = 0; i < 10; i++) multiplicationArr.push(`${arr1[i]} x ${arr2[i]} = ${arr1[i] * arr2[i]}`);
        allCalcs.push(multiplicationArr);
    }, divide = (arr1, arr2) => {
        let divisionArr = [];
        for(let i = 0; i < 10; i++) divisionArr.push(`${arr1[i]} / ${arr2[i]} = ${arr1[i] / arr2[i]}`);
        allCalcs.push(divisionArr);
    };

    addition(arr1, arr2);
    subtract(arr2, arr1);
    multiply(arr1, arr2);
    divide(arr2, arr1);

    for(let i = 0; i < allCalcs.length; i++) {
        document.getElementById(`h4_${parseInt(i + 1)}`).innerHTML = allCalcs[i].join('<br>');    
    };
}, 100);