var datos=[];function guardarURL(){let e=document.getElementById("URLform");var t,a=document.getElementById("RSSURL").value;ajax(e.method,"backend/subirURLS.php","RSSURL",a),document.getElementById("RSSURL").value=""}function ajax(e,t,a,n){var i;(i=window.XMLHttpRequest?new XMLHttpRequest:new ActiveXObject("Microsoft.XMLHTTP")).onreadystatechange=function(){4==i.readyState&&i.status},"get"==e?i.open(e,t+"?"+a+"="+n):(i.open(e,t),i.setRequestHeader("Content-Type","application/x-www-form-urlencoded")),i.send(a+"="+n)}function editarSitios(){ventana=window.open("pags/tablaSitios.php","ventana","width=1000,height=400")}function actualizar(){var e;document.getElementById("idCategoria").value="2",(e=window.XMLHttpRequest?new XMLHttpRequest:new ActiveXObject("Microsoft.XMLHTTP")).onreadystatechange=function(){4==e.readyState&&e.status},e.open("post","backend/actualizarBD.php"),e.onload=function(){if(200==e.status){var t=JSON.parse(e.responseText);let a=document.querySelector("#res");for(let n of(a.innerHTML="",t))a.innerHTML+=`<tr>  <td>  <div>  <div><div><h3 class="p-2 bg-secondary text-white">${n.Titulo}</h3><span ><b>${n.Fecha}</b></span> <!--Fecha de la publicaci\xf3n--></div><!-- Cuerpo de la noticia--><div class="post-content">${n.Descripcion}</div><div><b>Categor\xedas:</b> ${n.Categorias}</div><div><!-- bot\xf3n leer m\xe1s. Con enlace a la noticia--><a href=" ${n.URL}" target="_blank">Ir al sitio web</a></div></div></div></td></tr>`}else console.log("Existe un error de tipo"+e.status)},e.send()}function buscar(){document.getElementById("BUSCARform");var e,t=document.getElementById("buscarNoticia").value;(e=window.XMLHttpRequest?new XMLHttpRequest:new ActiveXObject("Microsoft.XMLHTTP")).onreadystatechange=function(){4==e.readyState&&e.status},e.open("get","backend/buscarNoticia.php?busqueda="+t),e.onload=function(){if(200==e.status){var t=JSON.parse(e.responseText);let a=document.querySelector("#res");for(let n of(a.innerHTML="",t))a.innerHTML+=`  <tr>  <td>  <div>  <div><div><h3 class="p-2 bg-secondary text-white">${n.Titulo}</h3><span ><b>${n.Fecha}</b></span> <!--Fecha de la publicaci\xf3n--></div><!-- Cuerpo de la noticia--><div class="post-content">${n.Descripcion}</div><div><b>Categor\xedas:</b> ${n.Categorias}</div><div><!-- bot\xf3n leer m\xe1s. Con enlace a la noticia--><a href=" ${n.URL}" target="_blank">Ir al sitio web</a></div> </div>
</div></td></tr>`}else console.log("Existe un error de tipo"+e.status)},e.send()}document.body.onload=function(){actualizar()},$("#idCategoria").change(function(){var e,t=$("#idCategoria").val();(e=window.XMLHttpRequest?new XMLHttpRequest:new ActiveXObject("Microsoft.XMLHTTP")).onreadystatechange=function(){4==e.readyState&&e.status},e.open("get","backend/ordenamiento.php?orden="+t),e.onload=function(){if(200==e.status){var t=JSON.parse(e.responseText);let a=document.querySelector("#res");for(let n of(a.innerHTML="",t))a.innerHTML+=`  <tr>  <td>  <div>  <div><div><h3 class="p-2 bg-secondary text-white">${n.Titulo}</h3><span ><b>${n.Fecha}</b></span> <!--Fecha de la publicaci\xf3n--></div><!-- Cuerpo de la noticia--><div class="post-content">${n.Descripcion}</div><div><b>Categor\xedas:</b> ${n.Categorias}</div><div><!-- bot\xf3n leer m\xe1s. Con enlace a la noticia--><a href=" ${n.URL}" target="_blank">Ir al sitio web</a></div>  </div></div></td></tr>`}else console.log("Existe un error de tipo"+e.status)},e.send()});