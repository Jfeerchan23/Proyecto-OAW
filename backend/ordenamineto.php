<?php
$servidor = "localhost";
$usuario = "root";
$contrasena = "";
$basedatos = "lector_rss";

$conexion = new mysqli($servidor, $usuario, $contrasena, $basedatos);

if ($conexion->connect_error) {
    die("Connection failed: " . $conexion->connect_error);
}

//Por titulo
$sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Titulo";
$result = $conexion->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "<br> id: ". $row["ID"]. " - Titulo: ". $row["Titulo"]. " - Descripcion " . $row["Descripcion"] . " - Categoria: " . $row["Categorias"] . " - Fecha: " . $row["Fecha"] . "<br>";
    }
  } else {
    echo "0 results";
  }
  
//Por Fecha
$sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Fecha";
$result = $conexion->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "<br> id: ". $row["ID"]. " - Titulo: ". $row["Titulo"]. " - Descripcion " . $row["Descripcion"] . " - Categoria: " . $row["Categorias"] . " - Fecha: " . $row["Fecha"] . "<br>";
    }
  } else {
    echo "0 results";
  }

// Por Categoria

$sql = "SELECT ID, Titulo, Descripcion, Categorias, Fecha FROM noticias ORDER BY Categorias";
$result = $conexion->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "<br> id: ". $row["ID"]. " - Titulo: ". $row["Titulo"]. " - Descripcion " . $row["Descripcion"] . " - Categoria: " . $row["Categorias"] . " - Fecha: " . $row["Fecha"] . "<br>";
    }
  } else {
    echo "0 results";
  }


  $conexion->close();


?>