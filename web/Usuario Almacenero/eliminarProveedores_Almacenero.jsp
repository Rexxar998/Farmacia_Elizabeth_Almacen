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
    <%        String idLaboratorio = request.getParameter("idLaboratorio");
        ProveedorDAO provDAO = new ProveedorDAO();
        Proveedor pro = provDAO.read(idLaboratorio);
    %>
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
                        <h4><b>Eliminar Laboratorio</b></h4>
                        <hr>
                        <form action="ProcesaProveedoresAlmacenero" method="post">
                            <input type="hidden" name="opcion" value="eliminar">
                            <input type="hidden" name="idLaboratorio" value="<%= pro.getIdLaboratorio()%>">
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="rucProv"><h4 class="htext">RUC: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="nRucProv" type="text" placeholder="Número de Ruc" name="ruc" value="<%= pro.getRuc()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="RazonSocial"><h4 class="htext">Razón Social: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Razón Social" name="razonSocial" value="<%= pro.getRazonSocial()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3">
                                    <label for="direcProv"><h4 class="htext">Dirección: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Dirección Laboratorio" name="direccion" value="<%= pro.getDireccion()%>" readonly>
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-2">
                                    <label for="telfProv"><h4 class="htext">Teléfono: </h4></label>
                                    <input class="form-control" style="height: 36px;" type="text" placeholder="Número teléfono" name="telefono" value="<%= pro.getTelefono()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3 mt-2">
                                    <label for="correoProv"><h4 class="htext">Correo: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="correoProv" type="text" placeholder="Correo Laboratorio" name="correo" value="<%= pro.getCorreo()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <button type="button" class="btn btn-primary btnProvee col-md-1 mt-5" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Aceptar</button>
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
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                <button type="submit" class="btn btn-primary">Aceptar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-3"></div>
                            </div>
                        </form>
                        <hr>
                        <%
                            ProveedorDAO prov = new ProveedorDAO();
                            List<Proveedor> listaProveedores = new LinkedList<>();
                            listaProveedores = prov.list();
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