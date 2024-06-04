<%-- 
    Document   : Generar Orden de Compra
    Created on : 04-oct-2023, 17:05:56
    Author     : casa
--%>

<%@page import="model.dao.impl.TipoProductoDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.impl.ProductoDAO"%>
<%@page import="model.dao.entity.DetalleOrden"%>
<%@page import="model.dao.impl.DetalleOrdenDAO, java.util.List, java.util.LinkedList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/Generar_OC.css">
        <title>Farmacia Elizabeth J&L</title>
        <%@include file="verificaLogin.jsp" %>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <script src="JS/Generar_OrdenCompra.js"></script>
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
                            <h4 class="col-md-3 mt-3"><b>Agregar Orden de Compra</b></h4>
                            <div class="col-md-7">
                            </div>
                            <div class="col-md-2">
                                <h6 style="color: #2B9CE5;"><b>Fecha de Emisión</b></h6>
                                <input type="date" name="fechaOrdenC" id="fechaOrdenC" class="col-md-2 form-control" required>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 style="color: #2B9CE5;"><b>Laboratorio</b></h6>
                            <div class="col-md-2 mt-2">
                                <input id="NombreLab" style="height: 36px;" class="form-control"
                                       type="text" placeholder=" Nombre Laboratorio" name="NombreLab" readonly>
                            </div>
                            <a href="AsignarLaboratorio.jsp" rule="button" class="btn btn-primary col-md-1 mt-2 buttonOrden"><i
                                    class="fa-solid fa-magnifying-glass"></i></a>
                            <div class="col-md-9"></div>
                        </div>
                        <script>
                            // Obtén el parámetro 'lab' de la URL
                            const params = new URLSearchParams(window.location.search);
                            const labNombre = params.get('lab');

                            // Si el parámetro está presente, establece el valor en el campo NombreLab
                            if (labNombre) {
                                document.getElementById('NombreLab').value = labNombre;
                            }
                        </script>

                        <hr>
                        <form action="ProcesaDetalleOrden" method="post">
                            <div class="row">
                                <div class="col-md-11"></div>
                                <input type="hidden" name="opcion" value="insertar">
                                <button href="#" rule="button" type="submit" class="btn btn-primary col-md-1 buttonOrden"> + Producto </button>
                            </div>
                        </form>

                        <%                            DetalleOrdenDAO p = new DetalleOrdenDAO();

                            List<DetalleOrden> listaDetalles = new LinkedList<>();

                            listaDetalles = p.list();

                        %>
                        <h6 class="col-md-3"><b>Lista de Productos</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;"
                                   class="alinearizq news2let" width="98.5%" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>Nombre Producto</td>
                                <td>Tipo Producto</td>
                                <td>Cantidad</td>
                                <td>Precio Compra</td>
                                <td>Subtotal</td>
                                <td>IGV 18%</td>
                                <td>Total</td>
                                <td>Acciones</td>
                                </thead>
                                <%                                    if (listaDetalles != null) {
                                        for (int i = 0; i < listaDetalles.size(); i++) {
                                %> 
                                <tr class="trcolr" align="center">
                                    <%                                        ProductoDAO productoDAO = new ProductoDAO();
                                        List<String> nombresProductos = productoDAO.obtenerNombresProductos();
                                    %>

                                    <td>
                                        <select class="form-select" form="formularioEditar<%= i %>" name="nombreProd" aria-label="Default select example" required>
                                            <option value="" selected disabled><%= listaDetalles.get(i).getNombre_prod()%></option>
                                            <% for (String nombre : nombresProductos) {%>
                                            <option value="<%= nombre%>"><%= nombre%></option>
                                            <% }%>
                                        </select>
                                    </td>
                                    <%                                        TipoProductoDAO tipoProducto = new TipoProductoDAO();
                                        List<String> nombresTipoProducto = tipoProducto.obtenerNombresTipoProducto();
                                    %>
                                    <td>
                                        <select class="form-select" form="formularioEditar<%= i %>" name="tipoProd" aria-label="Default select example" required>
                                            <option value="" selected disabled><%= listaDetalles.get(i).getTipo_prod()%></option>
                                            <% for (String nombre : nombresTipoProducto) {%>
                                            <option value="<%= nombre%>"><%= nombre%></option>
                                            <% }%>
                                        </select>
                                    </td>
                                    <td><%= listaDetalles.get(i).getCantidad()%></td>
                                    <td>S/.<%= listaDetalles.get(i).getPrecioCompra()%></td>
                                    <td>S/.<%= listaDetalles.get(i).getSubtotal()%></td>
                                    <td>S/.<%= listaDetalles.get(i).getIgv()%></td>
                                    <td>S/.<%= listaDetalles.get(i).getTotalProduct()%></td>
                                    <td>
                                        <form action="ProcesaDetalleOrden" id="formularioEditar<%= i %>" method="post">
                                            <input type="hidden" name="opcion" value="editar2">
                                            <input type="hidden" name="secuencia_detalle_orden" value="<%= listaDetalles.get(i).getSecuencia_detalle_orden()%>">                                                                                      
                                        </form>
                                        <button type="submit" form="formularioEditar<%= i %>" class="botonActualizarProduc"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <a href="eliminarGenerarOrdenDeCompra.jsp?secuencia_detalle_orden=<%= listaDetalles.get(i).getSecuencia_detalle_orden()%>"><button class="botonEliminarProduct"><i class="fa-solid fa-trash-can"></i></button></a>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </table>
                        </div>
                        <tr>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <a href="Consultar%20Orden%20de%20Compra.jsp" rule="button" class="btn btn-primary buttonOrden col-md-1 mt-2">Cancelar</button></a>
                            <div class="col-md-2"></div>
                            <a href="Consultar%20Orden%20de%20Compra.jsp" rule="button" class="btn btn-primary buttonOrden col-md-1 mt-2">Agregar<!--<i class="fa-solid fa-plus"></i>--></a>
                            <div class="col-md-4"></div>
                        </div>
                        </tr>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="piePagina.jsp" %>
    </div>
    <!--END PIE DE PAGINA-->
</body>
