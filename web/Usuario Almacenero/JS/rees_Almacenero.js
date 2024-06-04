// Función para abrir el popup de recuperación de contraseña
function abrirPopup() {
    // Obtener el elemento del popup por su ID
    var popup = document.getElementById("formularioEmergente");
    
    // Cambiar el estilo del popup para hacerlo visible
    popup.style.display = "block";
  }
  
  // Función para cerrar el popup de recuperación de contraseña
  function cerrarPopup() {
    // Obtener el elemento del popup por su ID
    var popup = document.getElementById("formularioEmergente");
    
    // Cambiar el estilo del popup para ocultarlo
    popup.style.display = "none";
  }
  
  function cerrarMensaje() {
    var mensaje = document.getElementById("container");
    mensaje.style.display="Menu_Admin.html";
    alert("Regresando a Inicio de Sesión");
  }