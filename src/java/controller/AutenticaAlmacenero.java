/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.dao.entity.Autentica_Almacenero;

/**
 *
 * @author Estudiante
 */
@WebServlet(name = "AutenticaAlmacenero", urlPatterns = {"/AutenticaAlmacenero","/Usuario%20Almacenero/AutenticaAlmacenero"})
public class AutenticaAlmacenero extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nivel;
        HttpSession session = request.getSession();
        Boolean cuentaBloqueada = (Boolean) session.getAttribute("bloqueoCuenta");
        Long horaBloqueo = (Long) session.getAttribute("horaBloqueo");
        Long tiempoBloqueo = (long) 60 * 1000; // 1 minuto en milisegundos
        //NUEVO

        if (cuentaBloqueada != null && cuentaBloqueada && System.currentTimeMillis() - horaBloqueo < tiempoBloqueo) {
            // La cuenta está bloqueada, y no ha pasado el tiempo de bloqueo.
            // Mostrar mensaje de cuenta bloqueada o redirigir a una página de bloqueo.
            session.setAttribute("errorMensaje3", "La cuenta está bloqueada. Intenta nuevamente más tarde.");
            response.sendRedirect("Inicio_Almacenero.jsp");
        } else {
            session.setAttribute("bloqueoCuenta", false);
            session.setAttribute("horaBloqueo", null);
            //FIN NUEVO
            // Obtiene la variable de sesión "intentos"
            Integer intentos = (Integer) session.getAttribute("intentos");

            if (intentos == null) {
                // Si no hay intentos anteriores, inicializa la variable de sesión en 1
                intentos = 1;
            } else {
                // Si hay intentos anteriores, incrementa el valor
                intentos++;
            }
            Autentica_Almacenero cli = new Autentica_Almacenero();
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            String rol = request.getParameter("alm");

            try {
                int log = cli.getLogueado(usuario, password);
                if ("almacenero".equals(rol) && log == 1) {
                    // Contraseña correcta, redirige al usuario a la página deseada
                    // Además, resetea la variable de sesión de intentos
                    session.setAttribute("intentos", 0);
                    HttpSession sesion = request.getSession();
                    sesion.setAttribute("logueado", usuario);
                    session.setAttribute("rol", "almacenero");
                    RequestDispatcher fwd = request.getRequestDispatcher("Menu_Almacenero.jsp");
                    fwd.forward(request, response);
                } else {
                    if (intentos >= 3) {
                        // Si se superan los 3 intentos, redirige al usuario a la página de error
                        session.setAttribute("intentos", 0); // Reinicia el contador de intentos
                        //NUEVO
                        session.setAttribute("logueado", null);
                        session.setAttribute("bloqueoCuenta", true);
                        session.setAttribute("horaBloqueo", System.currentTimeMillis());
                        session.setAttribute("errorMensaje3", "La cuenta está bloqueada. Intenta nuevamente más tarde.");
                        //FIN NUEVO
                        RequestDispatcher fwd = request.getRequestDispatcher("error_Almacenero.jsp");
                        fwd.forward(request, response);
                    } else {
                        // Contraseña incorrecta, redirige al usuario a la página de error
                        session.setAttribute("logueado", null);
                        session.setAttribute("errorMensaje2", "El usuario y/o contraseña son inválidos."); //Mensaje de error
                        RequestDispatcher fwd = request.getRequestDispatcher("Inicio_Almacenero.jsp");
                        fwd.forward(request, response);
                    }
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AutenticaAdmin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
