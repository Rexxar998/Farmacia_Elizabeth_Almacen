<%-- 
    Document   : GuiaRemision
    Created on : 04-oct-2023, 14:44:59
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/ConsultarDetalleGUI.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <%@include file="verificaLogin.jsp" %>
        <title>Farmacia Elizabeth J&L</title>
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
                    <div class="row">
                        <div class="col-md-12">
                            <h2><b>Guía de Remisión</b></h2>
                        </div>
                    </div>
                    <hr>
                    <div class="col inventario">
                        <div class="row">
                            <h4 class="col-12"><b>Consultar Guía de Remisión</b></h4>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3 mt-2">
                                <input id="BusGuia" style=" height: 36px;" class="icono-placeholder form-control" type="text" placeholder="  Buscar por Razon Social" name="BusGuia">
                            </div>
                            <button class="btn btn-primary MyBtnGuia col-md-1 mt-2">Buscar</button>
                            <div class="col-md-8"></div>
                        </div>
                        <hr class="mt-4">
                        <h6><b>LISTA DE GUÍAS DE REMISIÓN</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>N° Guía</td>
                                <td>Orden</td>
                                <td>Razón Social</td>
                                <td>RUC</td>
                                <td>Fecha Emisión OC</td>
                                <td>Fecha Registro GR</td>
                                <td>Acciones</td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>RF-001</td>
                                    <td>OC001</td>
                                    <td>BAYER S.A.</td>
                                    <td>20100096341</td>
                                    <td>2023/02/08</td>
                                    <td>2023/02/13</td>
                                    <td>
                                        <a href="DetalleGUI.jsp"><button class="botonDetailGuia"><i class="fa-solid fa-info"></i></button></a>
                                        <button class="botonEliminarGuia"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>RF-002</td>
                                    <td>OC010</td>
                                    <td>ABOT LABORATORIOS S.A. </td>
                                    <td>20100096936</td>
                                    <td>2023/03/25</td>
                                    <td>2023/03/28</td>
                                    <td>
                                        <a href="DetalleGUI.jsp"><button class="botonDetailGuia"><i class="fa-solid fa-info"></i></button></a>
                                        <button class="botonEliminarGuia"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>RF-003</td>
                                    <td>OC040</td>
                                    <td>ESTUSALUD PERU</td>
                                    <td>20859687485</td>
                                    <td>2023/08/10</td>
                                    <td>2023/08/12</td>
                                    <td>
                                        <a href="DetalleGUI.jsp"><button class="botonDetailGuia"><i class="fa-solid fa-info"></i></button></a>
                                        <button class="botonEliminarGuia"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>RF-004</td>
                                    <td>OC025</td>
                                    <td>PERUFARMA S.A.</td>
                                    <td>20748596748</td>
                                    <td>2023/04/18</td>
                                    <td>2023/04/23</td>
                                    <td>
                                        <a href="DetalleGUI.jsp"><button class="botonDetailGuia"><i class="fa-solid fa-info"></i></button></a>
                                        <button class="botonEliminarGuia"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>RF-005</td>
                                    <td>OC030</td>
                                    <td>PERUFAV CORP</td>
                                    <td>20519574322</td>
                                    <td>2023/02/10</td>
                                    <td>2023/02/20</td>
                                    <td>
                                        <a href="DetalleGUI.jsp"><button class="botonDetailGuia"><i class="fa-solid fa-info"></i></button></a>
                                        <button class="botonEliminarGuia"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br>
                        <div>
                            <div>
                                <div class="row">
                                    <div class="col-md-1"></div>
                                    <label for="AgregarOrd" class="col-md-3 mt-1"><h4 class="htext">Agregar Guía de Remisión: </h4></label>
                                    <a href="RegistrarGuia.jsp" role="button" class="btn btn-primary MyBtnGuia col-md-1"><i class="fa-solid fa-plus" style="margin-top: 5px;"></i></a>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1"></div>
                                    <label for="AgregarOrd" class="col-md-2 mt-1"><h4 class="htext">Generar Reporte: </h4></label>
                                    <button class="btn btn-primary MyBtnGuia col-md-1"><i class="fa-solid fa-file-invoice"></i></button>
                                    <div class="col-md-2"></div>
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