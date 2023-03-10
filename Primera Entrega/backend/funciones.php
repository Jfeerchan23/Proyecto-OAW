<?php

function ejecutarSQL ($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL) {

    $conexion = mysqli_connect($servidor, $usuario, $contrasena, $basedatos);
    if (!$conexion) {
        die("Fallo: " . mysqli_connect_error());
    }

    $resultado = mysqli_query($conexion, $sentenciaSQL);
    mysqli_close($conexion);
    return $resultado;
}

function actualizarNoticias($RSSURL){
    include ("variables.php");
    $RSS = simplexml_load_file($RSSURL);
    $irss = intval(getID($RSSURL));

    foreach ($RSS->channel->item as $item) {
        $enlace = $item->link;  //extrae el enlace
        $titulo = $item->title;  //extrae el titulo
        $fecha = new DateTime($item->pubDate); //extrae la fecha
        $fecha = $fecha->format(DateTime::ATOM); //Formatea la fecha
        $categorias = ""; //Variable para almacenar las categorias
        foreach ($item->category as $cat) {
            $categorias = $cat . ", " . $categorias;
        }
        $categorias = substr($categorias, 0, strrpos($categorias, ", "));
        $descripcion = strip_tags($item->description);  //extrae la descripcion
        if (strlen($descripcion) > 500) { //limita la descripcion a 500 caracteres
            $descripcionCortada = substr($descripcion, 0, 200);
            $descripcion = substr($descripcionCortada, 0, strrpos($descripcionCortada, ' ')) . '...';
        }

        $sentenciaSQL = "INSERT INTO noticias (IDSitioWeb, URL, Titulo, Fecha, Categorias, Descripcion) VALUES ("
            . "'" . $irss . "', "
            . "'" . $enlace . "', "
            . "'" . $titulo . "', "
            . "'" . $fecha . "', "
            . "'" . $categorias . "', "
            . "'" . $descripcion . "') ";
            ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);
    }
}

function getID($url) {
    include ("variables.php");
    $sentenciaSQL = "SELECT id FROM sitiosweb WHERE url='". $url. "'";
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);
    $fila = mysqli_fetch_assoc($resultado);
    return $fila["id"];
}