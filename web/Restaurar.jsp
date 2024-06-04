<%-- 
    Document   : Restaurar
    Created on : 04-oct-2023, 12:16:55
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/restaurar.css">
    <script src="JS/rees.js"></script>
    <SCript src="https://kit.fontawesome.com/4bd4661a39.js" crossorigin="anonymous"></SCript>
    <title>Farmacia Elizabeth J&L</title>
    <link rel="icon" type="image/png" href="IMG/cruz.png">
</head>

<body>
    <div class="container" id="container">
            <div class="mensaje">
                <h3>Reestablecer acceso <i class="fa-solid fa-check"></i></h3>
                <label for="newuser">
                    <h4 style="margin-left: 4px;">Nuevo Usuario: <input style="margin-left: 30px; height: 27px;" type="text" placeholder="Usuario" name="newuser"></h4>
                </label>
                <label for="newpassword">
                    <h4 style="margin-left: 3px;">Nueva Contraseña: <input style="margin-left: 5px; height: 27px;" type="text" placeholder="Contraseña" name="newpassword"></h4>
                </label>
            <a href="Bloqueo.jsp">
                <button class="button">Guardar</button>
            </a>
            </div>
        </div>
    </div>
</body>
</html>