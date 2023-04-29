<?php
    require_once './database.php';

    $char = getCharacter($_GET['id']);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W7L1 - Refactoring</title>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <h1><?=$char['name']?></h1>
            <a class="backbutton" href="../index.php"><i class="fas fa-long-arrow-alt-left"></i> Back</a>
        </header>
        <div id="container">
            <div class="detail">
                <div class="left">
                    <img class="avatar" src="../images/<?=$char['avatar']?>">
                    <div class="stats" style="background-color: <?=$char['color']?>">
                        <ul class="fa-ul">
                            <li><span class="fa-li"><i class="fas fa-heart"></i></span> <?=$char['health']?></li>
                            <li><span class="fa-li"><i class="fas fa-fist-raised"></i></span> <?=$char['defense']?></li>
                            <li><span class="fa-li"><i class="fas fa-shield-alt"></i></span> <?=$char['attack']?></li>
                        </ul>
                        <ul class="gear">
                            <li><b>Weapon</b>: <?=$char['weapon']?></li>
                            <li><b>Armor</b>: <?=$char['armor']?></li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <p><?=$char['bio']?></p>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>