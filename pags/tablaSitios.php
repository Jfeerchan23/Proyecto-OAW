<?php
error_reporting(E_WARNING ^ E_ALL ^ E_NOTICE);
include("../backend/variables.php");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <table id="tablaURL" class="table">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>URL</th>
                <th>Eliminar</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $conexion = mysqli_connect($servidor, $usuario, $contrasena, $basedatos);
            if (!$conexion) {
                die("Fallo: " . mysqli_connect_error());
            }
            $sentenciaSQL = "SELECT * FROM `sitiosweb`";
            $imcRequest = mysqli_query($conexion, $sentenciaSQL);
            mysqli_close($conexion);

            if (mysqli_num_rows($imcRequest) > 0) {
                while ($registro = mysqli_fetch_assoc($imcRequest)) {
                    echo "<tr> 
                        <td>" . $registro['id'] . "</td>
                        <td>" . $registro['url'] . "</td>
                        <td><button type='button' onclick='eliminar(this)'>X</td>
                      </tr>";
                }
            }
            ?>
   <script src="../scripts/tablaSitios.js"></script>
        </tbody>
    </table>

</body>

</html>