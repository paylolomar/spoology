<?/*php session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		header("Location: login.php");*/
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
          <li role="presentation"><a href="menu_notificaciones.php">Notificaciones</a></li>
          <li role="presentation" class="active"><a href="#">Configuracion de la cuenta</a></li>
          <li role="presentation"><a href="#">Configuracion de privacidad</a></li>
          <li role="presentation"><a href="#">Papelera de reciclaje</a></li>
        </ul>
        <div class="container-fluid">
            <div class="row">
              <div class="">
                <form>
                  <table class="table table-condensed">
                    <tr>
                      <td>
                        <p><strong>Información de la cuenta</strong></p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Primer nombre: *
                      </td>
                      <td>
                        <input type="text" name="txt-primer-nombre">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Segundo nombre:
                      </td>
                      <td>
                        <input type="text" name="txt-segundo-nombre">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Apellido: *
                      </td>
                      <td>
                        <input type="text" name="txt-apellido">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Nombre de usuario: **
                      </td>
                      <td>
                        <input type="text" name="txt-nombre-usuario">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Dirección principal de correo electrónico: **
                      </td>
                      <td>
                        <input type="text" name="txt-correo">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Correo electrónico alternativo:
                      </td>
                      <td>
                        <input type="text" name="txt-correo-alternativo">
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Zona horaria:
                      </td>
                      <td>
                        <select>
                          <option>--SELECCIONE LA ZONA HORARIA--</option>
                        </select>
                      </td>
                    </tr>
                  </table>
                </form>
              </div>
            </div>
        </div>
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
