<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><?=APPLICATION_TITLE?></title>
		<link rel="stylesheet" href="<?=URL?>/css/style.css">
		<script src="<?=URL?>/js/script.js" defer></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	</head>
	<body>
		<div id="container">
			<nav class="navbar navbar-expand-sm navbar-dark bg-secondary container-fluid">
				<a class="navbar-brand" href="<?=URL?>">
					<img src="<?=URL?>/images/logo.png" alt="Logo" width="50" height="50">
				</a>
				<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarContent">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarContent">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active" href="<?=URL?>">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="<?=URL?>main/login">Login</a></li>
					</ul>
				</div>
			</nav>