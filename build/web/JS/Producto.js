// Función para abrir el popup de Registrar Producto
function abrirPopup() {
    // Obtener el elemento del popup por su ID
    var popup = document.getElementById("formularioEmergente");
    
    // Cambiar el estilo del popup para hacerlo visible
    popup.style.display = "block";
  }
  
  // Función para cerrar el popup de Registrar Producto
  function cerrarPopup() {
    // Obtener el elemento del popup por su ID
    var popup = document.getElementById("formularioEmergente");
    
    // Cambiar el estilo del popup para ocultarlo
    popup.style.display = "none";
  }
  
  
  
  document.addEventListener("keyup", e=>{

  if (e.target.matches("#buscador")){

      if (e.key ==="Escape")e.target.value = ""

      document.querySelectorAll(".NameP").forEach(fruta =>{

          fruta.textContent.toLowerCase().includes(e.target.value.toLowerCase())
            ?fruta.classList.remove("filtro")
            :fruta.classList.add("filtro")
      })
  }})
