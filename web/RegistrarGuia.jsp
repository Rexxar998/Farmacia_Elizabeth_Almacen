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
        <link rel="stylesheet" href="CSS/RegistrarGUIA.css">
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
                                <h4 class="col-md-3"><b>Agregar Guía de Remisión</b></h4>
                                <div class="col-md-9"></div>
                            </div>
                            <hr>
                            <h6><b>Orden de Compra</b></h6>
                            <div class="row">
                                <div class="col-md-2 mt-1">
                                    <input class="form-control" type="text" placeholder="Número OC" name="numOC" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-2 mt-1">
                                    <a href="AsignarOC.jsp" role="button" class="btn btn-primary yojhan">Buscar</a>
                                </div>
                                <div class="col-md-8"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2">
                                    <h6><b>Número de Serie</b></h6>
                                    <input class="form-control" type="text" placeholder="Número Serie" name="numSerie">
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <h6><b>Número Correlativo</b></h6>
                                    <input class="form-control" type="text" placeholder="Número Correlativo" name="numCorre">
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3">
                                    <h6><b>Laboratorio</b></h6>
                                    <input class="form-control" type="text" placeholder="Nombre Laboratorio" name="nomLab" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-3"></div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-2">
                                    <h6><b>RUC</b></h6>
                                    <input class="form-control" type="text" placeholder="Número Inventario" name="RucProvee" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <h6><b>Fecha de Emisión OC</b></h6>
                                    <input class="form-control" type="text" placeholder="Número Correlativo" name="fechEM" style="background-color: #EAECE9;" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3">
                                    <h6><b>Fecha de Emisión GR</b></h6>
                                    <input class="form-control" type="date" placeholder="Nombre Laboratorio" name="fechGR">
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <hr>
                            <h4><b>Lista de Productos</b></h4>
                            <div class="barra-lateral">
                                <table id="tablaRGuia" class="table table-bordered table-hover" style="border: black; background-color: #252525; color:white;" border="1px;">
                                    <thead align="center">
                                    <td>Producto</td>
                                    <td>Tipo Producto</td>
                                    <td>Cantidad</td>
                                    <td>Cantidad Recibida</td>
                                    <td>Cantidad Pendiente</td>
                                    </thead>
                                    <tr class="trcolr" align="center">
                                        <td>Paracetamol</td>
                                        <td>Marca</td>
                                        <td>50</td>
                                        <td>
                                            <input type="text" value="48">
                                        </td>
                                        <td>2</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>Amoxicilina</td>
                                        <td>Marca</td>
                                        <td>10</td>
                                        <td>
                                            <input type="text" value="9">
                                        </td>
                                        <td>1</td>
                                    </tr>
                                    <tr class="trcolr" align="center">
                                        <td>Acetaminofén</td>
                                        <td>Génerico</td>
                                        <td>10</td>
                                        <td>
                                            <input type="text" value="25">
                                        </td>
                                        <td>1</td>
                                    </tr>
                                </table>
                            </div><hr>
                            <div class="row mt-3">
                                <div class="col-md-4"></div>
                                <a href="GuiaRemision.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-2">Cancelar</a>
                                <div class="col-md-2"></div>
                                <a href="GuiaRemision.jsp" role="button" class="btn btn-primary yojhan col-md-1 mt-2">Agregar</a>
                                <div class="col-md-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="piePagina.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
    <!--<Script>
        $(document).ready(function () {
            $('#tablaRGuia').DataTable({
                language: {
                    processing: "Tratamiento en curso...",
                    search: "Buscar&nbsp;:",
                    lengthMenu: "Agrupar productos _MENU_"+"000",
                    info: "Mostrando del producto _START_ al _END_ de un total de _TOTAL_ productos",
                    infoEmpty: "No existen datos.",
                    infoFiltered: "(filtrado de _MAX_ elementos en total)",
                    infoPostFix: "",
                    loadingRecords: "Cargando...",
                    zeroRecords: "No se encontraron datos con tu busqueda",
                    emptyTable: "No hay datos disponibles en la tabla.",
                    paginate: {
                        first: "Primero",
                        previous: "Anterior",
                        next: "Siguiente",
                        last: "Ultimo"
                    },
                    aria: {
                        sortAscending: ": active para ordenar la columna en orden ascendente",
                        sortDescending: ": active para ordenar la columna en orden descendente"
                    }
                },
                scrollY: 200,
                lengthMenu: [[1, 25, -1], [1, 25, "All"]]
            });
        });
    </script>-->
</body>

</html>
