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
        <input type="text" id="feedurl" name="feedurl" placeholder="Escribe una URL del FEED" onclick="this.select()" required >
       <input type="submit" value="Agregar" id="btnSubmit" name="btnSubmit"/>
       <button type="button" onclick="editarSitios()" >Editar</button>
    </form>
    <script src="funciones.js"></script>
</body>
</html>