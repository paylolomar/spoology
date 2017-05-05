<?php session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		header("Location: index.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>Spoology</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/master.css">
    <link rel="stylesheet" type="text/css" href="css/estilos.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
         <div id="div-imagen">
           <img src="img/usuario.png" class="img-responsive" alt="Responsive image">
         </div><br><br>
          <button style="font-size:17px" class="btn btn-default"><i class="fa fa-address-card"> Informacion</i></button>

       </div> 
     </div>
     <div style="padding: 5px;" id="contenido" class="col-lg-6">
       <div class="well">

          <div id="div-nombre-usuario">
          </div>

          <div id="div-informacion-basica">
          </div>

          <div id="div-informacion-contacto">
          </div>

          <div id="div-informacion-para-contacto">
          </div>
       </div>
     </div>
     <div style="padding: 5px;" id="pendientes" class="col-lg-4">
       <div class="well">
        <div>
          <form class="">
            <table class="table table-condensed table-bordered">
              <tr>
                <td>
                  <td>
                    
                  </td>
                </td>
              </tr>
              <tr>
                <td>
                  <small>Publicaciones </small>
                </td>
                <td>
                  <small>Compañeros de clase </small>
                </td>
              </tr>
            </table>
          </form>
        </div>
        <strong><p>Cursos</p></strong>
       </div>
     </div>
  </div>
</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
