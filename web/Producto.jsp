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
                    <h2><b>Producto</b></h2>
                    <hr>
                    <div class="col inventario">
                        <div>
                            <h4><b>Registrar Producto</b></h4>
                            <hr>
                            <form action="ProcesaProducto" method="post">
                                <input type="hidden" name="opcion" value="insertar">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label for="nombreproduc" class="htext"><h4>Nombre:</h4></label>
                                        <input class="form-control" type="text" name="nombreprod" placeholder="Nombre Producto" required="">
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label for="DescriProduc" class="htext"><h4>Descripción:</h4></label>
                                        <input class="form-control" type="text" name="DescriProduc" placeholder="Descripción" required>
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label for="DescriProduc" class="htext"><h4>Cantidad:</h4></label>
                                        <input class="form-control" type="number" name="CantidadProducto" placeholder="Cantidad" required>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-2 mt-2">
                                        <label class="htext"><h4>Tipo de Producto:</h4></label>
                                        <select class="form-select" aria-label="Default select example" name="tipo" required>
                                            <option value="" selected disabled>Selecciona Tipo</option>
                                            <option value="Generico">Generico</option>
                                            <option value="Marca">Marca</option>
                                        </select>
                                    </div>
                                    <div class="col-md-1"></div>                             
                                    <button type="submit" class="btn btn-primary yojhan col-md-1 mt-5" style="height:39px;">Registrar</button>
                                </div>
                            </form>                            
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class=""><b>Buscar Producto</b></h4>
                                </div>
                            </div>
                            <form action="Producto.jsp" method="post">
                                <input type="hidden" name="opcion" value="buscar">
                                <div class="row">
                                    <div class="col-md-3 mt-2">
                                        <input id="BusPr" class="form-control icono-placeholder" type="text" placeholder=" Nombre Producto" name="BuscProd">
                                    </div>
                                    <button type="submit" class="btn btn-primary yojhan col-md-1 mt-2">Buscar</button>
                                    <div class="col-md-6"></div>
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
                        <h6><b>LISTA DE PRODUCTOS</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>Tipo de Producto</td>
                                <td>Nombre</td>
                                <td>Descripción</td>
                                <td>Cantidad</td>
                                <td>Estado</td>
                                <td>Acciones</td>
                                </thead>
                                <%
                                    if (listaProductos != null) {
                                        for (int i = 0; i < listaProductos.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <td><h6>P00<%= listaProductos.get(i).getCodigo()%></h6></td>
                                    <td><%= listaProductos.get(i).getTipoProducto()%></td>
                                    <td><%= listaProductos.get(i).getNombre()%></td>
                                    <td><%= listaProductos.get(i).getDescripcion()%></td>
                                    <td><%= listaProductos.get(i).getCantidad()%></td>
                                    <td><%= listaProductos.get(i).getEstado()%></td>
                                    <td>
                                        <a href="editarProducto.jsp?codigo=<%= listaProductos.get(i).getCodigo()%>"><button class="botonActualizarProduc"><i class="fa-solid fa-pen-to-square "></i></button></a>
                                        <a href="eliminarProducto.jsp?codigo=<%= listaProductos.get(i).getCodigo()%>"><button class="botonEliminarProduct"><i class="fa-solid fa-trash-can"></i></button></a>
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
                            <button class="btn btn-primary yojhan col-md-1 mt-3">
                                <i class="fa-solid fa-file-invoice"></i></button>
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