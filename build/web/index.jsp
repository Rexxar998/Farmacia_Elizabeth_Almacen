<%-- 
    Document   : newjsp
    Created on : Oct 6, 2023, 7:25:13 PM
    Author     : Larm
--%>
<%@page import="net.tanesha.recaptcha.ReCaptcha"%>
<%@page import="net.tanesha.recaptcha.ReCaptchaFactory"%>

<%
    Boolean bloqueoCuenta = (Boolean) session.getAttribute("bloqueoCuenta");
    String errorMensaje3 = null;
    if (bloqueoCuenta != null && bloqueoCuenta) {
        errorMensaje3 = (String) session.getAttribute("errorMensaje3");
        session.removeAttribute("errorMensaje3");

    }
    String errorLogin = (String) session.getAttribute("errorMensaje2");
    session.removeAttribute("errorMensaje2"); // Limpia el atributo de sesión para que no se muestre nuevamente en futuras solicitudes
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<head>
<html lang="us"></html>
<meta charset="UTF-8">
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Enlace a hoja de estilo externa para el estilo -->
<link rel="stylesheet" href="CSS/inicio.css">
<!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
<script src="JS/rees.js"></script>
<!-- BOOSTRAP -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
      crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!-- --------------------- -->
<title>Farmarcia_Elizabeth</title>
<link rel="icon" type="image/png" href="IMG/cruz.png">
<script src="https://kit.fontawesome.com/bca8b4f2e5.js" crossorigin="anonymous"></script>
</head>

<body>
    <%
        HttpSession sesion = request.getSession(false); // Obtenemos la sesión actual sin crear una nueva si no existe
        if (sesion != null) {
            sesion.invalidate(); // Invalidamos la sesión si existe
        }
    %>

    <div class="container">
        <div class="row justify-content-center">

            <div class="col columna text-center">
                <h1 class="titulo">Farmacia</h1>
                <h1 class="txt">Elizabeth</h1>
                <img src="IMG/cruz.png" class="img-fluid" alt="...">
                <a href="Usuario Almacenero/Inicio_Almacenero.jsp"><h4 class="titulo"style="margin-left: 15px; text-decoration: none;"> Selecciona tu usuario</h4></a>
            </div>

            <div class="col">
                <div class="row justify-content-center">
                    <div class="col text-center">
                        <h2>Bienvenido Administrador</h2>
                    </div>
                </div>                
                <div class="row justify-content-center">
                    <div class="col-8">
                        <form action="AutenticaAdmin" method="post">
                            <input type="hidden" name="admin" value="administrador" required>
                            <div class="col">
                                <i class="fa-solid fa-user fa-bounce usuario"></i>
                                <input type="text" name="usuario" placeholder="Usuario" required>                                
                            </div>

                            <div class="col">
                                <i class="fa-solid fa-key fa-bounce contraseña"></i>
                                <input type="password" name="password" placeholder="Contraseña" required>
                            </div>
                            <div class="row">
                                <div class="col-2"></div>    
                                <div class="g-recaptcha col-8" data-sitekey="6LeGJOkpAAAAAExd-sTFLzKsby29VHC4Szffyqct" name=""></div>
                                <div class="col-2"></div>       
                            </div> 
                            <div class="row">
                                <div class="col-3"></div>
                                <div class="col-9">
                                    <input class="input-boton" type="submit" value="Ingresar">
                                </div>  
                            </div>
                        </form>

                        <div class="row">
                            <% if (errorLogin != null) {%>
                            <div class="col-2"></div>
                            <div class="col-10" id="error-mensaje2" style="color:red;">
                                <%=     errorLogin%>
                            </div>
                            <% } %>
                            <% if (errorMensaje3 != null) {%>
                            <div class="alert alert-danger">
                                <%= errorMensaje3%>
                            </div>
                            <% }%>
                        </div>
                        <!-- Botón para abrir el popup de recuperación de contraseña -->
                        <div class="row">
                            <div class="col-3"></div>
                            <div class="col-9"><a href="#" onclick="abrirPopup()" class="movcontra">¿Olvidaste tu contraseña?</a></div>
                        </div>
                        <!-- Contenedor del popup -->
                        <div id="formularioEmergente" class="formulario-emergente">
                            <!-- Contenido dentro del popup -->
                            <div class="contenido-formulario">
                                <!-- Botón de cierre ('x') para el popup -->
                                <span class="cerrar" id="cerrarFormulario" onclick="cerrarPopup()">&times;</span>
                                <!-- Título para la sección de código de seguridad -->
                                <p class="letra">Código de seguridad</p>
                                <!-- Instrucciones para ingresar el código de seguridad mencionado -->
                                <p class="letra2">Por favor, ingresa el código de seguridad brindado</p>
                                <!-- Campo de entrada para el código de seguridad -->
                                <input type="email" placeholder="Código de seguridad" class="upmodel">
                                <!-- Botón para enviar el correo electrónico para recuperación -->
                                <a href="Restaurar.jsp" class="colorb upmodel">Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="https://wa.me/+51925113275?text=hola" class="wsp">
        <span class="fa-stack fa-3x" style="vertical-align: top;">
            <i class="fas fa-square fa-stack-2x"  style="color:black"></i>
            <i class="fas fa-brands fa-whatsapp fa-stack-1x fa-inverse" style="color:#25D366"></i>
        </span>
    </a>
    <p class="soporte">Soporte</p>
</body>
</html>
