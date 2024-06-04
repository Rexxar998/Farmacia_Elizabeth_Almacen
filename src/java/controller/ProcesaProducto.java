/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.impl.ProductoDAO;

/**
 *
 * @author casa
 */
@WebServlet(name = "ProcesaProducto", urlPatterns = {"/ProcesaProducto"})
public class ProcesaProducto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String codigo = request.getParameter("codigo");
        String tipoProducto = request.getParameter("tipo");
        String nombre = request.getParameter("nombreprod");
        String descripcion = request.getParameter("DescriProduc");
        String cantidad=request.getParameter("CantidadProducto");
        String estado = request.getParameter("estado");

        String opcion = request.getParameter("opcion");

        ProductoDAO p = new ProductoDAO();

        if (opcion != null && opcion.equals("insertar")) {
            p.create(tipoProducto, nombre, descripcion,cantidad);
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        } else if (opcion != null && opcion.equals("editar")) {
            p.update(codigo, tipoProducto, nombre, descripcion,cantidad, estado);
            request.getRequestDispatcher("Producto.jsp").forward(request, response);

        } else if (opcion != null && opcion.equals("eliminar")) {
            p.delete(codigo);
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
    }
}
