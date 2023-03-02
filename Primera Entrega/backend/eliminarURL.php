<?php
    include ("variables.php");
    include ("funciones.php");

    $url = $_GET['RSSURL'];

    $sentenciaSQL = "DELETE FROM noticias WHERE IDSitioWeb=" . $url;
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);
    
    $sentenciaSQL = "DELETE FROM sitiosweb WHERE id=" . $url;
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

?>