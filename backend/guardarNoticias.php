<?php 
    include ("variables.php");
    include ("funciones.php");

    $RSSURL = $_POST['RSSURL'];
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
?>