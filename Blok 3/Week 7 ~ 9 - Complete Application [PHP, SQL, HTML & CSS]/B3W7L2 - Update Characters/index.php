<?php
    require './php/database.php';

    $allChars = getAll('characters');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W7L2 - Database Updating</title>
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <h1>All <?=count($allChars)?> characters from the database.</h1>
        </header>
        <div id="container">
            <?php 
                foreach($allChars as $char) { 
                    $charLoc = getOne('locations', $char['location']);
            ?>
                <a class="item" href="./php/character.php?id=<?=$char['id']?>">
                    <div class="left">
                        <img class="avatar" src="./images/<?=$char['avatar']?>">
                    </div>
                    <div class="right">
                        <h2><?=$char['name']?></h2>
                        <div class="stats">
                            <ul class="fa-ul">
                                <li><span class="fa-li"><i class="fas fa-heart"></i></span> <?=$char['health']?></li>
                                <li><span class="fa-li"><i class="fas fa-fist-raised"></i></span> <?=$char['attack']?></li>
                                <li><span class="fa-li"><i class="fas fa-shield-alt"></i></span> <?=$char['defense']?></li>
                                <li><span class="fa-li"><i class="fas fa-map-marker-alt"></i></span> <?=$charLoc['name']?></li>
                            </ul>
                        </div>
                    </div>
                    <div class="detailButton"><i class="fas fa-search"></i> View</div>
                </a>
            <?php } ?>
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>