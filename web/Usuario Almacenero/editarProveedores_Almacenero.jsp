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
                        <h4><b>Editar Laboratorio</b></h4>
                        <hr>
                        <form action="ProcesaProveedoresAlmacenero" method="post">
                            <input type="hidden" name="opcion" value="editar">
                            <input type="hidden" name="idLaboratorio" value="<%= pro.getIdLaboratorio()%>">
                            <div class="row">
                                <div class="col-md-2">
                                    <label for="rucProv"><h4 class="htext">RUC: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="nRucProv" type="text" placeholder="Número de Ruc" name="ruc" value="<%= pro.getRuc()%>" readonly>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-2">
                                    <label for="RazonSocial"><h4 class="htext">Razón Social: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Razón Social" name="razonSocial" value="<%= pro.getRazonSocial()%>" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3">
                                    <label for="direcProv"><h4 class="htext">Dirección: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="razondirecProv" type="text" placeholder="Dirección Laboratorio" name="direccion" value="<%= pro.getDireccion()%>" required>
                                </div>
                                <div class="col-3"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-2 mt-2">
                                    <label for="telfProv"><h4 class="htext">Teléfono: </h4></label>
                                    <input class="form-control" style="height: 36px;" type="text" placeholder="Número teléfono" name="telefono" value="<%= pro.getTelefono()%>" required>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-3 mt-2">
                                    <label for="correoProv"><h4 class="htext">Correo: </h4></label>
                                    <input class="form-control" style="height: 36px;" class="correoProv" type="text" placeholder="Correo Laboratorio" name="correo" value="<%= pro.getCorreo()%>" required>
                                </div>
                                <div class="col-md-1"></div>
                                <button type="submit" class="btn btn-primary btnProvee col-md-1 mt-5">Aceptar</button>
                                <div class="col-md-3"></div>
                            </div>
                        </form>
                        <hr>
                        <%
                            ProveedorDAO prov = new ProveedorDAO();
                            List<Proveedor> listaProveedores = new LinkedList<>();
                            listaProveedores = prov.list();
                        %>                            
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