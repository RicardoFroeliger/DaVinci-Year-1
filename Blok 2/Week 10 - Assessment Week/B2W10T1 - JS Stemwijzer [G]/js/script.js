window.onload = () => {
    let stemwijzer = document.getElementById('stemwijzer');
    let agrees = [0, 0], selected = null, propositions = [
        'Nederland moet terug naar de Gulden',
        'Er moet meer geld naar ontwikkelingshulp',
        'De overheid moet afslanken',
        'De AOW leeftijd moet terug naar 67 jaar',
        'Er moeten minder vluchtelingen opgenomen worden',
        'Wietteelt moet worden gelegaliseerd',
        'Er moet meer geld naar zorg en onderwijs',
        'We moeten minder geld aan het leger uitgeven',
        'Alle werkenden moeten minder loonbelasting betalen',
    ];

    const generateElements = () => {
        const createElement = (element, id, target, text) => {
            let elm = document.createElement(element); elm.id = id;
            if(text) elm.appendChild(document.createTextNode(text));
            target.appendChild(elm); 
            return elm;
        };

        let proposition = createElement('h1', 'proposition', stemwijzer, `Stelling 1 : ${propositions[0]}`);
        let buttonDiv = createElement('div', 'buttons', stemwijzer);
        let agree = createElement('button', 'btnAgree', buttonDiv, 'Eens');
        let disagree = createElement('button', 'btnDisagree', buttonDiv, 'Oneens');
        let next = createElement('button', 'btnNext', buttonDiv, 'Volgende');
 
        return { proposition, buttonDiv, agree, disagree, next };
    };

    const createOutput = (proposition, buttonDiv) => {
        proposition.parentNode.removeChild(proposition);
        buttonDiv.parentNode.removeChild(buttonDiv);

        let outcome = null;
        if(agrees[0] >= 8) outcome = 'D66';
        else if(agrees[0] >= 5) outcome = 'PvdA';
        else if(agrees[0] >= 2) outcome = 'VVD';
        else if(agrees[0] < 2) outcome = 'CDA';

        let p = document.createElement('p');
        p.appendChild(document.createTextNode(`U heeft ${agrees[0]} keer EENS gestemd. De partij die het best bij uw voorkeur past is ${outcome}.`));
        p.classList.add('output');
        stemwijzer.appendChild(p);
    };



    let elements = generateElements();
    let buttons = document.querySelectorAll('div#buttons button');

    elements.agree.onclick = () => {
        selected = elements['agree'];
        buttons.forEach(b => b.classList.remove('selected'));
        elements['agree'].classList.add('selected');
        elements['next'].style.visibility = 'visible';
    };
    elements.disagree.onclick = () => {
        selected = elements['disagree'];
        buttons.forEach(b => b.classList.remove('selected'));
        elements['disagree'].classList.add('selected');
        elements['next'].style.visibility = 'visible';
    };
    elements.next.onclick = () => {
        selected.id === 'btnAgree' ? agrees[0]++ : agrees[1]++;
        buttons.forEach(b => b.classList.remove('selected'));
        selected = null;

        if(propositions.length == agrees[0] + agrees[1] + 1) elements['next'].innerHTML = 'Voltooien';
        if(propositions[agrees[0] + agrees[1]]) elements['proposition'].innerHTML = `Stelling ${agrees[0] + agrees[1] + 1} : ${propositions[agrees[0] + agrees[1]]}`;    
        else createOutput(elements['proposition'], elements['buttonDiv']);
        
        elements['next'].style.visibility = 'hidden';
    };
};