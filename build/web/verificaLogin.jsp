
<%
    HttpSession s = request.getSession();
    String log = (String)s.getAttribute("logueado");
    String rol = (String) s.getAttribute("rol");
    if (log==null || !"administrador".equals(rol)) {        
        response.sendRedirect("index.jsp");
    } 
%>
