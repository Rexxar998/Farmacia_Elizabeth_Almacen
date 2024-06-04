/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dao.entity.Autentica;
import net.tanesha.recaptcha.ReCaptcha;
import net.tanesha.recaptcha.ReCaptchaFactory;
import net.tanesha.recaptcha.ReCaptchaResponse;

/**
 *
 * @author Estudiante
 */
@WebServlet(name = "AutenticaAdmin", urlPatterns = {"/AutenticaAdmin"})
public class AutenticaAdmin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Obtener el parámetro del reCAPTCHA desde la solicitud
        String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
        // Validar el reCAPTCHA
        boolean captchaValid = validarReCaptcha(gRecaptchaResponse, request);
        // Verificar la validez del reCAPTCHA
        // Verificar si la sesión es nula antes de intentar establecer atributos en ella

        //NUEVO
        if (session != null) {
            // Resto del código aquí
            String nivel;
            Boolean cuentaBloqueada = (Boolean) session.getAttribute("bloqueoCuenta");
            Long horaBloqueo = (Long) session.getAttribute("horaBloqueo");
            Long tiempoBloqueo = (long) 60 * 1000; // 1 minuto en milisegundos
            //NUEVO

            if (!captchaValid && cuentaBloqueada != null && cuentaBloqueada && System.currentTimeMillis() - horaBloqueo < tiempoBloqueo) {
                // La cuenta está bloqueada, y no ha pasado el tiempo de bloqueo.
                // Mostrar mensaje de cuenta bloqueada o redirigir a una página de bloqueo.
                session.setAttribute("errorMensaje3", "La cuenta está bloqueada. Intenta nuevamente más tarde.");
                response.sendRedirect("index.jsp");
                return;
            } else {
                session.setAttribute("bloqueoCuenta", false);
                session.setAttribute("horaBloqueo", null);
            }
        } else {
            // La sesión es nula, manejar el caso según sea necesario
            // Por ejemplo, puedes redirigir a una página de error o inicializar la sesión nuevamente
            // Aquí puedes agregar el código según sea necesario
            response.sendRedirect("index.jsp");
            return;
        }
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
        Autentica cli = new Autentica();
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        String rol = request.getParameter("admin");

        try {
            int log = cli.getLogueado(usuario, password);
            if ("administrador".equals(rol) && log == 1) {
                // Contraseña correcta, redirige al usuario a la página deseada
                // Además, resetea la variable de sesión de intentos
                session.setAttribute("intentos", 0);
                HttpSession sesion = request.getSession();
                sesion.setAttribute("logueado", usuario);
                session.setAttribute("rol", "administrador");
                RequestDispatcher fwd = request.getRequestDispatcher("Menu_Admin.jsp");
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
                    RequestDispatcher fwd = request.getRequestDispatcher("error.jsp");
                    fwd.forward(request, response);
                } else {
                    // Contraseña incorrecta, redirige al usuario a la página de error
                    session.setAttribute("logueado", null);
                    session.setAttribute("errorMensaje2", "El usuario y/o contraseña son inválidos."); //Mensaje de error
                    RequestDispatcher fwd = request.getRequestDispatcher("index.jsp");
                    fwd.forward(request, response);
                }
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AutenticaAdmin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Método para validar el reCAPTCHA
    private boolean validarReCaptcha(String gRecaptchaResponse, HttpServletRequest request) {
        try {
            // Crear una instancia de ReCaptcha con las claves secretas
            ReCaptcha reCaptcha = ReCaptchaFactory.newReCaptcha("TU_CLAVE_SECRETA", "TU_CLAVE_SECRETA", false);

            // Obtener la dirección IP del cliente
            String remoteAddr = request.getRemoteAddr();

            // Proporcionar la URL del servicio de verificación de reCAPTCHA
            String verificationUrl = "https://www.google.com/recaptcha/api/siteverify";

            // Verificar la respuesta del usuario al reCAPTCHA
            ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, gRecaptchaResponse, verificationUrl);

            // Retorna true si el reCAPTCHA es válido, false de lo contrario
            return reCaptchaResponse.isValid();
        } catch (Exception e) {
            Logger.getLogger(AutenticaAdmin.class.getName()).log(Level.SEVERE, null, e);
            // Manejar la excepción apropiadamente
            return false;
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
