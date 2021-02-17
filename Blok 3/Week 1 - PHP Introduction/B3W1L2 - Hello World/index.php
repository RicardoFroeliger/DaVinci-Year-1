<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W1L2 - Hello World</title>
        <style>
            html {
                height: 100%;
                background: linear-gradient(to bottom, #88ff88, #6666ff);
                font-family: 'Roboto', sans-serif;
            }
        </style>
    </head>
    <body>
        <?php 
            define('HELLOWORLD', 'Hello World!');
            $learningPhp = 'Learning PHP..';
            $learningPhp = HELLOWORLD;
            $hello = 'Hello ';
            $world = 'World!';
            $helloWorld = ['Hello', 'World!'];
        ?>

        <h1><?php echo 'Hello World!';?></h1>
        <h1><?php echo HELLOWORLD;?></h1>
        <h1><?php echo $learningPhp;?></h1>
        <h1><?php echo $hello . $world;?></h1>
        <h1><?php echo implode(' ', $helloWorld);?></h1>
    </body>
</html>