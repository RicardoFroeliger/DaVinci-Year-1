// Returns a value with a capital letter
String.prototype.capitalize = function() { 
    return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase(); 
};
const noData = () => document.getElementById('output').innerHTML = 'No data to show!<br>You have not entered atleast 1 name and birthdate.';

/* Variables */
let stop = false, 
    data = [], num = 1,
    colReq, colErr;

/* Collector Function */
function collect(type) {
    if(type === 'name') {
        colReq = num === 1 ? 'Please enter your name.' : `Please enter name ${num}.`;
        colErr = 'Incorrect format! You canceled or didn\'t enter anything.\nPlease refresh this page and re-enter name (s) and date of birth (s).';
    } else if(type === 'bDate') {
        colReq = num === 1 ? 'Please enter your birthdate.' : `Please enter birthdate ${num} (dd-mm-yyyy).`; num++;
        colErr = 'Incorrect format! You canceled or didn\'t enter a valid format.\nBirth dates must be in dd-mm-yyyy format.\nPlease refresh this page and re-enter name (s) and date of birth (s).'
    };

    let collected = prompt(colReq);
    if(collected && collected.toLowerCase() === 'stop') { stop = true; noData(); }
    // Basic filter, depending on what the type is the filter changes.
    else if(type === 'name' ? collected : collected && collected.length >= 10) {
        data.push(collected); 
        console.log(data);
    } else { alert(colErr); stop = true; };
};

/* Finalize / Execute */
if(confirm('Welcome!\nPlease enter the names of people and their date of birth.\nIf done, type \'stop\'.')){
    while(stop === false) {
        collect('name');
        if(stop === false) collect('bDate');
    };
    if(stop === true) {
        let output = [`Hello ${data[0] ? data[0].capitalize() : null}, you entered your date of birth on ${data[1] ? data[1] : null}.<br>`];

        let ind = 2;
        for(let i = 0; i < data.length - 2; i++) {
            if(data[ind] && data[ind + 1]) output.push(`Name ${i + 2}: ${data[ind].capitalize()}, Birthdate: ${data[ind + 1]}.`)
            else if(data[ind]) output.push(`Name ${i + 2}: ${data[ind].capitalize()}.`);
            ind += 2;
        };
        if(data.length >= 2) {
            document.getElementById('output').innerHTML = output.join('<br>');    
        } else noData();
    };
} else { alert('You have canceled.'); noData(); };