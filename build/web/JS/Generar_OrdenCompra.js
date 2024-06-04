// Función para abrir el popup de buscar laboratorio
function abrirPopup() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formBuscarLaboratorio");
  var info = document.getElementById("infoRUC");
  var tabla = document.getElementById("tablaProductos");
  // Cambiar el estilo del popup para hacerlo visible
  popup.style.display = "block";
  if (tabla.info.style.display != "none") {
  info.style.display = "none";}
  if (tabla.style.display != "none") {
  tabla.style.display = "none";}
}
  
// Función para cerrar el popup de recuperación de contraseña y mostrar la información
function cerrarPopup() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formBuscarLaboratorio");
  var info = document.getElementById("infoRUC");
  var tabla = document.getElementById("tablaProductos");
  // Cambiar el estilo del popup para ocultarlo
  popup.style.display = "none";
  info.style.display = "flex";
  tabla.style.display = "block";
}

// Función para cerrar el popup
function cerrarPopup2() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formBuscarLaboratorio");
  // Cambiar el estilo del popup para ocultarlo
  popup.style.display = "none";
}

// Función para abrir el popup de la lista de un pedido especifico
function abrirPopup2() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formVerLista");
  // Cambiar el estilo del popup para hacerlo visible
  popup.style.display = "block";
}
  
// Función para cerrar el popup de la lista de un pedido especifico
function cerrarPopup3() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formVerLista");
  // Cambiar el estilo del popup para ocultarlo
  popup.style.display = "none";
}

// Función para abrir el popup de Agregar Producto
function abrirPopup4() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formularioEmergente");
  
  // Cambiar el estilo del popup para hacerlo visible
  popup.style.display = "block";
}

// Función para cerrar el popup de Agregar Producto
function cerrarPopup4() {
  // Obtener el elemento del popup por su ID
  var popup = document.getElementById("formularioEmergente");
  
  // Cambiar el estilo del popup para ocultarlo
  popup.style.display = "none";
}
