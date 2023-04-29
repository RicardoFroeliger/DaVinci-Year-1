<h1>Update Hostage: <?=$data['name']?></h1>
<form name="update" method="POST" action="<?=URL?>employee/edit/<?=$data['id']?>">
	<label for="newName">Name:</label>
	<input type="text" name="newName" placeholder="Enter a new name&hellip;" value="<?=$data['name']?>"><br>

	<label for="newAge">Age:</label>
	<input type="number" name="newAge" placeholder="Enter an new age&hellip;" value="<?=$data['age']?>">

	<input type="submit" value="Submit">
</form>