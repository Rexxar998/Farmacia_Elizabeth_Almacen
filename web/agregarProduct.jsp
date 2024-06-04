<%-- 
    Document   : agregarProducto
    Created on : 19-oct-2023, 1:02:23
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <link rel="stylesheet" href="CSS/agregarProducto.css">
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
                            <a href="GenerarOrdenCompra.jsp">
                                <i style="margin-left: -14px; color: #1452CF;" class="fa-solid fa-rotate-left" ></i>
                            </a>
                            <h4 style="margin-left: 15px; margin-top: -27px;">Asignar Producto</h4>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 style="color: #2B9CE5;"><b>Nombre Producto</b></h6>
                            <div class="col-md-3 mt-2">
                                <input id="AgrPro" style=" height: 36px;" class="icono-placeholder form-control" type="text" placeholder="  Nombre Producto" name="AsigProducto">
                            </div>
                            <button class="btn btn-primary aggProduct col-md-1 mt-2">Buscar</button>
                            <div class="col-md-8"></div>
                        </div>
                        <hr>
                        <div class="row">
                            <h4><b>Resultados</b></h4>
                            <div class="barra-lateral col">
                                <table class="table table-bordered table-hover" style="border: black;">
                                    <thead class="table-dark" align="center">
                                    <td>C. Producto</td>
                                    <td>Tipo de Producto</td>
                                    <td>Nombre</td>
                                    <td></td>
                                    </thead>
                                    <tr class="trcolr" align="center">
                                        <td>P001</td>
                                        <td>Genérico</td>
                                        <td>Clonazepam</td>
                                        <td><a href="GenerarOrdenCompra.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P002</td>
                                        <td>Original</td>
                                        <td>Amoxicilina</td>
                                        <td><a href="GenerarOrdenCompra.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P003</td>
                                        <td>Original</td>
                                        <td>Panadol</td>
                                        <td><a href="GenerarOrdenCompra.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P004</td>
                                        <td>Genérico</td>
                                        <td>Atorvastilina</td>
                                        <td><a href="GenerarOrdenCompra.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="piePagina.jsp" %>
    </body>

</html>
