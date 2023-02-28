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

    $sentenciaSQL = "SELECT * FROM noticias ORDER BY Fecha";
    $resultado2 = ejecutarSQL($servidor, $usuario, $contrasena, $basedatos, $sentenciaSQL);

    $myArray = array();
    $tempArray = array();
    while ($row = $resultado2->fetch_object()) {
        $tempArray = $row;
        array_push($myArray, $tempArray);
    }
  
    echo json_encode($myArray);
