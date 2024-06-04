<%-- 
    Document   : Menu_Admin
    Created on : 04-oct-2023, 13:24:06
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias_Almacenero.jsp" %>
        <link rel="stylesheet" href="CSS/menu_Almacenero.css">
        <title>Farmacia Elizabeth J&L</title>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
        <%@include file="VerificaLoginAlmacenero.jsp" %>
    </head>

    <body>

        <%@include file="encabezadoAlmacenero.jsp" %>

        <br>
        <br>

        <div class="container-fluid">
            <div class="row">
                <%@include file="Menu_Funcion_Almacenero.jsp" %>

                <div class="col-xs-12 col-md-9">
                    <div class="row">
                        <div class="col">
                            <h2>
                                <b>MENÚ PRINCIPAL</b>
                            </h2>
                        </div>
                    </div>

                    <hr>


                    <div class="row">
                        <div class="row">
                            <div class="col">
                                <h3><b>Bienvenid@ Almacenero - Farmacia</b></h3>
                                <p>Estamos preparando algunos enlaces para que puedas comenzar</p>
                            </div>                     
                        </div>
                        <center>
                            <div class="row">                               
                                <div class="col comienza text-center">
                                    <h4 class="movcont movcom mt-5"><b>Comienza</b></h4>
                                </div>
                                <div class="col siguiente">
                                    <h4 class="movcont"><b>Siguientes pasos</b></h4>
                                    <i class="movcont bi bi-plus"><a href=""> Añade tu primera actividad a realizar</a></i>
                                    <br>
                                    <i class="movcont bi bi-card-text"><a href=""> Realiza tus actividades en progreso</a></i>
                                    <br>
                                    <i class="movcont bi bi-card-image"><a href=""> Ver tu sitio</a></i>

                                </div>
                                <div class="col acciones">
                                    <h4 class="movcont"><b>Más acciones</b></h4>
                                    <i class="movcont bi bi-receipt-cutoff"><a href="Inventario_Almacenero.html">Gestiona tu inventario</a></i>
                                    <br>
                                    <i class="movcont bi bi-mortarboard-fill"><a href="">Aprende más de como comenzar</a></i>
                                </div>                                      
                            </div>    
                        </center>


                    </div>

                    <hr>

                    <div class="row text-center">
                        <div class="col"
                             <center>
                                <div class="borrador-rapido">
                                    <h4><b> De un vistazo</b></h4>
                                    <i class="bi bi-door-open-fill"><a href=""> 1 entrada</a></i>
                                    <br>
                                    <br>
                                    <i class="bi bi-chat-right-text-fill"><a href=""> 20 Actividades en progreso</a></i>
                                    <br>
                                    <br>
                                    <i class="bi bi-layers-fill"><a href=""> 1 página</a></i>
                                </div>
                                <div class="row col borrador-rapido"> <br> <!--BOX SOMPREADA ACTIVIDADES EN PROGRESO-->
                                    <h4><b><br>ACTIVIDADES EN PROGRESO</b></h4>
                                    <p>Publicaciones recientes</p>
                                    <div class="col-1"></div>
                                    <div class="row">
                                        <div class="col-1"></div>
                                        <select class="col-11 agrandvis" name="activ" style="height: 80px;">
                                            <option value="">1-Realizando interfaces (en progreso).</option>
                                            <option value="">2-Realizando interfaces (en progreso).</option>
                                            <option value="">3-Realizando interfaces (en progreso).</option>
                                            <option value="">4-Realizando interfaces (en progreso).</option>
                                            <option value="">5-Realizando interfaces (en progreso).</option>
                                            <option value="">6-Realizando interfaces (en progreso).</option>
                                            <option value="">7-Realizando interfaces (en progreso).</option>
                                            <option value="">8-Realizando interfaces (en progreso).</option>
                                            <option value="">9-Realizando interfaces (en progreso).</option>
                                            <option value="">10-Realizando interfaces (en progreso).</option>
                                            <option value="">11-Realizando interfaces (en progreso).</option>
                                            <option value="">12-Realizando interfaces (en progreso).</option>
                                            <option value="">13-Realizando interfaces (en progreso).</option>
                                            <option value="">14-Realizando interfaces (en progreso).</option>
                                            <option value="">15-Realizando interfaces (en progreso).</option>
                                            <option value="">16-Realizando interfaces (en progreso).</option>
                                            <option value="">17-Realizando interfaces (en progreso).</option>
                                            <option value="">18-Realizando interfaces (en progreso).</option>
                                            <option value="">19-Realizando interfaces (en progreso).</option>
                                            <option value="">20-Realizando interfaces (en progreso).</option>
                                        </select>
                                    </div>
                                    <div class="col-3"></div>
                                    <div class="col-1"></div>
                                    <button style="margin-top: 20px;" class="boton2 col-1">Terminar</button>
                                    <div class="col-1"></div>
                                    <div class="col-3"><br></div>
                                    <div class="col-2"><br></div>
                                </div>
                            </center>
                        </div>
                        <div class="col borrador-rapido">
                            <div class="row">
                                <center>
                                    <div class="col-2"></div>
                                    <h4 class="col-8"><b>Actividad</b></h4>
                                    <div class="col-2"></div>

                                    <br>


                                    <div class="col-1"></div>
                                    <input class="col-10" style="height: 27px;" type="text" name="nombActv" placeholder="Agregar actividad.....................................">
                                    <div class="col-1"></div>

                                    <br>

                                    <div class="col-3"></div>
                                    <button class="col-6 boton">Guardar</button>
                                    <div class="col-3"></div>

                                    <br>

                                    <div class="col-1"></div>
                                    <video class="col-10" autoplay muted loop controls src="VIDEO/Atencion.mp4"></video>
                                    <div class="col-1"></div>
                                </center>                             
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>

        <!--BOOTSTRAP YA APLICADO-->

        <%@include file="piePagina_Almacenero.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
</body>
</html>