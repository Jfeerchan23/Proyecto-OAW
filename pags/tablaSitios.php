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

    <link rel="stylesheet" href="../css/interfaz.css">
    <link rel="stylesheet" href="../bootstrap-5.2.3-dist/css/bootstrap.min.css">
</head>

<body>
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <div class="container">
    <table id="tablaURL" class="table table-striped">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">URL</th>
                <th scope="col">Eliminar</th>
            </tr>
        </thead>
        <tbody>

            <?php
            $conexion = mysqli_connect($servidor, $usuario, $contrasena, $basedatos);
            if (!$conexion) {
                die("Fallo: " . mysqli_connect_error());
            }
            $sentenciaSQL = "SELECT * FROM `sitiosweb`";
            $Request = mysqli_query($conexion, $sentenciaSQL);
            mysqli_close($conexion);

            if (mysqli_num_rows($Request) > 0) {
                while ($registro = mysqli_fetch_assoc($Request)) {
                    echo 
                    "<tr> 
                        <td class='text-white'>" . $registro['id'] . "</td>
                        <td class='text-white'> <a class='btn btn-primary' data-toggle='collapse' href=". $registro['url'] ." target='_blank'>Enlace</a> </td>
                        <td><button type='button' class='btn btn-danger' onclick='eliminar(this)'>X</td>
                    </tr>";
                }
            }
            ?>
        <script src="../scripts/tablaSitios.js"></script>
        </tbody>
    </table>

    </div>

    
</body>

</html>