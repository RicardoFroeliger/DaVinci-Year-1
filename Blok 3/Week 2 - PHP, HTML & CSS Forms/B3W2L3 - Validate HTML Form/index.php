<?php
    $name = validate($_POST['name']);
    $email = validate($_POST['email']);
    $data = false; $nameErr = ''; $emailErr = ''; 

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
        <title>B3W2L2 - Validate HTML Forms</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <?php 
            if(isset($_POST['submit'])) {
                if(!empty($name) && !empty($email) && preg_match_all('/[@.]/', $email) == 2) { 
        ?>
                    <main>
                        <h1>Welcome <?php echo $name; ?></h1>
                        <h1>Your email address is: <?php echo $email; ?></h1>
                    </main>
        <?php 
                    $data = true; 
                } else {
                    if(preg_match_all('/[@.]/', $email) != 2) $emailErr = 'Email is invalid';
                    if(empty($name)) $nameErr = 'Name is required';
                    if(empty($email)) $emailErr = 'Email is required';  
                };
            };
        ?>

        <?php if($data == false) { ?>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
                <label for="name">Name: </label><span>* <?php echo $nameErr; ?></span><br>
                <input type="text" name="name" placeholder="Your name.." 
                    value="<?php if(isset($_POST['name'])) echo $_POST['name'];?>"><br>

                <label for="email">E-mail Adress: </label><span>* <?php echo $emailErr; ?></span><br>
                <input type="text" name="email" placeholder="Your e-mail.."
                    value="<?php if(isset($_POST['email'])) echo $_POST['email'];?>"><br><br> 

                <input type="submit" name="submit" value="Submit">
            </form>
        <?php }; ?>
    </body>
</html>