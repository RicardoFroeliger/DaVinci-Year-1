<?php
    require_once './php/database.php';

    $show = getOne('shows', $_GET['id']);
    $allChars = getAll('characters');

    $charsInShow = [];
    foreach($allChars as $char) {
        if($char['showid'] == $show['id']) array_push($charsInShow, $char);
    }
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
            <div class="row d-flex justify-content-center">
                <h1>Bekijk hier alle characters gelinkt aan <?=$show['name']?></h1>
            </div>

            <div class="mt-2">
                <?php for($i = 0; $i < count($charsInShow); $i++) { ?>
                    <?php 
                        if($i % 3 == 0) echo '<div class="row d-flex justify-content-center">'
                    ?>
                    <div class="card col-3 m-3">
                        <img class="card-img-top img-fluid" src="./img/<?=$charsInShow[$i]['img']?>" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title"><?=$charsInShow[$i]['name']?></h4>
                            <a href="./character.php?id=<?=$charsInShow[$i]['id']?>" class="btn btn-primary">Meer details</a>
                        </div>
                    </div>
                    <?php 
                        if($i % 3 == 2) echo '</div>';
                    ?>
                <?php } ?>
            </div>
        </div>

        <?php require_once './php/footer.php'?>
    </body>
</html>