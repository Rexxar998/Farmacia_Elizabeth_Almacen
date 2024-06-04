<%
    HttpSession sesion = request.getSession();
    String log = (String)sesion.getAttribute("logueado");
    String rol = (String) session.getAttribute("rol");
    if (log==null || !"almacenero".equals(rol)) {        
        response.sendRedirect("Inicio_Almacenero.jsp");
    } 
%> 