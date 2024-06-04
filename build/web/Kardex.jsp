<%-- 
    Document   : Kardex
    Created on : 04-oct-2023, 14:56:45
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/Consultar_KARDEX.css">
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
                    <h2><b>Kardex</b></h2>
                    <hr>
                    <div class="col inventario">
                        <h4><b>Buscar Movimiento</b></h4>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <label for="nombreLab"><h4 class="htext">Nombre Movimiento: </h4></label>
                                <input class="form-control" id="buscLab" style="height: 36px;" type="text" placeholder=" Nombre Movimiento" name="nombreMovimiento">
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
                                    <a input="submit" role="button" class="btn btn-primary MyBtnKardex col-md-7" style="height: 38px;">Buscar</a>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h6><b>GENERAR REPORTE</b></h6>
                        <div class="row">
                            <h6 style="color: #2B9CE5;">Filtrar por Tipo Movimiento</h6>
                            <div class="col-md-3 mt-2">
                                <select class="form-select" aria-label="Default select example" name="tipo">
                                    <option value=""></option>
                                    <option value="ingreso">Ingreso a almacen</option>
                                    <option value="salida">Salida reposicion de inventario</option>
                                    <option value="salida">Salida por caducidad</option>
                                </select>
                            </div>
                            <button class="btn btn-primary MyBtnKardex col-md-1 mt-2"><i class="fa-solid fa-file-invoice"></i></button>
                            <div class="col-md-8"></div>
                        </div>
                        <hr>
                        <h6><b>LISTA DE MOVIMIENTOS</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;" class="alinearizq news2let" width="98.5%" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>Tipo de Movimiento</td>
                                <td>Fecha</td>
                                <td>Total</td>
                                <td>Acciones</td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>M001</td>
                                    <td>Ingreso por Ajuste de Inventario</td>
                                    <td>14/08/2023</td>

                                    <td>60</td>
                                    <td><button class="botonDetailsKard" data-bs-toggle="modal" data-bs-target="#mi-modal"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button></td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>M002</td>
                                    <td>Salida reposicion de inventario</td>
                                    <td>16/08/2023</td>
                                    <td>40</td>
                                    <td><button class="botonDetailsKard" data-bs-toggle="modal" data-bs-target="#mi-modal2"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button></td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>M003</td>
                                    <td>Salida por caducidad</td>
                                    <td>18/08/2023</td>
                                    <td>50</td>
                                    <td><button class="botonDetailsKard" data-bs-toggle="modal" data-bs-target="#mi-modal3"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button></td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal fade py-12" id="mi-modal" data-bs-backdrop="static">
                            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title"><b>Detalle de Movimiento</b></h5>
                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                    </div> 
                                    <div class="modal-body">
                                        <form class="form-modal">
                                            <div class="mb-1">
                                                <label class="form-label">Fecha Emisión:</label>
                                                <input type="date" class="form-control" style="width:150px;" value="2023-08-14" disabled id="fechaModal">
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Codigo:</label>
                                                <input type="text" class="form-control" style="width:150px;" id="codigModal" value="M001" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Tipo Movimiento:</label>
                                                <input type="text" class="form-control" style="width:350px;" id="TipoMovModal" value="Ingreso por Ajuste de Inventario" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Observacion:</label>
                                                <textarea class="form-control" id="ObservModal" rows="2" style="resize: none; box-shadow: none;" disabled>Sin observaciones</textarea>
                                            </div>
                                        </form> <br/>
                                        <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                            <thead class="table-dark" align="center">
                                                <tr class="trcolr" align="center" style="color: white;">
                                                    <th>Codigo</th>
                                                    <th>Nombre Producto</th>
                                                    <th>Cantidad</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="trcolr" align="center">
                                                    <td>P018</td> <td>CLONAZEPAM</td> <td>28</td>

                                                </tr>
                                                <tr class="trcolr" align="center">
                                                    <td>P001</td> <td>DICLOFENATO</td> <td>32</td>
                                                </tr>
                                            </tbody>
                                        </table> 
                                    </div> 
                                    <div class="modal-footer">
                                        <button class="btn btn-primary" data-bs-dismiss="modal">Regresar</button>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="modal fade py-12" id="mi-modal2" data-bs-backdrop="static">
                            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #2B9CE5;color: white;">
                                        <h5 class="modal-title">Detalle de Movimiento</h5>
                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                    </div> 
                                    <div class="modal-body">
                                        <form class="form-modal">
                                            <div class="mb-1">
                                                <label class="form-label">Fecha Emisión:</label>
                                                <input type="date" class="form-control" style="width:150px;" value="2023-08-16" disabled id="fechaModal">
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Codigo:</label>
                                                <input type="text" class="form-control" style="width:150px;" id="codigModal" value="M002" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Tipo Movimiento:</label>
                                                <input type="text" class="form-control" style="width:350px;" id="TipoMovModal" value="Salida reposicion de inventario" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Observacion:</label>
                                                <textarea class="form-control" id="ObservModal" rows="2" style="resize: none; box-shadow: none;" disabled>Sin observaciones</textarea>
                                            </div>
                                        </form> <br/>
                                        <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                            <thead class="table-dark" align="center">
                                                <tr class="trcolr" align="center" style="color: white;">
                                                    <th>Codigo</th>
                                                    <th>Nombre Producto</th>
                                                    <th>Cantidad</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="trcolr" align="center">
                                                    <td>P005</td> <td>CLONAZEPAM</td> <td>10</td>

                                                </tr>
                                                <tr class="trcolr" align="center">
                                                    <td>P659</td> <td>DICLOFENATO</td> <td>30</td>
                                                </tr>
                                            </tbody>
                                        </table> 
                                    </div> 
                                    <div class="modal-footer">
                                        <button class="btn btn-primary" data-bs-dismiss="modal">Regresar</button>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="modal fade py-12" id="mi-modal3" data-bs-backdrop="static">
                            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header" style="background-color: #2B9CE5;color: white;">
                                        <h5 class="modal-title">Detalle de Movimiento</h5>
                                        <button class="btn-close" data-bs-dismiss="modal"></button>
                                    </div> 
                                    <div class="modal-body">
                                        <form class="form-modal">
                                            <div class="mb-1">
                                                <label class="form-label">Fecha Emisión:</label>
                                                <input type="date" class="form-control" style="width:150px;" value="2023-08-18" disabled id="fechaModal">
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Codigo:</label>
                                                <input type="text" class="form-control" style="width:150px;" id="codigModal" value="M003" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Tipo Movimiento:</label>
                                                <input type="text" class="form-control" style="width:350px;" id="TipoMovModal" value="Salida por caducidad" disabled>
                                            </div>
                                            <div class="mb-1">
                                                <label class="form-label">Observacion:</label>
                                                <textarea class="form-control" id="ObservModal" rows="2" style="resize: none; box-shadow: none;" disabled>Sin observaciones</textarea>
                                            </div>
                                        </form> <br/>
                                        <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                            <thead class="table-dark" align="center">
                                                <tr class="trcolr" align="center" style="color: white;">
                                                    <th>Codigo</th>
                                                    <th>Nombre Producto</th>
                                                    <th>Cantidad</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="trcolr" align="center">
                                                    <td>P028</td> <td>CLONAZEPAM</td> <td>6</td>

                                                </tr>
                                                <tr class="trcolr" align="center">
                                                    <td>P159</td> <td>DICLOFENATO</td> <td>34</td>

                                                </tr>
                                            </tbody>
                                        </table> 
                                    </div> 
                                    <div class="modal-footer">
                                        <button class="btn btn-primary" data-bs-dismiss="modal">Regresar</button>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <hr>
                        <tr>
                        <div class="row">
                            <label for="AgregarOrd" class="col-md-3 mt-1"><h4 class="htext">Agregar Movimiento Kardex: </h4></label>
                            <a href="AgregarMovimiento.jsp" role="button" class="btn btn-primary MyBtnKardex col-md-1"><i class="fa-solid fa-plus" style="margin-top: 5px;"></i></a>
                            <div class="col-md-9"></div>
                        </div>
                    </div>
                    </tr>
                </div>
            </div>
        </div>
    </div>

    <%@include file="piePagina.jsp" %>
</div>
<!--END PIE DE PAGINA-->
</body>

</html>
