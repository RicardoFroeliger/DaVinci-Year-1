<h1>Add a Hostage</h1>
<form name="create" method="POST" action="<?=URL?>employee/store">
	<label for="name">Name:</label>
	<input type="text" name="name" placeholder="Enter a name&hellip;"><br>

	<label for="age">Age:</label>
	<input type="number" name="age" placeholder="Enter an age&hellip;">

	<input type="submit" value="Submit">
</form>