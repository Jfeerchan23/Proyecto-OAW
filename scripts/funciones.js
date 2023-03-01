var datos = [];
document.body.onload = function () {
 
  actualizar();
};

function traerDatos() {
  const xhttp = new XMLHttpRequest();
  xhttp.open("GET", "scripts/noticias.json", true);
  xhttp.send();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      datos = JSON.parse(this.responseText);
      let res = document.querySelector("#res");
      res.innerHTML = "";
      for (let item of datos) {
        let ctg = "";
        for (let categoria of item.categorias) {
          ctg += categoria.nombre + " ";
        }

        res.innerHTML += `
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
      `;
      }
    }
  };
}



function guardarURL() {
  let form = document.getElementById("URLform");
  var feedURL = document.getElementById("RSSURL").value;
  var metodo = form.method;
  var url = "backend/subirURLS.php";

  ajax(metodo, url, "RSSURL", feedURL);
  document.getElementById("RSSURL").value = '';

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
function editarSitios() {
  ventana = window.open(
    "pags/tablaSitios.php",
    "ventana",
    "width=1000,height=400"
  );
}

//Cuando se hace la selección
$("#idCategoria").change(function () {
  //Normalmente se envía el value del select
  var idCategoria = $("#idCategoria").val();
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
  
  httpRequest.open("get","backend/ordenamiento.php" + "?" + "orden" + "=" + idCategoria);

  httpRequest.onload = function(){
    if(httpRequest.status == 200){
     var datos = JSON.parse(httpRequest.responseText);
      let res = document.querySelector("#res");
      res.innerHTML = "";
      for (let item of datos) {
        res.innerHTML += `
      <tr>
        <td>
        <div>
        <div>
            <div>
                <h2><a class="feed_title" target="_blank">${item.Titulo}</a></h2>
                <span>${item.Fecha}</span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.Descripcion}
            </div>
            <div>
                Categorías: ${item.Categorias}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.URL}" target="_blank">Este es un enlace</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `;
      }
      
    }else{
      console.log('Existe un error de tipo'+httpRequest.status);
    }
  }

  httpRequest.send();




});

function actualizar() {

  document.getElementById("idCategoria").value = '2';
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
  
  httpRequest.open("post","backend/actualizarBD.php");
  httpRequest.onload = function(){
    if(httpRequest.status == 200){
     var datos = JSON.parse(httpRequest.responseText);
      let res = document.querySelector("#res");
      res.innerHTML = "";
      for (let item of datos) {
        res.innerHTML += `
      <tr>
        <td>
        <div>
        <div>
            <div>
                <h2><a class="feed_title" target="_blank">${item.Titulo}</a></h2>
                <span>${item.Fecha}</span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.Descripcion}
            </div>
            <div>
                Categorías: ${item.Categorias}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.URL}" target="_blank">Este es un enlace</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `;
      }
      
    }else{
      console.log('Existe un error de tipo'+httpRequest.status);
    }
  }

  httpRequest.send();



}