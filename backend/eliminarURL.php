<?php
    include ("variables.php");
    include ("funciones.php");

    $url = $_GET['RSSURL'];
    $IDURL = getID($url);
    $sentenciaSQL = "DELETE FROM noticias WHERE IDSitioWeb=" . $IDURL;
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);
    
    $sentenciaSQL = "DELETE FROM sitiosweb WHERE id=" . $IDURL;
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

?>