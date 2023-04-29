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
            $tables = [3, 5, 8, 12];
            foreach($tables as $table) if(gettype($table) !== 'integer') die();
            
            function printTables($table) {
                if(gettype($table) !== 'array') $table = [$table];
                foreach($table as $num) {
                    echo '<div>';
                    for($i = 1; $i <= 10; $i++) echo "<h3>$i x $num = ".($i * $num).'</h3>';
                    echo '</div>';
                };
            };

            printTables($tables);
        ?>
    </body>
</html>