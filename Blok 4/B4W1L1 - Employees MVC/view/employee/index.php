<h1>Overview of Hostages</h1>
<ul>
	<?php foreach($data as $hostage) { ?>
		<li>
			<span><?=$hostage['name']?> is <?=$hostage['age']?> years old</span>
			<a href="<?=URL?>employee/update/<?=$hostage['id']?>">Update</a>
			<a href="<?=URL?>employee/delete/<?=$hostage['id']?>">Delete</a>
		</li>
	<?php } ?>
</ul>