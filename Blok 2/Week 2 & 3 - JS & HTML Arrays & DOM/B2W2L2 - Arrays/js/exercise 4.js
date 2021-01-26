setTimeout(() => {
    let games = ['Monopoly', 'Yathzee', 'Bridge', 'Poker', 'Pesten', 'Mens erger je niet', 'Cluedo'];
    let randomGame = games[Math.floor(Math.random() * games.length)];

    document.getElementById('h2').innerHTML = (`<br>All available games:<br>[${games.join(', ')}]<br>`+
    `<br>The random game I generated for you is: '${randomGame}'.`);
}, 100);