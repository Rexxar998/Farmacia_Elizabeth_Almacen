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
import model.dao.impl.ProveedorDAO;

/**
 *
 * @author casa
 */
@WebServlet(name = "ProcesaProveedores", urlPatterns = {"/ProcesaProveedores"})
public class ProcesaProveedores extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idLaboratorio = request.getParameter("idLaboratorio");
        String ruc = request.getParameter("ruc");
        String razonSocial = request.getParameter("razonSocial");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");

        String opcion = request.getParameter("opcion");

        ProveedorDAO prov = new ProveedorDAO();

        if (opcion != null && opcion.equals("insertar")) {
            prov.create(ruc, razonSocial, direccion, telefono, correo);
            request.getRequestDispatcher("Proovedores.jsp").forward(request, response);
        } else if (opcion != null && opcion.equals("editar")) {
            prov.update(idLaboratorio,ruc, razonSocial, direccion, telefono, correo);
            request.getRequestDispatcher("Proovedores.jsp").forward(request, response);
        } else if (opcion != null && opcion.equals("eliminar")) {
            prov.delete(idLaboratorio);
            request.getRequestDispatcher("Proovedores.jsp").forward(request, response);
        }
    }
}
