<div class="col-xs-12 col-md-3 menu-lateral" style="background-color: #2B9CE5; border-radius: 5px;">
    <div id="sidebar-accordion" class="accordion">
        <div class="list-group">
            <a href="Menu_Almacenero.jsp" style="margin-left: 0px;">
                <br>
                <button class="<%= request.getRequestURI().endsWith("Menu_Almacenero.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-bars"> Menú Principal</i>
                </button>
            </a>
            <a href="TipoMovimiento_Almacenero.jsp" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("TipoMovimiento_Almacenero.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-tape"> Tipo de movimiento</i>
                </button>
            </a>
            <a href="Proovedores_Almacenero.jsp" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("Proovedores_Almacenero.jsp") || request.getRequestURI().endsWith("editarProveedores_Almacenero.jsp") || request.getRequestURI().endsWith("eliminarProveedores_Almacenero.jsp") ? "boton-seleccionado" : ""%>">
                    <i class="fa-solid fa-truck-fast"> Proveedores</i>
                </button>
            </a>
            <a href="#inventario-items" data-toggle="collapse" aria-expanded="false" style="margin-left: 0px;">
                <button class="<%= request.getRequestURI().endsWith("RegistrarInv_Almacenero.jsp") || request.getRequestURI().endsWith("Inventario_Almacenero.jsp") ? "boton-seleccionado" : ""%>"><i class="fas fa-inventory">Inventario</i> <i class="fa fa-caret-down" aria-hidden="true"></i>
                </button>
            </a>
            <div id="inventario-items" class="collapse" data-parent="#sidebar-accordion">
                <a href="RegistrarInv_Almacenero.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("RegistrarInv_Almacenero.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-plus"> Registrar Inventario</i>
                    </button>
                </a>
                <a href="Inventario_Almacenero.jsp" style="margin-left: 0px;">
                    <button class="<%= request.getRequestURI().endsWith("Inventario_Almacenero.jsp") ? "boton-seleccionado" : ""%>">
                        <i class="fa-solid fa-warehouse"> Consultar Inventario</i>
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
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
</script>