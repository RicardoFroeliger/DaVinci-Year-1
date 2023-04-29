<?php
    require './database.php';

    $allLocs = getAll('locations');
    $char = getOne('characters', $_GET['id']);
    $charLoc = getOne('locations', $char['location']);
?>
<!-- 
<pre>
<?=var_dump(test($_GET['id']))?>
</pre> -->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W7L3 - Locations Overview</title>
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
                    <p>
                        <?php
                            if(isset($_POST['charLocation'])) {
                                updateLocation($_POST['charLocation'], $char['id']);
                                header('Refresh:0 url=../index.php');
                            }
                            echo $char['bio']; 
                        ?>
                        <form method="POST">
                            <label><b>Current Location:</b></label>
                            <select name="charLocation">
                                <?php 
                                    foreach($allLocs as $loc) {
                                        if($loc['id'] == $char['location']) {
                                            echo "<option value={$loc['id']} disabled selected>{$loc['name']}</option>";
                                        } else {
                                            echo "<option value={$loc['id']}>{$loc['name']}</option>";
                                        }
                                    }
                                ?>
                            </select>
                            <input type="submit" value="submit">
                        </form>
                    </p>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>