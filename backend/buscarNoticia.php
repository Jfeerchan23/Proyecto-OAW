<?php
$servidor = "localhost";
$usuario = "root";
$contrasena = "";
$basedatos = "lector_rss";

$conexion = new mysqli($servidor, $usuario, $contrasena, $basedatos);

if ($conexion->connect_error) {
    die("Connection failed: " . $conexion->connect_error);
}

$busquedaNoticia=$_GET['busqueda'];

    $sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha, URL FROM noticias WHERE Titulo LIKE '%". $busquedaNoticia ."%' OR Descripcion LIKE '%". $busquedaNoticia."%'";
    $result = $conexion->query($sql);
    $allData = array();
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $datosArray = array(
                "ID"=>$row["ID"],
                "Titulo"=>$row["Titulo"],
                "Descripcion"=>$row["Descripcion"],
                "Categorias"=>$row["Categorias"],
                "Fecha"=>$row["Fecha"],
                "URL"=>$row["URL"]
              );
              array_push($allData, $datosArray);
        }
    } else {
        echo "0 results";
    }
    
    $conexion->close();

    echo json_encode($allData);
?>