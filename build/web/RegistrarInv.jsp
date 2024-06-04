<%-- 
    Document   : RegistrarInv
    Created on : 04-oct-2023, 13:49:20
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <link rel="stylesheet" href="CSS/RegistrarInv.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <script src="JS/inventario.js"></script>
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
                                    <input class="form-control" type="text" placeholder="Número Inventario" name="nombreprod" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <label class="htext" for="FechaInv"><h4>Fecha Inventario:</h4></label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="date" name="FechaInv" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <label class="htext" for="FechaInv"><h4>Hora Inventario:</h4></label>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" type="time" name="HoraInv" style="background-color: #EAECE9;" readonly>
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
                                    <td>Cantidad Sistema</td>
                                    <td>Diferencia</td>
                                    </thead>
                                    <tr class="trcolr" align="center">
                                        <td>P001</td>
                                        <td>Paracetamol</td>
                                        <td>280</td>
                                        <td>300</td>
                                        <td>20</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P002</td>
                                        <td>Panadol</td>
                                        <td>100</td>
                                        <td>200</td>
                                        <td>100</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P003</td>
                                        <td>Cicatricure</td>
                                        <td>300</td>
                                        <td>290</td>
                                        <td>-10</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>P004</td>
                                        <td>Grabol</td>
                                        <td>150</td>
                                        <td>150</td>
                                        <td>0</td>
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
                                <a href="Inventario.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-1">Cancelar</a>
                                <div class="col-md-3"></div>
                                <button type="button" class="btn btn-primary yojhan col-md-1 mt-1">Imprimir</button>
                                <div class="col-md-3"></div>
                                 <a href="Inventario.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-1">Aprobar</a>
                            </div>
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
