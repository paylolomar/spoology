<?php
	switch ($_GET["accion"]) {
		case 1:
			echo "
			<div style='padding: 5px;'  class='col-lg-7'>
         		<div class='well' id='contenido'>
            		Div de el medio
         		</div>
       		</div>

       		<div style='padding: 5px;' id='pendientes' class='col-lg-3'>
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
            			que bonito es lo bonito3
         			</div>
       			  </div>";
			break;	
		
		default:
			# code...
			break;
	}
?>