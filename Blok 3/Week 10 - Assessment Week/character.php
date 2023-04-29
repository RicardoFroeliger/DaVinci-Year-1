<?php
    require_once './php/database.php';

    $char = getOne('characters', $_GET['id']);
    $charShow = getOne('shows', $char['showid']);
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

        <?php
            if(isset($_GET['deleteid'])) {
                deleteCharacter($_GET['deleteid']);
                header('Refresh:0 ./index.php');
            }
        ?>

        <div class="d-lg-flex flex-lg-row flex-sm-column justify-content-between p-3">
            <h1>Bekijk hier <?=$char['name']?></h1>
            <div class="align-self-center">
                <a class="btn-lg btn-info text-white" href="./updateCharacter.php?id=<?=$char['id']?>">Update character</a>
                <a class="btn-lg btn-danger text-white" href="./character.php?deleteid=<?=$char['id']?>">Delete character</a>
            </div>
        </div>

        <div class="mt-2 row p-5">
            <div class="card mt-2 col-4 p-0">
                <img class="card-img-top" src="./img/<?=$char['img']?>" alt="Image of <?=$char['name']?>">
                <div class="card-body p-0">
                    <p class="card-text text-center">
                        <div class="border-bottom text-center">
                            <strong>Naam: <?=$char['name']?></strong>
                        </div>
                        <div class="border-bottom text-center">
                            <strong>Geslacht: <?=$char['sex']?></strong>
                        </div>
                        <div class="border-bottom text-center">
                            <strong>Debut jaar: <?=$char['debut_year']?></strong>
                        </div>
                        <div class="border-bottom text-center">
                            <strong>Netto Waarde: <?=$char['net_worth']?></strong>
                        </div>
                        <div class="text-center">
                            <strong>Show: <?=$charShow['name']?></strong>
                        </div>
                    </p>
                </div>
            </div>
            <div class="card-text col">
                <p><?=$char['description']?></p>
                <?php
                    if(isset($_POST['charShow'])) {
                        updateShow($_POST['charShow'], $char['id']);
                        header('Refresh:0');
                    }
                ?>

                <form method="POST" action="" class="col-3 p-0">
                    <label class="mb-3">Show:</label><br>
                    <select name="charShow">
                        <?php 
                            foreach($allShows as $show) {
                                if($charShow['id'] == $show['id']) {
                                    echo "<option value={$show['id']} disabled selected>{$show['name']}</option>";
                                } else {
                                    echo "<option value={$show['id']}>{$show['name']}</option>";
                                }
                            }
                        ?>
                    </select><br>
                    <input type="submit" value="Update" class="btn btn-info mt-3">
                </form>
            </div>
            <hr>
        </div>

        <?php require_once './php/footer.php'?>
    </body>
</html>