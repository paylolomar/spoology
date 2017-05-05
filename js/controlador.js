function actividad(){
	
	$.ajax({
          url:"ajax/acciones.php?accion=1",
          method:"POST",
          
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

actividad();
function calificaciones(){
  
  $.ajax({
          url:"ajax/acciones.php?accion=2",
          method:"POST",
          
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

function calendario(){
  
  $.ajax({
          url:"ajax/acciones.php?accion=3",
          method:"POST",
          
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

function mensajes(){
  
  $.ajax({
          url:"ajax/acciones.php?accion=4",
          method:"POST",
          
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}