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
                            <h4><b>Eliminar Producto</b></h4>
                            <hr>
                            <form action="ProcesaProducto" method="post">
                                <input type="hidden" name="opcion" value="eliminar">
                                <input type="hidden" name="estado" value="<%= producto.getEstado()%>">
                                <div class="row">                    
                                    <div class="col-md-2">
                                        <label class="htext"><h4>Código:</h4></label>
                                        <input class="form-control codigo" readonly type="text" name="muestra" value="P00<%= producto.getCodigo()%>" >
                                        <input class="form-control codigo" readonly type="hidden" name="codigo" value="<%= producto.getCodigo()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label for="nombreproduc" class="htext"><h4>Nombre:</h4></label>
                                        <input class="form-control" readonly type="text" name="nombreprod" value="<%= producto.getNombre()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3">
                                        <label for="DescriProduc" class="htext"><h4>Descripción:</h4></label>
                                        <input class="form-control" readonly type="text" name="DescriProduc" value="<%= producto.getDescripcion()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-2">
                                        <label for="DescriProduc" class="htext"><h4>Cantidad:</h4></label>
                                        <input class="form-control" readonly type="number" name="CantidadProducto" value="<%= producto.getCantidad()%>">
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-md-2 mt-2">
                                        <label class="htext"><h4>Tipo de Producto:</h4></label>
                                        <input class="form-control" readonly type="text" name="tipo" value="<%= producto.getTipoProducto()%>" >
                                    </div>
                                    <div class="col-md-1"></div>
                                    <button type="button" class="btn btn-primary yojhan col-md-1 mt-5" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Aceptar</button>
                                    <div>
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
                                    </div>
                                </div>
                            </form>
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
                            <div class="barra-lateral tablaLab">
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
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="piePagina.jsp" %>
        </div>
        <!--END PIE DE PAGINA-->
    </body>

</html>
