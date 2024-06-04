/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utilidades.Conexion;

/**
 *
 * @author casa
 */
public class TipoProductoDAO {
    public List<String> obtenerNombresTipoProducto() {
        List<String> nombres = new ArrayList<>();

        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "SELECT nombre FROM TipoProducto;";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            ResultSet resultado = sentencia.executeQuery();

            while (resultado.next()) {
                String nombre = resultado.getString("nombre");
                nombres.add(nombre);
            }

            // Cerrar recursos
            resultado.close();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            // Manejar la excepción (puedes imprimir un mensaje o registrarla)
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }

        return nombres;
    }
}
