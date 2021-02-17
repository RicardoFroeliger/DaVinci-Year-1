<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>B3W1L4 - Time Application</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <?php
        date_default_timezone_set('Europe/Amsterdam');

        $period = 'night';  
        if(date('H') >= 18) $period = 'evening';
        elseif(date('H') >= 12) $period = 'afternoon';
        elseif(date('H') >= 6) $period = 'morning';
        
        echo "<body style=\"background: url('./images/$period.png') no-repeat 50% 75% fixed\">";
        echo "<div><h1>Good $period!<h1>It's currently ".date('h:ia').'</div>';

        /* Made in 3 lines */
        // date_default_timezone_set('Europe/Amsterdam');
        // $period = date('H') >= 18 ? 'evening' : (date('H') >= 12 ? 'afternoon' : (date('H') >= 6 ? 'morning' : 'night'));
        // echo "<body style=\"background: url('./images/$period.png') no-repeat 50% 75% fixed\"><div><h1>Good $period!<h1>It's currently ".date('H:i');
    ?>
</html>
