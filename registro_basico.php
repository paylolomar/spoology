<!DOCTYPE html>
<html>
<head>
   	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
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
</div><br>
<div id="page-footer">
	<div class="container">
		<div id="copyright-and-links"  class="well col-lg-12 col-sm-12 col-xs-12 col-md-12">
	      Spoology &copy;
	      2017        <span role="separator" class="divider">&middot;</span>
	        <a id="footer-nav-privacy" href="https://www.schoology.com/privacy" target="_blank">Privacy Policy</a>
	        <span class="divider">&middot;</span>
	        <a id="footer-nav-privacy" href="https://www.schoology.com/terms-of-use" target="_blank">Terms of Use</a>
	      <span class="divider">&middot;</span>
	      <a id="footer-nav-help-center" href="https://support.schoology.com/hc/en-us" rel="external" target="_blank">Help Center</a> 
	    </div>
	    <div id="trust" style="" align="right">
	      <a href="https://www.schoology.com/privacy" target="_blank" id="privacy-link">
	        <img alt="Privo Privacy Certified" src="https://privo.com/images/certLogos/H_PPC_B.png" />
	      </a>
	    </div>
	</div>
</div>
</body>
</html>