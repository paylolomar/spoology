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
        </ul><br>
        <p><strong>Notificaciones</strong></p>
        <p>Schoology le envía notificaciones cuando se producen acciones que lo afectan. Usted puede seleccionar las notificaciones que desea recibir.</p>
        <a href="#">Restablecer a configuración predeterminada</a>
        <form>
          <div class="container-fluid">
            <div class="row">
              <div class="">
                  <table class="table table-condensed">
                    <tr>
                      <td>
                        <p><strong>Académico</strong></p>
                      </td>
                      <td>
                        <p><strong>Correo electrónico</strong></p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Actualización Publicada del Curso
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                          <option>Personalizar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Comentarios sobre actualizaciones del curso, tareas o temas de discusión
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                          <option>Personalizar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Comentarios en mis publicaciones
                      </td>
                      <td>
                         <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                          <option>Personalizar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Contenido creado del Curso
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                          <option>Personalizar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Materiales del curso atrasados
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                          <option>Personalizar</option>
                        </select>
                      </td>
                    </tr>
                    <br>
                    <tr>
                      <td>
                      <br>
                        <p><strong>Grupo</strong></p>
                      </td>
                      <td>
                        <p><strong> Correo electrónico</strong></p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Se publicó una actualización del grupo.
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        El grupo ofrece comentarios sobre las actualizaciones o los temas de discusión
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Comentarios en mis publicaciones
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Contenido del Grupo creado
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td><br>
                        <p><strong>Escuela</strong></p>
                      </td>
                      <td>
                        <p><strong>Correo electrónico</strong></p>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Actualización de la Escuela
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Comentario de la actualización de la escuela
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <br>
                    <tr>
                      <td>
                        <p><strong>Personal</strong></p>
                      </td>
                      <td><p><strong>Correo electrónico</strong></p></td>
                    </tr>
                    <tr>
                      <td>
                        Recibir un mensaje privado
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Recibir a un nuevo suscriptor
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        Otro usuario responde a un comentario en un blog que usted publicó.
                      </td>
                      <td>
                        <select>
                          <option>Activado</option>
                          <option>Desactivar</option>
                        </select>
                      </td>
                    </tr>
                  </table>
                  <button class="btn btn-primary">Guardar cambios</button>
                </div>
              </div>
            </div>
        </form>
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
