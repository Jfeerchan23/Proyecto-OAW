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
    <form method="get" name="form" id="URLform">
        <input type="text" id="feedurl" name="feedurl" placeholder="Escribe una URL" onclick="this.select()" required >
       <input type="submit" value="Agregar" id="btnSubmit" name="btnSubmit"/>
       <button type="button" onclick="editarSitios()" >Editar</button>
       <button type="button" onclick="editarSitios()" >Actualizar</button>
    </form>
    <form >
        <input type="text" id="buscarNoticia" name="buscarNoticia" placeholder="Busca una noticia" onclick="this.select()" required >
       <button type="button"  >Buscar</button>
    </form>
    <div>
    <div>
                    <div >
                        <!--Título de la noticia-->
                        <h2><a class="feed_title"  target="_blank">Ejemplo de titulo de noticia</a></h2>
                        <span>20 de febrero de 2023</span> <!--Fecha de la publicación-->
                    </div>
                    <!-- Cuerpo de la noticia-->
                    <div class="post-content">
                         Este es un ejemplo de descripción. Una vez más aquí. Hace un par de días publiqué en esta web el artículo; VPN, ¿qué es y para qué sirve? Pues para seguir…
                    </div>
                    <div>
                        Categorías: hola hola hola
                    </div>
                    <div>
                         <!-- botón leer más. Con enlace a la noticia-->
                    <a href="" target="_blank">Este es un enlace</a>
                    </div>
                </div>

    </div>
    <script src="scripts/funciones.js"></script>
</body>
</html>