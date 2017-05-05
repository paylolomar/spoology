<?php session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		header("Location: index.php");
?>
<nav class="navbar" style="background-color: rgb(68, 80, 93);">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a style="color: white; background-color: rgb(68, 80, 93);" class="navbar-brand" href="#" >Spoology</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> <span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#"><input type="text" id="" name="" class="form-control" placeholder="Buscar"></a></li>  
          </ul>
        </li>
        <li><a href="#" style="color: white; background-color: rgb(68, 80, 93);">Inicio</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: white; background-color: rgb(68, 80, 93);">Cursos <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">algun curso</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">algun curso</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">algun curso</a></li>
            <li role="separator" class="divider"></li>
	        <div id="" class="">
	            <span >
	            	<a href="#" >Unirse</a>
	            </span>

	            <span  >
	            	<a href="#" >Ver todos</a>
	            </span>	
	        </div> 
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: white; background-color: rgb(68, 80, 93);">Grupos <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">algun grupo</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">algun grupo</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">algun grupo</a></li>
            <li role="separator" class="divider"></li>
	        <div id="" class="">
	            <span >
	            	<a href="#" >Unirse</a>
	            </span>
	            
	            <span  >
	            	<a href="#" >Explorar</a>
	            </span>	
	        </div> 
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="color: white; background-color: rgb(68, 80, 93);">Recursos <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#"> # Personal</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#"> # Grupo</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#"> # Apps</a></li>
            <li role="separator" class="divider"></li> 
          </ul>
        </li>

      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></a>
          <ul class="dropdown-menu">
            <li><a>Solicitudes</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        <li>
          <a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
          <ul class="dropdown-menu">
            <li><a>Solicitudes</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        <li>
          <a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        
        <li><a href="perfil.php" style="color: white; background-color: rgb(68, 80, 93);">Nombre del individuo</a></li>
        <li class="dropdown">
          <a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="menu_notificaciones.php">Notificaciones</a></li>
            <li><a href="configuracion_cuenta.php">Configuración de la cuenta</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="cerrar-sesion.php">Sing out</a></li>
          </ul>
        </li>
        <li><a style="color: white; background-color: rgb(68, 80, 93);" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> <span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
