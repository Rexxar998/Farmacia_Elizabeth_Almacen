<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="referencias.jsp" %>
        <!-- --------------------- -->
        <link rel="stylesheet" href="CSS/AgregarMovi.css">
        <!-- Incluir archivo JavaScript externo para la funcionalidad interactiva -->
        <title>MENU_ELIZABETH_FARM</title>
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
                            <h4 class="col-md-3 mt-3"><b>Agregar Movimiento</b></h4>
                            <div class="col-md-7"></div>
                            <div class="col-md-2">
                                <h6 style="color: #2B9CE5;"><b>Fecha de Emisión</b></h6>
                                <input type="date" name="fechaMovimiento" id="fechaMovimiento" class="col-md-2 form-control">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <h6 style="color: #2B9CE5;"><b>Búsqueda para agregar un movimiento</b></h6>
                            <div class="col-md-2 mt-2">
                                <input id="IngrSald" style="height: 36px;" class="form-control"
                                       type="text" placeholder=" Tipo Ingreso o Salida" name="IngrSald">
                            </div>
                            <a href="AsignarMovimiento.jsp" rule="button" class="btn btn-primary col-md-1 mt-2 btnMovimiento"><i
                                    class="fa-solid fa-magnifying-glass"></i></a>
                            <div class="col-md-9"></div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                                <h6 style="color: #2B9CE5;"><b>Observaciones</b></h6>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7 mt-2">
                                <input type="text" class="form-control" placeholder="Observaciones (Opcional)">
                            </div>
                            <div class="col-md-4"></div>
                            <a href="#" rule="button" class="btn btn-primary col-md-1 mt-2 btnMovimiento"> + Producto </a>
                        </div>
                        <hr>
                        <h6><b>LISTA DE MOVIMIENTOS</b></h6>
                        <div class="barra-lateral">
                            <table class="table table-bordered table-hover" style="border: black;"
                                   class="alinearizq news2let" width="98.5%" border="1px" cellspacing="0" cellpadding="8">
                                <thead class="table-dark" align="center">
                                <td>Código</td>
                                <td>Nombre Producto</td>
                                <td>Cantidad</td>
                                <td>Acciones</td>
                                </thead>
                                <tr class="trcolr" align="center">
                                    <td>P001</td>
                                    <td>Paracetamol</td>
                                    <td>60</td>
                                    <td>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>P002</td>
                                    <td>Panadol Antigripal</td>
                                    <td>40</td>
                                    <td>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                                <tr class="trcolr" align="center">
                                    <td>P003</td>
                                    <td>Atorvastatina</td>
                                    <td>50</td>
                                    <td>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-pen-to-square "></i></button>
                                        <button class="botonDetailsKard"><i class="fa-solid fa-trash-can"></i></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <tr>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <a href="Kardex.jsp" rule="button" class="btn btn-primary btnMovimiento col-md-1 mt-2">Cancelar</button></a>
                            <div class="col-md-2"></div>
                            <a href="Kardex.jsp" rule="button" class="btn btn-primary btnMovimiento col-md-1 mt-2">Agregar<!--<i class="fa-solid fa-plus"></i>--></a>
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

</html>