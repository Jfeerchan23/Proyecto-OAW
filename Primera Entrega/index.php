<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto de OAW</title>
    <!--- Bootstrap--->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> -->

    <!-- Directorio de bootstrap descargado -->
    <link rel="stylesheet" href="bootstrap-5.2.3-dist/css/bootstrap.min.css">
    <script src="bootstrap-5.2.3-dist/js/*"></script>

    <!--- CSS personalizado para el body --->
    <link rel="stylesheet" href="css/interfaz.css"> 
 
</head>


<body class="fondo">
    <h1 id="tituloHeader" class="text-center display-4 tituloHeader p-10">Lector de Noticias RSS</h1>


    <div class="container w-50">
        <form method="post" name="form" id="URLform">
            <div class="form-group">
                    <input type="text" class="form-control" id="RSSURL" name="RSSURL" placeholder="Escribe una URL" onclick="this.select()" required>
            </div>
            <button type="button" class="btn btn-primary mt-2 me-2" onclick="guardarURL()"> Agregar</button>
            <button type="button" class="btn btn-success mt-2 me-2" onclick="editarSitios()">Editar</button>
            <button type="button" class="btn btn-info mt-2" onclick="actualizar()">Actualizar</button>
        </form>
    </div>

    <br>

    <div class="container w-50">
        <form method="get" name="form" id="BUSCARform">
            <div class="form-group">
                <input type="text" id="buscarNoticia" class="form-control" name="buscarNoticia" placeholder="Busca una noticia" onclick="this.select()" required>
            </div>
            <button type="button" class="btn btn-primary mt-2" onclick="buscar()">Buscar</button>
        </form>
        <br>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01">Ordenar por: </label>
            </div>
            <select class="custom-select" id="idCategoria" name="idCategoria" required>
            <option value="1">Título</option>
                <option value="2" selected>Fecha</option>
                <option value="3">Categorías</option>
                <option value="4">Descripción</option>
                <option value="5">URL</option>
            </select>
        </div>

    </div>

    <div class="container">
        <div class="section">
            <table class='table-light table -striped'>

                <thead>
                    <tr>
                        <th class="p-3 bg-dark text-white"><h2>Las últimas Noticias:</h2> </th>
                    </tr>

                </thead>
                <tbody id="res">

                </tbody>
            </table>

        </div>

    </div>
    <script src="scripts/jquery-3.6.3.js"></script>
    <script src="scripts/funciones.js"></script>
  
</body>

</html>