function actividad(){
	var parametros = "txt-id-usuario="+"estoy vivo";
	$.ajax({
          url:"ajax/acciones.php?accion=1",
          method:"POST",
          data: parametros,
          success:function(respuesta){
            $("#contenido").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

function calificaciones(){
  var parametros = "txt-id-usuario="+"estoy vivo";
  $.ajax({
          url:"ajax/acciones.php?accion=2",
          method:"POST",
          data: parametros,
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

function calendario(){
  var parametros = "txt-id-usuario="+"estoy vivo";
  $.ajax({
          url:"ajax/acciones.php?accion=3",
          method:"POST",
          data: parametros,
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}

function mensajes(){
  var parametros = "txt-id-usuario="+"estoy vivo";
  $.ajax({
          url:"ajax/acciones.php?accion=4",
          method:"POST",
          data: parametros,
          success:function(respuesta){
            $("#principal").html(respuesta);
          },
          error:function(){
            alert("Ocurrio un error.");
          }
        });
}