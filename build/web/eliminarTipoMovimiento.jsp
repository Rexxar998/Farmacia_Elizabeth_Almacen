<%-- 
    Document   : TipoMovimiento
    Created on : 04-oct-2023, 14:51:57
    Author     : casa
--%>
<%@page import="model.dao.entity.TipoMovimiento"%>
<%@page import="model.dao.impl.TipoMovimientoDAO, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/Movimiento_Tipo.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <title>Farmacia Elizabeth J&L</title>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
        <%@include file="verificaLogin.jsp" %>
    </head>

    <%        String cod = request.getParameter("codigo");
        TipoMovimientoDAO movDAO = new TipoMovimientoDAO();
        TipoMovimiento tipo = movDAO.read(cod);
    %>


    <body>

        <%@include file="encabezadoAdmin.jsp" %>

        <br>
        <br>

        <div class="container-fluid">
            <div class="row">
                <%@include file="Menu.jsp" %>

                <div class="col-xs-12 col-md-9">
                    <h2><b>Tipo de Movimiento</b></h2>
                    <hr>

                    <div class="col inventario">
                        <h4 class="col-11"><b>Eliminar Tipo de Movimiento</b></h4>
                        <hr>
                        <form action="ProcesaTipoMovimiento" method="post">
                            <input type="hidden" name="opcion" value="eliminar">
                           <div class="row">
                                <div class="col-md-2">
                                    <label for="nombreproduc"><h4 class="htext">Código: </h4></label>
                                    <input style="height: 36px;" class="form-control col-md-1" type="text" name="muestra" value="TM00<%= tipo.getCodigo()%>" readonly>
                                    <input style="height: 36px;" type="hidden" name="codigo" value="<%= tipo.getCodigo()%>" readonly>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="nameMoviT"><h4 class="htext">Nombre Tipo de Movimiento: </h4></label>
                                    <input style="height: 36px;" type="text" class="form-control" name="nameMoviT" value="<%= tipo.getNombre()%>" readonly>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <label class="htext"><h4>Tipo de Movimiento:</h4></label>
                                    <select class="form-select" aria-label="Default select example" name="tipo_movimiento" disabled>
                                        <option value="<%= tipo.getTipoMovimiento()%>" selected><%= tipo.getTipoMovimiento()%></option>
                                        <option value="ingreso">Ingreso</option>
                                        <option value="salida">Salida</option>
                                    </select>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <label for="DescriMovi"><h4 class="htext">Descripción: </h4></label>
                                    <input style="height: 36px;" class="form-control" type="text" name="DescriMovi" value="<%= tipo.getDescripcion()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <button type="button" class="btn btn-primary btnTipoMov col-md-1 mt-5" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Aceptar</button> <!--Registrar Tipo de Movimiento-->
                                <!-- Modal -->
                                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">Confirmar</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                ¿Desea confirmar esta acción?
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary btnCancelConfirElim" data-bs-dismiss="modal">Cerrar</button>
                                                <button type="submit" class="btn btn-primary btnTipoMov">Aceptar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3"></div>
                            </div>
                        </form> 
                        <div>
                        <%                            

                            TipoMovimientoDAO tm = new TipoMovimientoDAO();
                            List<TipoMovimiento> listaMovimientos = new LinkedList<>();
                            listaMovimientos = tm.list();
                            
                        %>
                        <hr>
                        <h6><b>LISTA DE MOVIMIENTOS</b></h6>
                        <div class="barra-lateral tablaLab">
                            <table class="table table-bordered table-hover" style="border: black;">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>Nombre</td>
                                <td>Descripción</td>
                                <td>Tipo de Movimiento</td>
                                <td>Acciones</td>
                                </thead>
                                <%
                                    if (listaMovimientos != null) {
                                        for (int i = 0; i < listaMovimientos.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <td><h6>TM00<%= listaMovimientos.get(i).getCodigo()%></h6></td>
                                    <td><%= listaMovimientos.get(i).getNombre()%></td>
                                    <td><%= listaMovimientos.get(i).getDescripcion()%></td>
                                    <td><%= listaMovimientos.get(i).getTipoMovimiento()%></td>
                                    <td><a href="editarTipoMovimiento.jsp?codigo=<%= listaMovimientos.get(i).getCodigo()%>"><button class="botonActualizarMov"><i class="fa-solid fa-pen-to-square "></i></button></a>
                                        <a href="eliminarTipoMovimiento.jsp?codigo=<%= listaMovimientos.get(i).getCodigo()%>"><button class="botonEliminarMov"><i class="fa-solid fa-trash-can"></i></button></a>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </table>
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