<?php 
    require './database.php';

    $allLocs = getAll('locations');
    $allChars = getAll('characters');
    $loc = getOne('locations', $_GET['id']);

    $uniqueLocs = [];
    foreach($allChars as $char) {
        if(!in_array($char['location'], $uniqueLocs)) 
            array_push($uniqueLocs, $char['location']);
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body>
        <header>
            <h1>Delete a Location</h1> 
            <button onclick="window.location.href='./locations.php'">Go back</button>
        </header>
        <div id="container"> 
            <?php if(in_array($loc['id'], $uniqueLocs)) {?>
                <h2 class="delete">
                    This location is in use by one or more characters.<br><br>
                    Change the location for the characters in:<br><?=$loc['name']?>
                </h2>
            <?php } else { ?>
                <?php
                    if(isset($_GET['confirm'])) {
                        deleteLocation($_GET['id']);
                        header("Refresh:0 ./locations.php?deletedLocation={$loc['id']}"); 
                        echo "<script>alert('Succesfully deleted location: {$loc['name']}')</script>";
                    }
                ?> 
                <h2 class="delete">Are you sure you want to delete location: <?=$loc['name']?>?</h2>
                <div class="delete">
                    <button onclick="window.location.href='./locations.php'" style="background-color: limegreen;">No</button>
                    <button onclick="window.location.href='./deleteLocation.php?id=<?=$loc['id']?>&confirm=true'" 
                        style="background-color: red;">Yes</button>
                </div>   
            <?php } ?>
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>