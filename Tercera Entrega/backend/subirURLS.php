<?php
include ("variables.php");
include ("funciones.php");

    if (isset($_POST['RSSURL'])) {
        $sentenciaSQL = "INSERT INTO sitiosweb(url) VALUES ('".$_POST['RSSURL']."')";
        ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);
    }

?>