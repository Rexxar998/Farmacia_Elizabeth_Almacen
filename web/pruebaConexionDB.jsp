<%-- 
    Document   : pruebaConexion
    Created on : 14 oct. 2023, 13:41:16
    Author     : Estudiante
--%>
<%@page import="model.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba de conexion a DB</title>
        <%@include file="verificaLogin.jsp" %>
    </head>
    <body>
        <h1>
            <%
                Conexion c = new Conexion();
                int conectado = c.pruebaConexion();
                
                if (conectado==1) {
                    out.print("La conexion ha sido un exito ... estamos listos para la NASA");
                } else {
                    out.print("No se pudo conectar, vaya a jugar a la seleccion");
                }
            %>            
        </h1>
    </body>
</html>
