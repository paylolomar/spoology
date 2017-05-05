<?/*php session_start(); 
  if(!isset($_SESSION['codigo_usuario']))
    header("Location: login.php");*/
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Spoology</title>
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
      
          
       </div> 
     </div>
     <div style="padding: 5px;" id="contenido" class="col-lg-10">
       <div class="well">
        <div>
          <strong><p>Notificaciones</p></strong>
          <a href="#">
            <span class="glyphicon glyphicon-stats"> Todas las notificaciones</span>
          </a>

          <div id="div-fecha-notificacion">
          </div>

          <div id="div-notificacion">
          </div>

        </div>
       </div>
     </div>
     <div style="padding: 5px;" id="pendientes" class="col-lg-1">
       <div class="">
          
       </div>
     </div>
  </div>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
