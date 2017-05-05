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
          Recursos
          <!--<button><img src="../img/icon/agregar-coleccion.png" class="img-responsive"></button>-->
          <button class="text-right" style="font-size:14px"> <i class="fa fa-archive"></i></button>  
          <button class="text-right""><span class="glyphicon glyphicon-triangle-bottom"></span></button><br><br>
          <div id="div-incio">
            <button class="text-justify form-control" style="font-size:14px"><i class="fa fa-archive"> Inicio</i></button>  
          </div>
       </div>
     </div>
     <div style="padding: 5px;" id="pendientes" class="col-lg-7">
       <div class="well">
          <i class="fa fa-archive" style="font-size:24px"> Inicio</i><br><br>
          <button><span class="glyphicon glyphicon-inbox"></span> Agregar recursos</button><br>
          <br>
          <div id="div-chk-recurso" class="col-lg-1">
            <input type="checkbox" name="chk-recurso" id=chk-recurso>
          </div>
          <div id="div-titulo" class="col-lg-9">
            <p>Título</p>
          </div>
          <div id="div-cantidad" class="col-lg-2">
            <p>0 de 0</p>
          </div>
       </div>
       <small><p class="text-center">No hay elementos en esta colección actualmente.</p></small>
     </div>
  </div>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
