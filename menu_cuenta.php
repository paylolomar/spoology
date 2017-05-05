<?php session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		header("Location: index.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Spoology</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/master.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
</head>
<body>
<!-- navbar-default #252D49 - style="color: #252D49" style="background-color: #252D49; color: white;"-->
<?php 
  include_once("menu.php");
?>
<!-- comienzo de los div -->
<div class="container-fluid">
  <div class="row">
     <div  id="opciones" class="col-lg-1">
       <div  class="">
         <!--Div de la izquierda-->
          
       </div> 
     </div>
     <div style="padding: 5px;" id="contenido" class="col-lg-10">
       <div class="well">
        <h4><strong>Cuenta</strong></h4>
        <ul class="nav nav-tabs">
          <li role="presentation"><a href="#">Notificaciones</a></li>
          <li role="presentation"><a href="#">Configuracion de la cuenta</a></li>
          <li role="presentation"><a href="#">Configuracion de privacidad</a></li>
          <li role="presentation"><a href="#">Papelera de reciclaje</a></li>
        </ul>
       </div>
     </div>
     <div style="padding: 5px;" id="pendientes" class="col-lg-1">
       <div class="">
          <!--Div de la derecha-->
       </div>
     </div>
  </div>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
