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
        <link rel="stylesheet" href="CSS/DetalleGUI.css">
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
                            <h4 class="col-md-6"><b>Detalle Guía de Remisión</b></h4>
                            <div class="col-md-2"></div>
                            <div class="col-md-3"></div>
                            <a href="GuiaRemision.jsp" class="col-md-1 MyBtnGuia btn btn-primary" rule="button">Regresar</a>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <h4 class="htext">Fecha de Emisión:</h4>
                            </div>
                            <div class="col-md-2">
                                <h4 class="htext" style="color: #2B9CE5;">13/02/2023</h4>
                            </div>
                            <div class="col-md-8"></div>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 class="col-md-4" style="color: #2B9CE5;"><b>Datos de la guía de Remisión</b></h6>
                            <div class="col-md-8"></div>
                        </div>
                        <hr>
                        <div style="border-radius: 5px;">
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <h4 class="htext">Número Serie: </h4>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="numSerie" value="001" readonly>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2 mt-1">
                                    <h4 class="htext">Número Correlativo: </h4>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="numCorrelativo" value="000456" readonly>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <h4 class="htext">Laboratorio: </h4>
                                </div>
                                <div class="col-md-3">
                                    <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="LabOrd" value="PERUFARMA S.A." readonly>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-1 mt-1">
                                    <h4 class="htext">RUC: </h4>
                                </div>
                                <div class="col-md-2"><input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="numRuc" value="20748596748" readonly></div>
                            </div>
                            <br>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 class="col-md-4" style="color: #2B9CE5;"><b>Datos de la orden de compra</b></h6>
                            <div class="col-md-8"></div>
                        </div>
                        <hr>
                        <div>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <h4 class="htext">Número OC: </h4>
                                </div>
                                <div class="col-md-2">
                                    <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="LabOrd" value="OC025" readonly>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-2 mt-1">
                                    <h4 class="htext">Fecha Emisión: </h4>
                                </div>
                                <div class="col-md-2"><input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="fechOrden" value="12/02/2023" readonly></div>
                            </div>
                        </div>
                        <hr>
                        <h5 align="left"><b>Productos Agregados</b></h5>
                        <div class="tablaLab barra-lateral">
                            <table class="table table-bordered" style="border: black;">
                                <thead class="table-dark" align="center">
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>UNIDAD MEDIDA</th>
                                        <th>CANTIDAD</th>
                                        <th>CANTIDAD RECIBIDA</th>
                                        <th>CANTIDAD PENDIENTE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="trcolr" align="center">
                                        <td>Clonazepan</td>
                                        <td>mg</td>
                                        <td>50</td>
                                        <td>48</td>
                                        <td>2</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>Gatactuosa</td>
                                        <td>mg</td>
                                        <td>10</td>
                                        <td>9</td>
                                        <td>1</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="piePagina.jsp" %>
        </div>
        <!--END PIE DE PAGINA-->
    </body>
</html>
