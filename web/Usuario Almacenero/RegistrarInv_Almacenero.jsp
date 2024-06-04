<%-- 
    Document   : RegistrarInv
    Created on : 04-oct-2023, 13:49:20
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias_Almacenero.jsp" %>
        <link rel="stylesheet" href="CSS/RegistrarInv_Almacenero.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <script src="JS/inventario.js"></script>
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
                    <div class="col inventario">
                        <div>
                            <div class="row">
                                <h4 class="col-md-3"><b>Registrar Inventario</b></h4>
                                <div class="col-md-9"></div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <label class="htext" for="nombreproduc"><h4>Número Inventario:</h4></label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="text" placeholder="Número Inventario" name="nombreprod">
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <label class="htext" for="FechaInv"><h4>Fecha Inventario:</h4></label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="date" name="FechaInv">
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <label class="htext" for="FechaInv"><h4>Hora Inventario:</h4></label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="time" name="HoraInv">
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <h4><b>Lista de Productos</b></h4>

                            <div class="barra-lateral">
                                <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                    <thead class="table-dark" align="center">
                                    <td>Código</td>
                                    <td>Nombre</td>
                                    <td>Cantidad Contada</td>
                                    <td>Acciones</td>
                                    </thead>
                                    <tr class="trcolr" align="center">
                                        <td>P001</td>
                                        <td>Paracetamol</td>
                                        <td>280</td>
                                        <td><button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P002</td>
                                        <td>Panadol</td>
                                        <td>100</td>
                                        <td><button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P003</td>
                                        <td>Cicatricure</td>
                                        <td>300</td>
                                        <td><button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P004</td>
                                        <td>Grabol</td>
                                        <td>150</td>
                                        <td><button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-2 mt-1">
                                    <label for="Obsv" class="htext"><h4>Observaciones:</h4></label>
                                </div>
                                <div class="col-md-10">
                                    <input class="form-control" type="text" placeholder="Observaciones" name="Obsv">
                                </div>
                            </div>
                            <div class="row mt-3">    
                                <div class="col-md-1"></div>
                                <a href="Inventario_Almacenero.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-1">Cancelar</a>
                                <div class="col-md-3"></div>
                                <button type="button" class="btn btn-primary yojhan col-md-1 mt-1">Imprimir</button>
                                <div class="col-md-3"></div>
                                <a href="Inventario_Almacenero.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-1">Aceptar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="piePagina_Almacenero.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
</body>

</html>
