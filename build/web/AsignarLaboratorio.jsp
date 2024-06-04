<%-- 
    Document   : AsignarMovimiento
    Created on : 04-oct-2023, 16:58:00
    Author     : casa
--%>
<%@page import="model.dao.entity.Proveedor"%>
<%@page import="model.dao.impl.ProveedorDAO, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/Asignar_Movi.css">
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
                            <a href="GenerarOrdenCompra.jsp">
                                <i style="margin-left: -14px; color: #1452CF;" class="fa-solid fa-rotate-left" ></i>
                            </a>
                            <h4 style="margin-left: 15px; margin-top: -27px;" class="">Asignar Laboratorio</h4>
                        </div>
                        <hr>
                        <form action="AsignarLaboratorio.jsp" method="post">
                            <input type="hidden" name="opcion" value="buscar">
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <input id="AsignarLab" name="BuscProv" class="form-control icono-placeholder" type="text" placeholder=" Nombre Laboratorio" name="AsignarLab">
                                </div>                         
                                <button type="submit" class="col-md-1 mt-2 btn btn-primary btnAsigMovi">Buscar</button>
                            </div>
                        </form>


                        <%                            String opcion = request.getParameter("opcion");
                            ProveedorDAO prov = new ProveedorDAO();

                            List<Proveedor> listaProveedores = new LinkedList<>();
                            if (opcion != null && opcion.equals("buscar")) {
                                String ProveeBuscador = request.getParameter("BuscProv");
                                listaProveedores = prov.buscarProveedor(ProveeBuscador);
                            } else {
                                listaProveedores = prov.list();
                            }
                        %>
                        <hr>
                        <h6><b>LISTA DE MOVIMIENTOS</b></h6>
                        <div class="tablaLab">
                            <table class="table table-bordered table-hover" style="border: black;">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>RUC</td>
                                <td>Razón Social</td>
                                <td></td>
                                </thead>
                                <%
                                    if (listaProveedores != null) {
                                        for (int i = 0; i < listaProveedores.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <td>LB00<%= listaProveedores.get(i).getIdLaboratorio()%></td>
                                    <td><%= listaProveedores.get(i).getRuc()%></td>
                                    <td><%= listaProveedores.get(i).getRazonSocial()%></td>
                                    <td><a href="GenerarOrdenCompra.jsp?lab=<%= listaProveedores.get(i).getRazonSocial()%>"><button class="btn btn-primary btnAsigMovi">Seleccionar</button></a></td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </table>
                        </div>
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
