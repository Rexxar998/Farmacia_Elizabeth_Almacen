<%-- 
    Document   : Producto
    Created on : 04-oct-2023, 13:49:20
    Author     : casa
--%>
<%@page import="model.dao.entity.Producto"%>
<%@page import="model.dao.impl.ProductoDAO, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <link rel="stylesheet" href="CSS/Producto.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <script src="JS/producto.js"></script>
        <title>Farmacia Elizabeth J&L</title>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
        <%@include file="verificaLogin.jsp" %>
    </head>
    
    <%        String cod = request.getParameter("codigo");
        ProductoDAO prodDAO = new ProductoDAO();
        Producto producto = prodDAO.read(cod);
    %>

    <body>

        <%@include file="encabezadoAdmin.jsp" %>

        <br>
        <br>

        <div class="container-fluid">
            <div class="row">
                <%@include file="Menu.jsp" %>

                <div class="col-xs-12 col-md-9">
                    <h2><b>Producto</b></h2>
                    <hr>
                    <div class="col inventario">
                        <div>
                            <h4><b>Editar Producto</b></h4>
                            <hr>
                            <form action="ProcesaProducto" method="post" id="mi-formulario">
                                <input type="hidden" name="opcion" value="editar">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label class="htext"><h4>Código:</h4></label>
                                        <input class="form-control codigo" readonly type="text" name="muestra" value="P00<%= producto.getCodigo()%>" >
                                        <input class="form-control codigo" readonly type="hidden" name="codigo" value="<%= producto.getCodigo()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label for="nombreproduc" class="htext"><h4>Nombre:</h4></label>
                                        <input class="form-control" required type="text" name="nombreprod" value="<%= producto.getNombre()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label for="DescriProduc" class="htext"><h4>Descripción:</h4></label>
                                        <input class="form-control" type="text" name="DescriProduc" value="<%= producto.getDescripcion()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label for="DescriProduc" class="htext"><h4>Cantidad:</h4></label>
                                        <input class="form-control" type="number" name="CantidadProducto" required value="<%= producto.getCantidad()%>">
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-2 mt-2">
                                        <label class="htext"><h4>Tipo de Producto:</h4></label>
                                        <select class="form-select" required aria-label="Default select example" name="tipo" required>
                                            <option value="<%= producto.getTipoProducto()%>" selected readonly><%= producto.getTipoProducto()%></option>
                                            <option value="Generico">Generico</option>
                                            <option value="Marca">Marca</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2 mt-2">
                                        <label class="htext"><h4>Estado Producto:</h4></label>
                                        <select class="form-select" aria-label="Default select example" name="estado" required>
                                            <option value="<%= producto.getEstado()%>" selected readonly><%= producto.getEstado()%></option>
                                            <option value="Activo">Activo</option>
                                            <option value="Inactivo">Inactivo</option>
                                        </select>
                                    </div>           
                                    <div class="col-md-1"></div>
                                    <button type="submit" class="btn btn-primary yojhan col-md-1 mt-5">Aceptar</button>
                                </div>
                            </form>                            
                        </div>

                        <hr>

                        <%

                            String opcion = request.getParameter("opcion");
                            ProductoDAO p = new ProductoDAO();

                            List<Producto> listaProductos = new LinkedList<>();
                            if (opcion != null && opcion.equals("buscar")) {
                                String ProducBuscador = request.getParameter("BuscProd");
                                listaProductos = p.buscarProductos(ProducBuscador);
                            } else {
                                listaProductos = p.list();
                            }

                        %>                    
                    </div>
                </div>
            </div>
        </div>

        <%@include file="piePagina.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
</body>

</html>
