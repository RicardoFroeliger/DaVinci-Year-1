<?php
    $inputs = [
        'animal'   => 'Which animal you would never want as a pet?', 
        'person'   => 'Who is the most important person in your life?',
        'country'  => 'In which country would you like to live?', 
        'bored'    => 'What do you do when you\'re bored?', 
        'toy'      => 'Which toy did you play with most as a child?', 
        'teacher'  => 'Which male teacher do you prefer to skip the lessons on?', 
        'buy'      => 'If you had $100.000, what would you buy?', 
        'activity' => 'What is your favorite activity?', 
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

            <h1>There is panic...</h1>
            
            <?php 
                if(isset($_POST['submit'])) {
                    $anyInputEmpty = false;
                    foreach($inputs as $name => $q) if(empty(validate($_POST[$name]))) $anyInputEmpty = true;

                    if($anyInputEmpty == false) { 
                        foreach($inputs as $name => $q) ${$name} = validate($_POST[$name]);
            ?>
                        <p>
                            There is panic in the kingdom of <?php echo $country;?>.<br>
                            King <?php echo $teacher;?> is desperate, and when king <?php echo $teacher;?> desperate,
                            then he calls his final counselor <?php echo $person;?>.<br><br>

                            "<?php echo $person;?>! It's a disaster! It is a shame!"<br><br>
                            "Sire, Your Majesty, Your Noisiness, what's the matter?"<br><br>
                            "My <?php echo $animal;?> has disappeared! Just like that, without warning. And I had just bought him <?php echo $toy;?>."<br><br>
                            "Your Majesty, your <?php echo $animal;?> will probably come back on its own?"<br><br>
                            "Yes, that's all well and good, but how am I supposed to learn <?php echo $activity;?> in the meantime?"<br><br>
                            "But Sire, you can still use your <?php echo $buy;?> for that."<br><br>
                            "<?php echo $person;?>, you are absolutely right! What would I do if I didn't have you."<br><br>
                            "<?php echo $bored;?>, Sire."
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