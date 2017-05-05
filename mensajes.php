<?/*php session_start(); 
  if(!isset($_SESSION['codigo_usuario']))
    header("Location: login.php");*/
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
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
     <div  id="opciones" class="col-lg-2">
       <div  class="well well2">
        <p>
        <button type="button" class="form-control">
          <span class="glyphicon glyphicon-list-alt"></span> Actividad reciente
        </button>
      </p>
         <p>
        <button type="button" class="form-control">
          <span class="glyphicon glyphicon-book"></span> Calificaciones / Asistencia
        </button>
      </p> 
      <p>
        <button type="button" class="form-control">
          <span class="glyphicon glyphicon-calendar"></span> Calendario
        </button>
      </p>
      <p>
        <button type="button" class="form-control">
          <span class="glyphicon glyphicon-envelope"></span> Mensajes 
        </button>
      </p>
       </div> 
     </div>
     <div style="padding: 5px;" id="contenido" class="col-lg-10">
       <div class="well">
          <strong><h3>Mensajes</h3></strong>
          <ul class="nav nav-tabs">
            <!--<li role="presentation" class="active"><a href="#">Home</a></li>-->
            <!--<button type="button" class="btn btn-default navbar-btn"><li role="presentation"><a href="google.hn">Buzón</a></li></button>
            <button type="button" class="btn btn-default navbar-btn"><li role="presentation"><a href="facebook.com">Mensajes enviados</a></li></button>-->
            <div class="btn-group" role="group" aria-label="...">
              <button>Buzón</button>
              <button>Mensajes enviados</button>
            </div><br><br>
            <input type="checkbox" name="chk-mensaje" id="chk-mensaje">
            <button>+ Nuevo mensaje</button>
          </ul>
       </div>
       <h6 class="text-center">No hay mensajes en su buzón</h6>
     </div>

     
  </div>
</div>
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</body>
</html>
