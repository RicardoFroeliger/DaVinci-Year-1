<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W1L3 - Calculating ~ 2</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <?php 
            $tables = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
            foreach($tables as $table) if(gettype($table) !== 'integer') die();

            foreach($tables as $num) {
                echo '<div>';
                for($i = 1; $i <= 10; $i++) echo '<h3>'.$i.' x '.$num.' = '. ($i * $num).'</h3>';
                echo '</div>';
            };
        ?>
    </body>
</html>