<!DOCTYPE html>
<html>
<head>
	<title>Información basica</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/master.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<?php
	include_once("menu2.php");
?>
	<div class="container-fluid">
	<div class="row">
		<div class="col-lg-4 col-sm-4 col-xs-4 col-md-4"></div>
		<div id="" class="col-lg-4 col-sm-4 col-xs-4 col-md-4"> 
			<div class="well">
				<h3><strong>Sign up for Spoology</strong><a style="text-align: right; margin-right: 1px; color: black;" aling="right" href="#" class="btn" >Back</a></h3>
				<div class=" col-lg-6 col-sm-6 col-xs-6 col-md-6">
					<input type="text" id="txt-primer-nombre" class="form-control" placeholder="First Name"></input>
				</div>
				<div class=" col-lg-6 col-sm-6 col-xs-6 col-md-6">
					<input type="text" id="txt-primer-apellido" class="form-control" placeholder="Last Name"></input>
				</div>
				<input type="email" id="txt-correo" class="form-control" placeholder="Email Address"></input>
				<input type="password" id="txt-contrasena" class="form-control" placeholder="Password"></input>
				<input type="password" id="txt-contrasena" class="form-control" placeholder="Confirm Password"></input>
				<div>
					<label><input type="checkbox"></label>
					<p style="background-color: white;"> No soy robot o un programa malicioso</p>	
				</div>
				
				
				<br>
				<button id="btn-registrar" class="btn btn-primary">Register</button>

			</div> 
		</div>
		<div class="col-lg-4 col-sm-4 col-xs-4 col-md-4"></div>
	</div>
</div>
</body>
</html>