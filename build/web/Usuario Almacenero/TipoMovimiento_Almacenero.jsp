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
        <%@include file="referencias_Almacenero.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/movimientoAlmacenero.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
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
                    <h2><b>Tipo de Movimiento</b></h2>
                    <hr>

                    <div class="col inventario">
                        <h4 class="col-11">
                            <b>Registrar Tipo de Movimiento</b>
                        </h4>
                        <hr>
                        <form action="ProcesaTipoMovimientoAlmacenero" method="post">
                            <input type="hidden" name="opcion" value="insertar">
                            <div class="row">
                                <div class="col-md-3">
                                    <label for="nameMoviT"><h4 class="htext">Nombre Tipo de Movimiento: </h4></label>
                                    <input class="form-control" style="height: 36px;" type="text" placeholder="Nombre Tipo de Movimiento" name="nameMoviT" required>
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <label class="col-md-1" for="DescriMovi"><h4 class="htext">Descripción: </h4></label>
                                    <input class="form-control" style="height: 36px;" type="text" placeholder="Descripción" name="DescriMovi" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3 mt-2">
                                    <label class="htext"><h4>Tipo de Movimiento:</h4></label>
                                    <select class="form-select" aria-label="Default select example" name="tipo_movimiento" required>
                                        <option value="" selected disabled>Selecciona Tipo</option>
                                        <option value="ingreso">Ingreso</option>
                                        <option value="salida">Salida</option>
                                    </select>
                                </div>
                                <div class="col-md-1"></div>
                                <button type="submit" class="btn btn-primary btnTipoMov col-md-1 mt-5">Registrar</button>
                                <div class="col-md-2"></div>
                            </div>
                        </form>                        
                        <hr>
                        <div>
                            <h4><b>Buscar Tipo de Movimiento</b></h4>
                        </div>
                        <form action="TipoMovimiento_Almacenero.jsp" method="post">
                            <input type="hidden" name="opcion" value="buscar">
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <input id="BuscMov" class="form-control icono-placeholder" style="height:36px;" type="text" placeholder=" Nombre Movimiento" name="BusMov">
                                </div>
                                <button type="submit" class="col-md-1 mt-2 btn btn-primary btnTipoMov">Buscar</button>
                                <div class="col-md-8"></div>
                            </div>
                        </form><hr>
                        <%                            String opcion = request.getParameter("opcion");
                            TipoMovimientoDAO tm = new TipoMovimientoDAO();
                            List<TipoMovimiento> listaMovimientos = new LinkedList<>();
                            if (opcion != null && opcion.equals("buscar")) {
                                String MoviBuscador = request.getParameter("BusMov");
                                listaMovimientos = tm.buscarMovimiento(MoviBuscador);
                            } else {
                                listaMovimientos = tm.list();
                            }
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
                                <%                                    if (listaMovimientos != null) {
                                        for (int i = 0; i < listaMovimientos.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <td><h6>TM00<%= listaMovimientos.get(i).getCodigo()%></h6></td>
                                    <td><%= listaMovimientos.get(i).getNombre()%></td>
                                    <td><%= listaMovimientos.get(i).getDescripcion()%></td>
                                    <td>Ingreso</td>
                                    <td><a href="editarTipoMovimiento_Almacenero.jsp?codigo=<%= listaMovimientos.get(i).getCodigo()%>"><button class="botonActualizarMov"><i class="fa-solid fa-pen-to-square "></i></button></a>
                                        <a href="eliminarTipoMovimiento_Almacenero.jsp?codigo=<%= listaMovimientos.get(i).getCodigo()%>"><button class="botonEliminarMov"><i class="fa-solid fa-trash-can"></i></button></a>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-1 mt-3">
                                <label for="impriProv" class="h4 htext">Imprimir:</label>
                            </div>
                            <button class="btn btn-primary btnTipoMov col-md-1 mt-3">
                                <i class="fa-solid fa-file-invoice"></i></button>
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
