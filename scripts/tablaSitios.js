
function eliminar(el) {
    var index = $(el).closest("tr").index()
    console.log(index);
    let tabla = document.getElementById("tablaURL");
    let ID =tabla.rows[index+1].cells[0].innerHTML;  
    var url = "../backend/eliminarURL.php";
    ajax("get",url,"RSSURL",ID);
    window.close();
   
  } 

function ajax(metodo, url, variable1, valor1) {
  var httpRequest;

  if (window.XMLHttpRequest) {
    httpRequest = new XMLHttpRequest();
  } else {
    httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
  }

  httpRequest.onreadystatechange = function () {
    if (httpRequest.readyState == 4 && httpRequest.status == 200) { 
    }
  };

  if (metodo == "get") {
    httpRequest.open(metodo, url + "?" + variable1 + "=" + valor1);
  } else {
    httpRequest.open(metodo, url);
    httpRequest.setRequestHeader(
      "Content-Type",
      "application/x-www-form-urlencoded"
    );
  }
  httpRequest.send(variable1 + "=" + valor1);
}