<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto de OAW</title>
</head>

<body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <form method="post" name="form" id="URLform">
        <input type="text" id="RSSURL" name="RSSURL" placeholder="Escribe una URL" onclick="this.select()" required>
        <button type="button" onclick="guardarURL()"> Agregar</button>
        <button type="button" onclick="editarSitios()">Editar</button>
        <button type="button" onclick="actualizar()">Actualizar</button>
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
    </select>

    </div>
    
    <div class="container">
        <div class="section">
            <table>
                <thead>
                    <tr>
                        <th>La últimas Noticias: </th>
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