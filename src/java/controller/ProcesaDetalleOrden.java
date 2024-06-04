/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.impl.DetalleOrdenDAO;

/**
 *
 * @author casa
 */
@WebServlet(name = "ProcesaDetalleOrden", urlPatterns = {"/ProcesaDetalleOrden"})
public class ProcesaDetalleOrden extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("opcion");
        String secuencia_detalle_orden = request.getParameter("secuencia_detalle_orden");
        String nombre = request.getParameter("nombreProd");
        String tipo = request.getParameter("tipoProd");
        String cantidad = request.getParameter("cantidad");
        String precio = request.getParameter("precioCompra");

        DetalleOrdenDAO d = new DetalleOrdenDAO();

        if (opcion != null && opcion.equals("insertar")) {
            d.create("null", "null", "0","0");
            request.getRequestDispatcher("GenerarOrdenCompra.jsp").forward(request, response);
        }
        if (opcion != null && opcion.equals("editar")) {
            d.update(secuencia_detalle_orden,cantidad,precio);
            request.getRequestDispatcher("editarGenerarOrdenDeCompra.jsp").forward(request, response);
        }
        if (opcion != null && opcion.equals("editar2")) {
            d.editar(secuencia_detalle_orden,nombre,tipo);
            request.getRequestDispatcher("editarGenerarOrdenDeCompra.jsp").forward(request, response);
        }
        if (opcion != null && opcion.equals("eliminar")) {
            d.delete(secuencia_detalle_orden);
            request.getRequestDispatcher("GenerarOrdenCompra.jsp").forward(request, response);
        }
    }
}
