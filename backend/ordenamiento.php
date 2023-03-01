<?php
$servidor = "localhost";
$usuario = "root";
$contrasena = "";
$basedatos = "lector_rss";

$conexion = new mysqli($servidor, $usuario, $contrasena, $basedatos);

if ($conexion->connect_error) {
    die("Connection failed: " . $conexion->connect_error);
}

$tipoDeOrdenamineto=$_GET['orden'];
  
switch($tipoDeOrdenamineto){
    case 1: //Ordenamineto por Titulo
        $sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Titulo";
        $result = $conexion->query($sql);
        $allData = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $datosArray = array(
                    "ID"=>$row["ID"],
                    "Titulo"=>$row["Titulo"],
                    "Descripcion"=>$row["Descripcion"],
                    "Categorias"=>$row["Categorias"],
                    "Fecha"=>$row["Fecha"]
                  );
                  array_push($allData, $datosArray);
            }
        } else {
            echo "0 results";
        }
        break;

    case 2: //Ordenamineto por Fecha
        $sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Fecha";
        $result = $conexion->query($sql);
        $allData = array();
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                $datosArray = array(
                    "ID"=>$row["ID"],
                    "Titulo"=>$row["Titulo"],
                    "Descripcion"=>$row["Descripcion"],
                    "Categorias"=>$row["Categorias"],
                    "Fecha"=>$row["Fecha"]
                  );
                  array_push($allData, $datosArray);
            }
            } else {
            echo "0 results";
        }
        break;
    case 3: 
        $sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Categorias";
        $result = $conexion->query($sql);

        if ($result->num_rows > 0) {
            $allData = array();
            while($row = $result->fetch_assoc()) {
                $datosArray = array(
                    "ID"=>$row["ID"],
                    "Titulo"=>$row["Titulo"],
                    "Descripcion"=>$row["Descripcion"],
                    "Categorias"=>$row["Categorias"],
                    "Fecha"=>$row["Fecha"]
                  );
                  array_push($allData, $datosArray);
            }
            } else {
            echo "0 results";
        }
        break;
    
    default:
        $sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY ID";
        $result = $conexion->query($sql);

        if ($result->num_rows > 0) {
            $allData = array();
            while($row = $result->fetch_assoc()) {
                $datosArray = array(
                    "ID"=>$row["ID"],
                    "Titulo"=>$row["Titulo"],
                    "Descripcion"=>$row["Descripcion"],
                    "Categorias"=>$row["Categorias"],
                    "Fecha"=>$row["Fecha"]
                  );
                  array_push($allData, $datosArray);
            }
        } else {
            echo "0 results";
        }
}



$conexion->close();

 return json_encode($allData);


?>