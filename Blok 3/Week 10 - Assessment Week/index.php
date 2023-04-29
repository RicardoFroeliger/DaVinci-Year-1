<?php
    require_once './php/database.php';

    $allChars = executeQuery('SELECT * FROM characters');
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Toets CRUD Blok 3</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/style.css">
    </head>
    <body>
        <?php require_once './php/header.php'?>

        <div class="mb-5 mt-2">
            <div class="row d-flex justify-content-around">
                <h1>Bekijk hier alle characters</h1>
                <a class="btn-lg btn-primary text-white align-self-center" href="./createCharacter.php">Nieuw character +</a>
            </div>
        
            <div class="mt-2">
                <?php for($i = 0; $i < count($allChars); $i++) { ?>
                    <?php 
                        if($i % 2 == 0) echo '<div class="row d-flex justify-content-center">'
                    ?>
                    <div class="card col-5 d-inline-block ">
                        <img class="card-img-top img-fluid" src="./img/<?=$allChars[$i]['img']?>" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><?=$allChars[$i]['name']?></h4>
                            <p class="card-text"><?=$allChars[$i]['description']?></p>
                            <a href="./character.php?id=<?=$allChars[$i]['id']?>" class="btn btn-primary">Meer details</a>
                        </div>
                    </div>
                    <?php 
                        if($i % 2 == 1) echo '</div>';
                    ?>
                <?php } ?>
            </div>
        </div>
        
        <?php require_once './php/footer.php'?>
    </body>
</html>