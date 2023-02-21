
function eliminar(el) {
    var index = $(el).closest("tr").index()
    console.log(index);
    let tabla = document.getElementById("tablaURL");
    let ID =tabla.rows[index+1].cells[0].innerHTML;
    console.log(ID);
    //FUNCIÓN PARA ELIMINAR DE BASE DE DATOS
  
  
  }

