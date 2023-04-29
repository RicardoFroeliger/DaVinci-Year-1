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
            <h1>Add a Location</h1> 
            <button onclick="window.location.href='./locations.php'">Go back</button>
        </header>
        <div id="container">
            <?php
                if(isset($_POST['location'])){
                    $newLoc = sanitize($_POST['location']);
                    if(strlen($newLoc) < 1){
                        echo '<script>alert(\'Empty input\')</script>';
                    } else {   
                        $lastId = addLocation($newLoc);
                        header("Refresh:0 ./locations.php?addedLocation=$lastId"); 
                        echo "<script>alert('Succesfully added location: $newLoc')</script>"; 
                    }
                }
            ?>
            <form method="POST">
                <label for="location" style="line-height: 32px"><b>Name:</b></label><br>
                <input name="location" placeholder="Put location here&hellip;"></input>
                <button type="submit" name="submit">Add location</button>
            </form>
        </div>
        <footer>&copy; Ricardo Froeliger & Enrique Groeneveld 2021</footer>
    </body>
</html>