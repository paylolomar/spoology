<?php
	switch ($_GET["accion"]) {
		case 1:
    include_once("../class/class_conexion.php");
    $conexion = new Conexion();
    $consulta=$conexion->ejecutarInstruccion('SELECT * FROM tbl_actualizaciones');

			echo "
			   <div style='padding: 5px;'  class='col-lg-7'>
         		<div class='well' id='contenido'>
            <h3>Actividad Reciente</h3>
            ";

                while ($fila = $conexion->obtenerFila($consulta)) {
                  echo "codigo actualizacion: ".$fila["CODIGO_ACTUALIZACION"]." Y contenido actualizacion: ".$fila["CONTENIDO_ACTUALIZACION"]."<br>";
                }
      echo "Div de el medio
         		</div>
       		</div>";

       		echo "<div style='padding: 5px;' id='pendientes' class='col-lg-3'>
         		<div class='well'>
            	Div de la derecha
         		</div>
       		</div>";
			break;
		
		case 2:
			echo "<div style='padding: 5px;'  class='col-lg-10'>
         			<div class='well' id='contenido'>
            			que bonito es lo bonito1
         			</div>
       			  </div>";
			break;
		case 3:
			echo "<div style='padding: 5px;'  class='col-lg-10'>
         			<div class='well' id='contenido'>
            			que bonito es lo bonito2
         			</div>
       			  </div>";
			break;
		case 4:
			echo "<div style='padding: 5px;'  class='col-lg-10'>
         			<div class='well' id='contenido'>
            			que bonito es lo bonito
         			</div>
       			  </div>";
			break;	
		
		default:
			# code...
			break;
	}
?>