var datos = [];
document.body.onload = function () {
  actualizar();
};


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

  httpRequest.open("get", "backend/ordenamiento.php" + "?" + "orden" + "=" + idCategoria);

  httpRequest.onload = function () {
    if (httpRequest.status == 200) {
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
                <h3 class="p-2 bg-secondary text-white">${item.Titulo}</h3>
                <span ><b>${item.Fecha}</b></span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.Descripcion}
            </div>
            <div>
                <b>Categorías:</b> ${item.Categorias}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.URL}" target="_blank">Ir al sitio web</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `;
      }

    } else {
      console.log('Existe un error de tipo' + httpRequest.status);
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
  httpRequest.open("post", "backend/actualizarBD.php");
  httpRequest.onload = function () {
    if (httpRequest.status == 200) {
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
                <h3 class="p-2 bg-secondary text-white">${item.Titulo}</h3>
                <span ><b>${item.Fecha}</b></span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.Descripcion}
            </div>
            <div>
                <b>Categorías:</b> ${item.Categorias}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.URL}" target="_blank">Ir al sitio web</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `;
      }

    } else {
      console.log('Existe un error de tipo' + httpRequest.status);
    }
  }

  httpRequest.send();
}

function buscar(){

  let form = document.getElementById("BUSCARform");
  var busqueda = document.getElementById("buscarNoticia").value;

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

  httpRequest.open("get", "backend/buscarNoticia.php" + "?" + "busqueda" + "=" + busqueda);

  httpRequest.onload = function () {
    if (httpRequest.status == 200) {
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
                <h3 class="p-2 bg-secondary text-white">${item.Titulo}</h3>
                <span ><b>${item.Fecha}</b></span> <!--Fecha de la publicación-->
            </div>
            <!-- Cuerpo de la noticia-->
            <div class="post-content">
            ${item.Descripcion}
            </div>
            <div>
                <b>Categorías:</b> ${item.Categorias}
            </div>
            <div>
                <!-- botón leer más. Con enlace a la noticia-->
                <a href=" ${item.URL}" target="_blank">Ir al sitio web</a>
            </div>
        </div>
    </div>
        
        </td>
      </tr>
      `;
      }

    } else {
      console.log('Existe un error de tipo' + httpRequest.status);
    }
  }
  httpRequest.send();

}

