/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.impl.TipoMovimientoDAO;

/**
 *
 * @author casa
 */
@WebServlet(name = "ProcesaTipoMovimiento", urlPatterns = {"/ProcesaTipoMovimiento"})
public class ProcesaTipoMovimiento extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String codigo = request.getParameter("codigo");
        String nombre = request.getParameter("nameMoviT");
        String descripcion = request.getParameter("DescriMovi");
        String tipoMovimiento=request.getParameter("tipo_movimiento");

        String opcion = request.getParameter("opcion");

        TipoMovimientoDAO tm = new TipoMovimientoDAO();

        if (opcion != null && opcion.equals("insertar")) {
            tm.create(nombre, descripcion,tipoMovimiento);
            request.getRequestDispatcher("TipoMovimiento.jsp").forward(request, response);
        } else if (opcion != null && opcion.equals("editar")) {
            tm.update(codigo, nombre, descripcion,tipoMovimiento);
            request.getRequestDispatcher("TipoMovimiento.jsp").forward(request, response);
        } else if (opcion != null && opcion.equals("eliminar")) {
            tm.delete(codigo);
            request.getRequestDispatcher("TipoMovimiento.jsp").forward(request, response);
        }
    }
}
