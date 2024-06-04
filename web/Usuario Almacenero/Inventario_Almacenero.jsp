<%-- 
     Document   : Inventario
    Created on : 04-oct-2023, 14:18:57
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias_Almacenero.jsp" %>
        <link rel="stylesheet" href="CSS/inventario_Almacenero.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <title>Farmacia Elizabeth J&L</title>
        <%@include file="VerificaLoginAlmacenero.jsp" %>
        <link rel="icon" type="image/png" href="IMG/cruz.png">
    </head>

    <body>

        <%@include file="encabezadoAlmacenero.jsp" %>

        <br>
        <br>

        <div class="container-fluid">
            <div class="row">
                <%@include file="Menu_Funcion_Almacenero.jsp" %>

                <div class="col-xs-12 col-md-9">
                    <h2 class="col-md-12"><b>Inventario</b></h2>
                    
                    <hr>

                    <div class="col inventario">
                        <div class="row">
                            <div class="col-md-11">
                                <h4 class=""><b>Consultar Inventario</b></h4>
                            </div>
                            <a class="col-md-1 btn btn-primary yojhan" role="button" href="RegistrarInv_Almacenero.jsp">Agregar</a>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-12">
                                <h4><b>Buscar Inventario</b></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <input id="BusPr" class="form-control buscarProd icono-placeholder" type="text" placeholder=" Codigo Inventario" name="DescriProduc">
                            </div>
                            <button type="button" class="col-md-1 btn btn-primary yojhan">Buscar</button>
                        </div>
                        <hr>
                        <h6><b>LISTA DE PRODUCTOS</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>Código Inv.</td>
                                <td>Fecha de Inv.</td>
                                <td>Hora de Inv.</td>
                                <td>Estado</td>
                                <td>Acciones</td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>T001</td>
                                    <td>01/03/24</td>
                                    <td>15/03/23</td>
                                    <td>
                                    <select class="form-select" aria-label="Default select example" name="tipo" disabled>
                                        <option value="Observ" readonly>Observado</option>
                                        <option value="Aprov" readonly>Aprobado</option>
                                    </select>
                                    </td>
                                    <td>
                                        <button class="botonDetails"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>T002</td>
                                    <td>01/03/24</td>
                                    <td>15/03/23</td>
                                    <td>
                                    <select class="form-select" aria-label="Default select example" name="tipo" disabled>
                                        <option value="Observ" readonly>Observado</option>
                                        <option value="Aprov" readonly>Aprobado</option>
                                    </select>
                                    </td>
                                    <td>
                                        <button class="botonDetails"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>T003</td>
                                    <td>01/03/24</td>
                                    <td>15/03/23</td>
                                    <td>
                                    <select class="form-select" aria-label="Default select example" name="tipo" disabled>
                                        <option value="Observ" readonly>Observado</option>
                                        <option value="Aprov" readonly>Aprobado</option>
                                    </select>
                                    </td>
                                    <td>
                                        <button class="botonDetails"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>T004</td>
                                    <td>01/03/24</td>
                                    <td>15/03/23</td>
                                    <td>
                                    <select class="form-select" aria-label="Default select example" name="tipo" disabled>
                                        <option value="Observ" readonly>Observado</option>
                                        <option value="Aprov" readonly>Aprobado</option>
                                    </select>
                                    </td>
                                    <td>
                                        <button class="botonDetails"><i class="fa-solid fa-info"></i></button>
                                        <button class="botonEditarInv"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonEliminar"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="piePagina_Almacenero.jsp" %>
    </body>

</html>