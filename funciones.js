const sitios = ['🍅', '🍄', '🥦', '🥒', '🌽', '🥕', '🥑'];
function editarSitios(){
    generarVentana(sitios);
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

function generarVentana(){
	ventana = window.open("","ventana", "width=350,height=250");
	ventana.document.open();
	ventana.document.writeln("<html><head><title>Información del libro</title>");
	ventana.document.writeln("<link rel=\"stylesheet\" href=\"./style.css\" type=\"text/css\" media=\"all\">");
	ventana.document.writeln("</head><body>");
	ventana.document.writeln("<div>");
	ventana.document.writeln("<table class=\"table\">");
	ventana.document.writeln("<thead>");
	ventana.document.writeln("<tr>");
    ventana.document.writeln("<td>ID</td>");
	ventana.document.writeln("<td>URL</td>");
	ventana.document.writeln("<td>"+"Eliminar"+"</td>");
	ventana.document.writeln("</tr>");
    ventana.document.writeln("</thead>");
    var cadena='';
    for(i=0; i<sitios.length;i++){
        cadena += "<tr>";
        cadena += "<td>" + i+ "</td>";
		cadena += "<td>" + sitios[i] + "</td>";
        cadena += "<td><button type='button' onclick='remove(this)'>X</td>";
        cadena += "</tr>";
    }
    ventana.document.writeln(cadena);
	ventana.document.writeln("</table>");
	ventana.document.writeln("<div>");
	ventana.document.writeln("<input type=\"button\" value=\"Cerrar ventana\" onclick='window.close()' />");
	ventana.document.writeln("</body></html>");	
	ventana.document.close();
	ventana.focus();
	
}