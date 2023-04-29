<?php
    require_once './php/database.php';

    $allShows = getAll('shows');
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


        <div class="row d-flex justify-content-center">
            <div class="col-6">
                <h1>Bekijk hier alle shows</h1>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
            <ul class="list-group row col-6">
                <?php foreach($allShows as $show) { ?>
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <a href="./show.php?id=<?=$show['id']?>"><?=$show['name']?></a>
                    </li>
                <?php } ?>
            </ul>
        </div>

        <?php require_once './php/footer.php'?>
    </body>
</html>