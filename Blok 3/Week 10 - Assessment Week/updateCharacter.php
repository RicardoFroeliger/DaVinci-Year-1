<?php
    require_once './php/database.php';

    $char = getOne('characters', $_GET['id']);

    function validate($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    };
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
                <h1>Update hier <?=$char['name']?></h1>
            </div>
            <div class="row d-flex justify-content-center">
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" name="updateForm">
                    <?php
                        $fields = [
                            'Naam' => 'name',
                            'Afbeelding' => 'img',
                            'Geslacht' => 'sex',
                            'Debut jaar' => 'debut_year', 
                            'Netto waarde' => 'net_worth',
                            'Beschrijving' => 'description'
                        ];

                        foreach($fields as $field => $value) {
                    ?>
                        <div class="container">
                            <label for="<?=$field?>"><?=$field?>:</label>
                            <input type="text" name="<?=$field?>" value="<?=$char[$value]?>">
                        </div>
                    <?php 
                            if($_POST['updateForm']){
                                //update 
                            }

                        } 
                    ?>

                    <!-- Update knop nog niet klaar -->
                    <input type="submit" name="submit" value="Update" class="btn btn-info">
                </form>
            </div>
        </div>

        <?php require_once './php/footer.php'?>
    </body>
</html>