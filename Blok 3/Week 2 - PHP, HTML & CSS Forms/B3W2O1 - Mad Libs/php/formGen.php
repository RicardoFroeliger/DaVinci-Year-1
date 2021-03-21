<?php if($allInputsFilled == false) { ?>
    <?php foreach($inputs as $name => $question) { ?>
        <div class="container">
            <label for="<?php echo $name;?>"><?php echo $question;?> <span>*</span></label>
            <input type="text" name="<?php echo $name;?>" value="<?php if(isset($_POST[$name])) echo $_POST[$name];?>">
        </div>
        <span class="error" style="font-size: <?php echo ${$name.'Err'} == '' ? 0 : 2.8;?>vmin"><?php echo ${$name.'Err'};?></span>
    <?php }; ?>
    <div class="submitContainer"><input type="submit" name="submit" value="Send"></div>
<?php }; ?>