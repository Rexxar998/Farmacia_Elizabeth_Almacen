<%-- 
    Document   : Correo
    Created on : 04-oct-2023, 12:24:41
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/correo.css">
    <script src="JS/rees.js"></script>
    <title>Farmacia Elizabeth J&L</title>
    <link rel="icon" type="image/png" href="IMG/cruz.png">
</head>

<body>
    <div class="container" id="container">
            <div class="mensaje">
            <h3>El usuario y contraseña se han reestablecido satisfactoriamente</h3>
            <p>Por favor, regrese al inicio de sesión para poder ingresar con su nuevo usuario y contraseña.</p>
            <a href="index.jsp">
                <button onclick="cerrarMensaje()" class="button">Cerrar</button>
            </a>
            </div>
        </div>
    </div>
</body>
</html>