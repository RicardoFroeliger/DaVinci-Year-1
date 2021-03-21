<?php
    $inputs = [
        'able'     => 'What would you like to be able to do?',
        'person'   => 'Which person do you get along with?',
        'number'   => 'What is your favorite number?',
        'vacation' => 'What do you always have with you when you go on vacation?' ,
        'best'     => 'What is your best personal quality?',
        'worst'    => 'What is your worst personal quality?',
        'happen'   => 'What is the worst that can happen to you?',
    ];
   
    $allInputsFilled = false;
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
        <title>B3W2O1 - Mad Libs</title>
        <link rel="stylesheet" href="./css/style.css">
    </head>
    <body>
        <img src="./images/MadLibs_logo.png" alt="Logo" class="logo">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">

            <?php require_once './php/navigator.php'; ?>

            <h1>Ignorance</h1>
            
            <?php 
                if(isset($_POST['submit'])) {
                    $anyInputEmpty = false;
                    foreach($inputs as $name => $q) if(empty(validate($_POST[$name]))) $anyInputEmpty = true;

                    if($anyInputEmpty == false) { 
                        foreach($inputs as $name => $q) ${$name} = validate($_POST[$name]);
            ?>
                        <p>
                            There are many people who cannot <?php echo $able;?>. Look at <?php echo $person;?>.<br> 
                            Even with the help of a <?php echo $vacation;?> or even <?php echo $number;?>
                            <?php echo $person;?> cannot <?php echo $able;?>.<br> 
                            That has not to do with a lack of <?php echo $best;?>, but with too much <?php echo $worst;?>.<br> 
                            Too much <?php echo $worst;?> leads to <?php echo $happen;?> which is not good 
                            if you want to <?php echo $able;?>.<br> 
                            Unfortunately for <?php echo $person;?>.<br> 
                        </p>
            <?php
                        $allInputsFilled = true; 
                    } else {
                        foreach($inputs as $name => $q) {
                            if(empty(validate($_POST[$name]))) ${$name.'Err'} = 'This field is required';
                        };
                    };
                };
            ?>  

            <?php require_once './php/formGen.php'; ?>

            <footer>Copyright © 2021 Ricardo Froeliger</footer>
        </form>
    </body>
</html>