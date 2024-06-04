<div class="col-xs-12 col-md-3 menu-lateral" style="background-color: #2B9CE5; border-radius: 5px;">
    <div id="sidebar-accordion" class="accordion">
        <div class="list-group">
            <a href="Menu_Admin.jsp" style="margin-left: 0px;">
                <br>
                <button class="<%= request.getRequestURI().endsWith("Menu_Admin.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-bars"> Menú Principal</i>
                </button>
            </a>
            <a href="Producto.jsp" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("Producto.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-prescription-bottle-medical"> Producto</i>
                </button>
            </a>
            <a href="Proovedores.jsp" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("Proovedores.jsp") || request.getRequestURI().endsWith("editarProveedores.jsp") || request.getRequestURI().endsWith("eliminarProveedores.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-truck-fast"> Proveedores</i>
                </button>
            </a>
            <a href="TipoMovimiento.jsp" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("TipoMovimiento.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-tape"> Tipo de movimiento</i>
                </button>
            </a>
            <a href="#inventario-items" data-toggle="collapse" aria-expanded="false" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("RegistrarInv.jsp") || request.getRequestURI().endsWith("Inventario.jsp")? "boton-seleccionado" : ""%>"><i class="fas fa-inventory">Inventario</i> <i class="fa fa-caret-down" aria-hidden="true"></i></button>
            </a>
            <div id="inventario-items" class="collapse" data-parent="#sidebar-accordion">
                <a href="RegistrarInv.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("RegistrarInv.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-plus"> Registrar Inventario</i>
                    </button>
                </a>
                <a href="Inventario.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("Inventario.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-warehouse"> Consultar Inventario</i>
                    </button>
                </a>
            </div>
            <a href="#ordencompra-items" data-toggle="collapse" aria-expanded="false" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("GenerarOrdenCompra.jsp") || request.getRequestURI().endsWith("Consultar%20Orden%20de%20Compra.jsp") || request.getRequestURI().endsWith("agregarProduct.jsp")? "boton-seleccionado" : ""%>"><i class="fas fa-inventory">Orden de Compra</i> <i class="fa fa-caret-down" aria-hidden="true"></i></button>
            </a>
            <div id="ordencompra-items" class="collapse" data-parent="#sidebar-accordion">
                <a href="GenerarOrdenCompra.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("GenerarOrdenCompra.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-plus"> Generar Orden de Compra</i>
                    </button>
                </a>
                <a href="Consultar Orden de Compra.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("Consultar%20Orden%20de%20Compra.jsp")? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-cart-shopping"> Consultar Orden</i>
                    </button>
                </a>
            </div>
            <a href="#guiaremision-items" data-toggle="collapse" aria-expanded="false" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("RegistrarGuia.jsp") || request.getRequestURI().endsWith("GuiaRemision.jsp") || request.getRequestURI().endsWith("AsignarOC.jsp") || request.getRequestURI().endsWith("DetalleGUI.jsp") ? "boton-seleccionado" : ""%>"><i class="fas fa-inventory">Guía de Remisión</i> <i class="fa fa-caret-down" aria-hidden="true"></i></button>
            </a>
            <div id="guiaremision-items" class="collapse" data-parent="#sidebar-accordion">
                <a href="RegistrarGuia.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("RegistrarGuia.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-plus"> Registrar Guía Remisión</i>
                    </button>
                </a>
                <a href="GuiaRemision.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("GuiaRemision.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-folder-open"> Consultar Guía</i>
                    </button>
                </a>
            </div>
            <a href="#movimiento-items" data-toggle="collapse" aria-expanded="false" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("AgregarMovimiento.jsp") || request.getRequestURI().endsWith("Kardex.jsp") || request.getRequestURI().endsWith("AsignarMovimiento.jsp")? "boton-seleccionado" : ""%>"><i class="fas fa-inventory">Kardex</i> <i class="fa fa-caret-down" aria-hidden="true"></i></button>
            </a>
            <div id="movimiento-items" class="collapse" data-parent="#sidebar-accordion">
                <a href="AgregarMovimiento.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("AgregarMovimiento.jsp")|| request.getRequestURI().endsWith("AsignarMovimiento.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-plus"> Agregar Movimiento</i>
                    </button>
                </a>
                <a href="Kardex.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("Kardex.jsp")? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-list-check"> Consultar Kardex</i>
                    </button>
                </a>
            </div>
        </div>
    </div>
</div>


             
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                     
                        
                        
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
</script>
