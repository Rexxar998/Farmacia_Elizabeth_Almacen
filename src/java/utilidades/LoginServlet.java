package utilidades;

import model.dao.entity.SessionManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        // Conexión a la base de datos
        String dbURL = "jdbc:mysql://localhost:3306/Farmacia_Elizabeth";
        String dbUser = "root";  // Cambia esto según tu configuración
        String dbPass = "123456";  // Cambia esto según tu configuración

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "SELECT * FROM usuario WHERE usuario = ? AND password = ?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, usuario);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                String userId = resultSet.getString("idUsuario");
                String role = resultSet.getString("idRol");

                HttpSession session = request.getSession();
                if (SessionManager.isLoggedIn(usuario)) {
                    response.sendRedirect("jsp/already_logged_in.jsp");
                } else {
                    session.setAttribute("logueado", usuario);
                    session.setAttribute("rol", role);
                    SessionManager.login(usuario, session.getId());
                    response.sendRedirect("jsp/admin.jsp");
                }
            } else {
                response.sendRedirect("jsp/login.jsp?error=invalid");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("jsp/login.jsp?error=error");
        }
    }
}
