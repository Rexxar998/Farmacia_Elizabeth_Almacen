<%-- 
    Document   : Proovedores
    Created on : 04-oct-2023, 14:25:16
    Author     : casa
--%>
<%@page import="model.dao.entity.Proveedor"%>
<%@page import="model.dao.impl.ProveedorDAO, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <%@include file="referencias_Almacenero.jsp" %>
        <link rel="stylesheet" href="CSS/proveedores_Almacenero.css">
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
                    <h2>
                        <b>Laboratorios</b>
                    </h2>
                    <hr>

                    <div class="col inventario">
                        <h4><b>Registrar Laboratorio</b></h4>
                        <hr>
                        <form action="ProcesaProveedoresAlmacenero" method="post">
                            <input type="hidden" name="opcion" value="insertar">
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="rucProv"><h4 class="htext">RUC: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="nRucProv" type="text" placeholder="Número de Ruc" name="ruc" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="RazonSocial"><h4 class="htext">Razón Social: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Razón Social" name="razonSocial" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3">
                                    <label for="direcProv"><h4 class="htext">Dirección: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Dirección Laboratorio" name="direccion" required>
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-2">
                                    <label for="telfProv"><h4 class="htext">Teléfono: </h4></label>
                                    <input class="form-control" style="height: 36px;" type="text" placeholder="Número teléfono" name="telefono" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3 mt-2">
                                    <label for="correoProv"><h4 class="htext">Correo: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="correoProv" type="text" placeholder="Correo Laboratorio" name="correo" required="">
                                </div>
                                <div class="col-md-1"></div>
                                <button type="submit" class="btn btn-primary btnProvee col-md-1 mt-5">Agregar</button>
                                <div class="col-md-3"></div>
                            </div>
                        </form>
                        <hr>
                        <h4><b>Buscar Laboratorio</b></h4>
                        <form action="Proovedores_Almacenero.jsp" method="post">
                            <input type="hidden" name="opcion" value="buscar">
                            <div class="row">
                                <div class="col-md-3 mt-2">
                                    <input id="BuscProv" class="form-control icono-placeholder" style="height:36px;" type="text" placeholder=" Nombre Proveedor" name="BuscProv">
                                </div>
                                <button type="submit" class="col-md-1 mt-2 btn btn-primary btnProvee">Buscar</button>
                                <div class="col-md-8"></div>
                            </div>
                        </form><hr>
                        <%                                

                            String opcion = request.getParameter("opcion");
                            ProveedorDAO prov = new ProveedorDAO();
                            List<Proveedor> listaProveedores = new LinkedList<>();
                            if (opcion != null && opcion.equals("buscar")) {
                                String ProveeBuscador = request.getParameter("BuscProv");
                                listaProveedores = prov.buscarProveedor(ProveeBuscador);
                            } else {
                                listaProveedores = prov.list();
                            }
                        %>
                        <h6><b>LISTA DE LABORATORIOS</b></h6>
                        <div class="tablaProvee">
                            <table class="alinearrder table table-bordered table-hover tablaProvee" style="border: black;">
                                <thead class="table-dark" align="center">
                                <td>RUC</td>
                                <td>Razón Social</td>
                                <td>Dirección</td>
                                <td>Teléfono</td>
                                <td>Correo</td>
                                <td>Acciones</td>
                                </thead>
                                <%
                                    if (listaProveedores != null) {
                                        for (int i = 0; i < listaProveedores.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <td><%= listaProveedores.get(i).getRuc()%></td>
                                    <td><%= listaProveedores.get(i).getRazonSocial()%></td>
                                    <td><%= listaProveedores.get(i).getDireccion()%></td>
                                    <td><%= listaProveedores.get(i).getTelefono()%></td>
                                    <td><%= listaProveedores.get(i).getCorreo()%></td>
                                    <td>
                                        <a href="editarProveedores_Almacenero.jsp?idLaboratorio=<%= listaProveedores.get(i).getIdLaboratorio()%>"><button class="botonActualizarProvee"><i class="fa-solid fa-pen-to-square "></i></button></a>
                                        <a href="eliminarProveedores_Almacenero.jsp?idLaboratorio=<%= listaProveedores.get(i).getIdLaboratorio()%>"><button class="botonEliminarProvee"><i class="fa-solid fa-trash-can"></i></button></a>                                                                                            
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
                            <button class="btn btn-primary btnProvee col-md-1 mt-3">
                                <i class="fa-solid fa-file-invoice"></i></button>
                        </div>
                    </div>   
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="piePagina_Almacenero.jsp" %>
</div>

</body>
</html>