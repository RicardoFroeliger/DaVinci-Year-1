<h1>Confirm Deletion Hostage: <?=$data['name']?></h1>
<input type="button" value="No" onclick="window.location.href='<?=URL?>'">
<input type="button" value="Yes" onclick="window.location.href='<?=URL?>employee/destroy/<?=$data['id']?>'">