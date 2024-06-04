<%-- 
    Document   : Consultar Orden de Compra
    Created on : 04-oct-2023, 14:36:06
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/ConsultarOrdenCompra.css">
        <script src="JS/Consultar Orden.js"></script>
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
                            <h2><b>Consultar Orden de Compra</b></h2>
                        </div>
                    </div>
                    <hr>
                    <div class="col inventario">
                        <h4><b>Buscar Orden de Compra</b></h4>
                        <hr>
                        <div class="row">
                            <div class="col-md-2">
                                <label for="nombreLab"><h4 class="htext">Laboratorio: </h4></label>
                                <input class="form-control" id="buscLab" style="height: 36px;" type="text" placeholder=" Nombre Laboratorio" name="BuscarLab">
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <label for="fechaInic"><h4 class="htext">Fecha Inicial: </h4></label>
                                <input class="form-control" id="BusIfech" style="height: 36px;" type="text" placeholder="Fecha Inicial" onfocus="(this.type = 'date')" name="BusIfech">
                            </div>
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <label for="FechaFin"><h4 class="htext">Fecha Final: </h4></label>
                                <input class="form-control" id="BusFfech" style="height: 36px;" type="text" placeholder="Fecha Final" onfocus="(this.type = 'date')" name="BusFfech">
                            </div>
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-2 mt-3">
                                <div class="mt-3">
                                    <a input="submit" role="button" class="btn btn-primary MyBtn col-md-7" style="height: 38px;">Buscar</a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h6><b>LISTA DE ÓRDENES DE COMPRA</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;" class="alinearizq news2let" width="98.5%" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>N° OC</td>
                                <td>Fecha Emisión</td>
                                <td>Laboratorio</td>
                                <td>Total</td>
                                <td>Estado</td>
                                <td>Acciones</td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>OC001</td>
                                    <td>10/09/2023</td>
                                    <td>Bayern S.A.</td>
                                    <td>S/.250.75</td>
                                    <td>Pendiente</td>
                                    <td>
                                        <button class="botonDetailOC" onclick="abrirPopup()"><i class="fa-solid fa-info"></i></button>
                                        <div id="formularioEmergente" class="formulario-emergente">
                                            <div class="contenido-formulario">
                                                <div class="row">
                                                    <h4 class="col-md-2"><b>Detalles</b></h4>
                                                    <div class="col-md-3"></div>
                                                    <div class="col-md-2"></div>
                                                    <div class="col-md-3"></div>
                                                    <button class="col-md-2 MyBtn" onclick="cerrarPopup()">Regresar</button>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-2 mt-1">
                                                        <h4 class="htext">Número OC: </h4>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="numbOrd" value="OC001" readonly>
                                                    </div>
                                                    <div class="col-md-2 mt-1">
                                                        <h4 class="htext">F. Emisión:</h4>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="fechaEOrd" value="  10/09/2023" readonly>
                                                    </div>
                                                    <div class="col-md-2 mt-1">
                                                        <h4 style="margin-left: 30px;" class="htext">Total(S/.): </h4>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="totalOrD" value=" S/.250.75" readonly>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-2 mt-1">
                                                        <h4 class="htext">Laboratorio: </h4>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input class="form-control" style="background-color: #E8EBE5; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="LabOrd" value=" Bayern S.A." readonly>
                                                    </div>
                                                    <div class="col-md-1"></div>
                                                    <div class="col-md-2 mt-1">
                                                        <h4 class="htext">Estado: </h4>
                                                    </div>
                                                    <div class="col-md-2"><input class="form-control" style="background-color: #d9e714; resize: none; box-shadow: none; border: 1px solid black;" type="text" name="EstadoOrD" value=" Pendiente" readonly></div>
                                                    <div class="col-md-1"></div>
                                                </div>
                                                <hr>
                                                <h5 align="left">Productos Agregados</h5>
                                                <div class="tablaLab barra-lateral">
                                                    <table class="table table-bordered table-hover" style="border: black;">
                                                        <thead class="table-dark">
                                                            <tr>
                                                                <th>COD. PROD</th>
                                                                <th>NOMBRE</th>
                                                                <th>CANTIDAD</th>
                                                                <th>PRECIO</th>
                                                                <th>SUBTOTAL</th>
                                                                <th>%IGV</th>
                                                                <th>TOTAL</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>P001</td>
                                                                <td>Clonazepan</td>
                                                                <td>45</td>
                                                                <td>S/.2.50</td>
                                                                <td>S/.112.50</td>
                                                                <td>18</td>
                                                                <td>S/.132.75</td>
                                                            </tr>
                                                            <tr>
                                                                <td>P002</td>
                                                                <td>Gatactuosa</td>
                                                                <td>10</td>
                                                                <td>S/.10.00</td>
                                                                <td>S/.100.00</td>
                                                                <td>18</td>
                                                                <td>S/.118.00</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="botonActualizarOC"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminarOC"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>OC002</td>
                                    <td>12/09/2023</td>
                                    <td>B. Braun Medical Perú</td>
                                    <td>S/.430.00</td>
                                    <td>Atendida</td>
                                    <td>
                                        <button class="botonDetailOC" onclick="abrirPopup()"><i class="fa-solid fa-info"></i></button>
                                        <div id="formularioEmergente" class="formulario-emergente"></div>
                                        <button class="botonActualizarOC"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminarOC"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>OC003</td>
                                    <td>15/09/2023</td>
                                    <td>Bayern S.A.</td>
                                    <td>S/.1230.00</td>
                                    <td>Registrada</td>
                                    <td>
                                        <button class="botonDetailOC" onclick="abrirPopup()"><i class="fa-solid fa-info"></i></button>
                                        <div id="formularioEmergente" class="formulario-emergente"></div>
                                        <button class="botonActualizarOC"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminarOC"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-1"></div>
                            <label for="AgregarOrd" class="col-md-3 mt-1"><h4 class="htext">Agregar Orden de Compra: </h4></label>
                            <a href="GenerarOrdenCompra.jsp" role="button" class="btn btn-primary MyBtn col-md-1"><i class="fa-solid fa-plus" style="margin-top: 5px;"></i></a>
                            <div class="col-md-1"></div>
                            <div class="col-md-1"></div>
                            <label for="AgregarOrd" class="col-md-2 mt-1"><h4 class="htext">Generar Reporte: </h4></label>
                            <button class="btn btn-primary MyBtn col-md-1"><i class="fa-solid fa-file-invoice"></i></button>
                            <div class="col-md-2">
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
