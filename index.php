<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto de OAW</title>
    <!--- Bootstrap--->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <!--- CSS personalizado para el body --->
    <link rel="stylesheet" href="css/interfaz.css" </head>

<body>
    <header class="animate__animated animate__fadeInDownBig">
        <div class="overlay" style="z-index:1;">

            <div class="container">
                <div class="row justify-content-md-center">

                    <div class="col-1 col-md-5 mb-2 mb-md-0">
                        <h1 id="tituloHeader">Lector de Noticias RSS</h1>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                        <form method="post" name="form" id="URLform">
                            <input type="text" id="RSSURL" name="RSSURL" placeholder="Escribe una URL" onclick="this.select()" required>
                            <button type="button" onclick="guardarURL()"> Agregar</button>
                            <button type="button" class="btn btn-primary" onclick="editarSitios()">Editar</button>
                            <button type="button" class="btn btn-info" onclick="actualizar()">Actualizar</button>
                        </form>
                        <form>
                            <input type="text" id="buscarNoticia" name="buscarNoticia" placeholder="Busca una noticia" onclick="this.select()" required>
                            <button type="button">Buscar</button>
                        </form>
                        <div>
                            Ordenar por:
                            <select id="idCategoria" name="idCategoria" required>
                                <option value="1">Título</option>
                                <option value="2" selected>Fecha</option>
                                <option value="3">Categorías</option>
                                <option value="4">Descripción</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="section">
            <table class='table-dark table -striped'>

                <thead>
                    <tr>
                        <th>Las últimas Noticias: </th>
                    </tr>

                </thead>
                <tbody id="res">

                </tbody>
            </table>

        </div>

    </div>
    <script src="scripts/funciones.js"></script>
</body>

</html>