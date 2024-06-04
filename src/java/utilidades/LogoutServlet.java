package utilidades;

import model.dao.entity.SessionManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String usuario = (String) session.getAttribute("logueado");

        if (usuario != null) {
            SessionManager.logout(usuario);
            session.invalidate();
        }

        response.sendRedirect("jsp/index.jsp");
    }
}
