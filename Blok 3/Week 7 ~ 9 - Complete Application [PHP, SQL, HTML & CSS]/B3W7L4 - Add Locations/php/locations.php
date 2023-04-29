<?php 
    require './database.php';

    $allLocs = getAll('locations');
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
            <h1>All <?=count($allLocs)?> locations from the database.</h1> 
            <button onclick="window.location.href='../index.php'">Go to characters</button>
        </header>
        <div id="container">
            <ul class="locationList">
                <li style="line-height: 32px"><b>NAME</b></li>
                <?php foreach($allLocs as $loc) { ?>
                    <li><?=$loc['name']?></li>
                <?php } ?>
                <li style="padding-top: 20px"><a href="./addLocation.php"><b>+</b> Add location<a></li>
            </ul>     
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>