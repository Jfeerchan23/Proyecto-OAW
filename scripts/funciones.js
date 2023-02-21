var datos = [];
document.body.onload = function () {

  traerDatos();

}

function traerDatos() {
const xhttp = new XMLHttpRequest();
xhttp.open('GET','scripts/noticias.json',true);
xhttp.send();
xhttp.onreadystatechange = function(){
  if(this.readyState == 4 && this.status == 200){
    datos = JSON.parse(this.responseText);
    let res =  document.querySelector('#res');
    res.innerHTML = '';
    for(let item of datos){
      let ctg = '';
      for( let categoria of item.categorias ){
        ctg += categoria.nombre+" "
      }


      res.innerHTML+=`
      <tr>
        <td>
        <div>
        <div>
            <div>
                <h2><a class="feed_title" target="_blank">${item.titulo}</a></h2>
                <span>${item.fecha}</span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.descripcion}
            </div>
            <div>
                Categorías: ${ctg}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.url}" target="_blank">Este es un enlace</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `
    }
   
  }



}

}



let form = document.getElementById("URLform");

form.addEventListener("submit", (e) => {

  var feedURL = form.feedurl;
  var metodo = form.method;
  var url = "../backend/xxxxx.php";

  ajax(metodo, url, "resultado", feedURL.value);

});

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
  }

  if (metodo == "get") {
    httpRequest.open(metodo, url + "?" + variable1 + "=" + valor1);
  } else {
    httpRequest.open(metodo, url);
    httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  }
  httpRequest.send(variable1 + "=" + valor1);
}
function editarSitios() {
  ventana = window.open("pags/tablaSitios.php", "ventana", "width=350,height=250");
}

//Cuando se hace la selección
$("#idCategoria").change(function(){
  //Normalmente se envía el value del select
  var idCategoria = $("#idCategoria").val();
  console.log(idCategoria);

});