<?php 
    include ("variables.php");
    include ("funciones.php");

    $sentenciaSQl = "DELETE FROM noticias";
    ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

    $sentenciaSQL = "SELECT URL FROM sitiosweb";
    $resultado = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

    while ($fila = mysqli_fetch_assoc($resultado)) {
        printf ("%s (%s)\n", $row["Name"], $row["CountryCode"]);
    }

    
?>