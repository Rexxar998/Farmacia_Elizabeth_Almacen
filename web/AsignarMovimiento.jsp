<%-- 
    Document   : AsignarMovimiento
    Created on : 04-oct-2023, 16:58:00
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/Asignar_Movi.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <title>Farmacia Elizabeth J&L</title>
        <%@include file="verificaLogin.jsp" %>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
    </head>

    <body>

        <%@include file="encabezadoAdmin.jsp" %>

        <br>
        <br>

        <div class="container-fluid">
            <div class="row">
                <%@include file="Menu.jsp" %>

                <div class="col-xs-12 col-md-9">
                    <div class="col inventario">
                        <div class="row">
                            <a href="AgregarMovimiento.jsp">
                                <i style="margin-left: -14px; color: #1452CF;" class="fa-solid fa-rotate-left" ></i>
                            </a>
                            <h4 style="margin-left: 15px; margin-top: -27px;" class="">Asignar Tipo de Movimiento</h4>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 mt-2">
                                <input id="BusPr" class="form-control icono-placeholder" type="text" placeholder=" Nombre Tipo Movimiento" name="DescriProduc">
                            </div>
                            <button type="button" class="col-md-1 mt-2 btn btn-primary btnAsigMovi">Buscar</button>
                        </div>
                        <hr>
                        <h6><b>LISTA DE MOVIMIENTOS</b></h6>
                        <div class="tablaLab">
                            <table class="table table-bordered table-hover" style="border: black;">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>Nombre</td>
                                <td>Descripción</td>
                                <td></td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>TM001</td>
                                    <td>Ingreso a Almacén</td>
                                    <td>Productos ingresan a Almacén con su respectiva guía de remisión</td>
                                    <td><a href="AgregarMovimiento.jsp"><button class="btn btn-primary btnAsigMovi">Seleccionar</button></a></td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>TM002</td>
                                    <td>Ingreso por reposición de Inventario</td>
                                    <td>Productos ingresan a Almacén para equilibrar el Kardex con el inventario</td>
                                    <td><a href="AgregarMovimiento.jsp"><button class="btn btn-primary btnAsigMovi">Seleccionar</button></a></td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>TM003</td>
                                    <td>Salida por caducidad</td>
                                    <td>Productos salen e almacén por vencimiento</td>
                                    <td><a href="AgregarMovimiento.jsp"><button class="btn btn-primary btnAsigMovi">Seleccionar</button></a></td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>TM004</td>
                                    <td>Salida a venta</td>
                                    <td>Productos salen del Almacén hacia el punto de venta</td>
                                    <td><a href="AgregarMovimiento.jsp"><button class="btn btn-primary btnAsigMovi">Seleccionar</button></a></td>
                                </tr>
                            </table>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <button class="col-md-1 mt-2 btn btn-primary btnAsigMovi" type="submit">Seleccionar</button>
                            <div class="col-md-2"></div>
                            <a href="AgregarMovimiento.jsp" role="button"class="col-md-1 mt-2 btn btn-primary btnAsigMovi" type="submit">Aceptar</a>
                            <div class="col-md-4"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="piePagina.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
</body>
</html>
