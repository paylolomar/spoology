<?php session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		header("Location: index.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Spoology</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/master.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<!-- navbar-default #252D49 - style="color: #252D49" style="background-color: #252D49; color: white;"-->
<?php 
  include_once("menu.php");
?>
<!-- comienzo de los div -->
<div class="container-fluid">
  <div class="row">
     <div  id="opciones" class="col-lg-2">
       <div  class="well well2">
          <div class="text-right">
            <div>
              <button class="btn"><span class="glyphicon glyphicon-search"></span><br> Buscar</button>
            </div> <br>

            <div>
              <button class="btn"><span class="glyphicon glyphicon-inbox"></span><br> Inbox</button>
            </div> <br>

            <div>
             <button class="btn"><i style="font-size:24px" class="fa">&#xf0c0;</i><br>grupo</button>
            </div> <br>

            <div>
              <button class="btn"><span class="glyphicon glyphicon-briefcase"></span><br> Apps</button>
            </div>
          </div>
       </div> 
     </div>
     <div style="padding: 5px;" id="contenido" class="col-lg-3">
       <div class="well">
          <li class="btn" style="font-size: 9px"><span class="glyphicon glyphicon-triangle-bottom"></span></li>
      
          Recursos del grupo
              <br><br>
          <small><p>Sin grupos</p></small>
       </div>
     </div>
     <div style="padding: 5px;" id="pendientes" class="col-lg-7">
       <div class="well">
          <i style="font-size:24px" class="fa">&#xf1ad;</i> User school<br><br>
          <div>
            <div id="div-vacio" class="col-lg-1">
            </div>

            <div id="div-titulo" class="col-lg-9">
              <p>Titulo</p>
            </div>
            <div id="div-cantidad" class="col-lg-2">
              <p>0 de 0</p>
            </div>
          </div>
       </div>
     </div>
  </div>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
