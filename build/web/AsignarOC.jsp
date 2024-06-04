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
        <link rel="stylesheet" href="CSS/agregarProducto.css">
        <script src="JS/AsignarOC.js"></script>
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
                            <a href="RegistrarGuia.jsp">
                                <i style="margin-left: -14px; color: #1452CF;" class="fa-solid fa-rotate-left" ></i>
                            </a>
                            <h4 style="margin-left: 15px; margin-top: -27px;">Asignar Orden de Compra</h4>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 style="color: #2B9CE5;"><b>Nombre Laboratorio</b></h6>
                            <div class="col-md-3 mt-2">
                                <input id="AgrPro" style=" height: 36px;" class="icono-placeholder form-control" type="text" placeholder="  Nombre Laboratorio" name="AsigOC">
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
                                    <td>Orden Compra</td>
                                    <td>Laboratorio</td>
                                    <td>Fecha Emisión</td>
                                    <td></td>
                                    </thead>
                                    <tr class="trcolr" align="center">
                                        <td>OC001</td>
                                        <td>PERUFARMA S.A.</td>
                                        <td>2023/02/13</td>
                                        <td><a href="RegistrarGuia.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>OC002</td>
                                        <td>PERUFARMA S.A.</td>
                                        <td>2023/06/15</td>
                                        <td><a href="RegistrarGuia.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>OC003</td>
                                        <td>PERUFARMA S.A.</td>
                                        <td>2023/03/23</td>
                                        <td><a href="RegistrarGuia.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>OC004</td>
                                        <td>PERUFARMA S.A.</td>
                                        <td>2023/04/12</td>
                                        <td><a href="RegistrarGuia.jsp"><button class="btn btn-primary aggProduct">Seleccionar</button></a></td>
                                    </tr>
                                </table>
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

<div class="container my-4" style="width: 100%;">
    <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <table id="datatable_users" class="table table-striped">
                <thead>
                    <tr>
                        <th class="centered">#</th>
                        <th class="centered">Name</th>
                        <th class="centered">Email</th>
                        <th class="centered">City</th>
                        <th class="centered">Company</th>
                        <th class="centered">Status</th>
                        <th class="centered">Options</th>
                    </tr>
                </thead>
                <tbody id="tableBody_users"></tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- DataTable -->
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
<!-- Custom JS -->