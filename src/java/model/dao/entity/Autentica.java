package model.dao.entity;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import utilidades.Conexion;


/**
 *
 * @author Estudiante
 */
public class Autentica {

    private String usuario;
    private String password;
    private int logueado;

    public Autentica() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getLogueado(String usr, String psw) throws ClassNotFoundException {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        int cont = 0;
        String query = "select * from usuario where usuario = ? and password = ? and idRol='admin'";
        PreparedStatement preparedStatement = cnx.prepareStatement(query);
        preparedStatement.setString(1, usr);
        preparedStatement.setString(2, psw);
        
        ResultSet resultado = preparedStatement.executeQuery();
        
        while (resultado.next()) {
            cont++;
        }
        
        if (cont != 0) {
            logueado = 1;
        } else {
            logueado = 0;
        }
        
        return logueado;
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    
    return -666;
}

    public void setLogueado(int logueado) {
        this.logueado = logueado;
    }

}
