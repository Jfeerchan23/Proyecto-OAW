<?php 
    include ("variables.php");
    include ("funciones.php");

    $sentenciaSQL = "DELETE FROM noticias";
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

    $sentenciaSQL = "SELECT URL FROM sitiosweb";
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

    while ($fila = mysqli_fetch_assoc($resultado)) {
        actualizarNoticias($fila['URL']);
    }

    
?>