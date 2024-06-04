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
                        <h4 class="col-11"><b>Editar Tipo de Movimiento</b></h4>
                        <hr>
                        <form action="ProcesaTipoMovimiento" method="post">
                            <input type="hidden" name="opcion" value="editar">
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
                                    <input style="height: 36px;" type="text" class="form-control" name="nameMoviT" value="<%= tipo.getNombre()%>" required>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <label class="htext"><h4>Tipo de Movimiento:</h4></label>
                                    <select class="form-select" aria-label="Default select example" name="tipo_movimiento" required>
                                        <option value="<%= tipo.getTipoMovimiento()%>" selected readonly><%= tipo.getTipoMovimiento()%></option>
                                        <option value="ingreso">Ingreso</option>
                                        <option value="salida">Salida</option>
                                    </select>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <label for="DescriMovi"><h4 class="htext">Descripción: </h4></label>
                                    <input style="height: 36px;" class="form-control" type="text" name="DescriMovi" value="<%= tipo.getDescripcion()%>" required>
                                </div>
                                <div class="col-md-1"></div>
                                <button type="submit" class="btn btn-primary btnTipoMov col-md-1 mt-5">Aceptar</button> <!--Registrar Tipo de Movimiento-->  
                                <div class="col-md-3"></div>
                            </div>
                        </form>                        
                        <div>
                            <%

                                TipoMovimientoDAO tm = new TipoMovimientoDAO();
                                List<TipoMovimiento> listaMovimientos = new LinkedList<>();
                                listaMovimientos = tm.list();

                            %>
                            <hr>                     
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="piePagina.jsp" %>
        </div>
        <!--END PIE DE PAGINA-->
    </body>

</html>