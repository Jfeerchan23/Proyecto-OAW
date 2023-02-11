
const sitios = ['🍅', '🍄', '🥦', '🥒', '🌽', '🥕', '🥑'];
function editarSitios(){
    ventana = window.open("tablaSitios.php","ventana", "width=350,height=250");
}
function agregarURL(){
   const sitio = document.getElementById("feedurl").value;
    console.log(sitio.trim());
    //Se valida que no se envie un input vacío
    if(sitio.trim().length>0){
        sitios.push(sitio);
    }
    //Se limpia el input de la url
    document.getElementById("feedurl").value = "";
  
}

function eliminar(el) {
    var index = $(el).closest("tr").index()
    console.log(index);
    let tabla = document.getElementById("tablaURL");
    let ID =tabla.rows[index+1].cells[0].innerHTML;
    console.log(ID);
    //FUNCIÓN PARA ELIMINAR DE BASE DE DATOS


}

let form = document.getElementById("URLform");

form.addEventListener("submit", (e) => {

   var feedURL =form.feedurl;
   var metodo = form.method;
   var url = "../backend/xxxxx.php";
   
   ajax(metodo, url, "resultado", feedURL.value);

  });

  function ajax(metodo, url, variable1, valor1){
    var httpRequest;

    if (window.XMLHttpRequest) {
        httpRequest = new XMLHttpRequest();
    }else{
        httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
    }

    httpRequest.onreadystatechange = function() {
        if (httpRequest.readyState == 4 && httpRequest.status == 200) {
        }
    }

    if(metodo == "get"){
        httpRequest.open(metodo, url+"?"+variable1+"=" + valor1);
    }else{
        httpRequest.open(metodo, url);
        httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    }
    httpRequest.send(variable1+"=" + valor1);
}
