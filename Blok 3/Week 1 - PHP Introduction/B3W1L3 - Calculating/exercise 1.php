<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W1L3 - Calculating ~ 1</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <?php 
            $num1 = rand(1, 100);
            $num2 = rand(1, 100);
        ?>
        
        <h1><?php echo 'Random numbers are: '.$num1.', '.$num2;?></h1>
        <h1><?php echo $num1.' + '.$num2.' = '.($num1 + $num2);?></h1>
        <h1><?php echo $num1.' - '.$num2.' = '.($num1 - $num2);?></h1>
        <h1><?php echo $num1.' x '.$num2.' = '.($num1 * $num2);?></h1>
        <h1><?php echo $num1.' / '.$num2.' = '.round($num1 / $num2, 2);?></h1>
    </body>
</html>