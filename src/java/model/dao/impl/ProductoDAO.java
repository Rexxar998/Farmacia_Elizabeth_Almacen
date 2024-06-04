/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao.impl;

import java.awt.Window;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.dao.entity.Producto;
import utilidades.Conexion;
import model.dao.base.DAOProducto;

/**
 *
 * @author casa
 */
public class ProductoDAO implements DAOProducto<Producto> {

    @Override
    public void create(String tipo, String nombre, String descripcion, String cantidad) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "insert into producto (idTipoProducto,nombre,descripcion,cantidad) values(?,?,?,?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, tipo);
            sentencia.setString(2, nombre);
            sentencia.setString(3, descripcion);
            sentencia.setString(4, cantidad);
            if(validarDatosProducto(nombre,cantidad,descripcion) == true){
                  sentencia.setString(2, nombre);
                  sentencia.setString(3, descripcion);
                  sentencia.setString(4, cantidad);
                  //Si no se cumple con las condiciones, no se captura los datos ni se cierra la conexión 
                  sentencia.executeUpdate();
                  sentencia.close();
                  cnx.close();    
            }
        
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean validarDatosProducto(String nombre,String cant,String descripcion){
        boolean state = true;
        int ct = Integer.parseInt(cant);
        if(ct <= 0){
           System.out.println("¡Cantidad por debajo de lo esperado!");
           state = false;
        }
        if((nombre.trim().length() > 20) || (descripcion.trim().length() > 50)){
           System.out.println("¡Cantidad de caracteres excedida!");
           state = false;
        }
        return state;
    }

    @Override
    public void update(String codigo, String tipo, String nombre, String descripcion, String cantidad, String estado) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int cod = Integer.parseInt(codigo);
            int cnt = Integer.parseInt(cantidad);
            String query = "update producto set idTipoProducto=?, nombre=?,descripcion=?,cantidad=?,estado=? where codigo=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, tipo);
            sentencia.setString(2, nombre);
            sentencia.setString(3, descripcion);
            sentencia.setInt(4, cnt);
            sentencia.setString(5, estado);
            sentencia.setInt(6, cod);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String codigo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from Producto where codigo=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, codigo);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Producto read(String codigo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Producto where codigo = '" + codigo + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            if (resultado.next()) {
                Producto prod = new Producto();
                prod.setCodigo(resultado.getInt("codigo"));
                prod.setTipoProducto(resultado.getString("idTipoProducto"));
                prod.setNombre(resultado.getString("nombre"));
                prod.setDescripcion(resultado.getString("descripcion"));
                prod.setCantidad(resultado.getInt("cantidad"));
                prod.setEstado(resultado.getString("estado"));
                sentencia.close();
                cnx.close();
                return prod; // Devuelve el objeto Producto creado con los datos.
            }
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public LinkedList<Producto> list() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Producto;";
            LinkedList<Producto> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Producto p = new Producto();
                p.setCodigo(resultado.getInt("codigo"));
                p.setTipoProducto(resultado.getString("idTipoProducto"));
                p.setNombre(resultado.getString("nombre"));
                p.setDescripcion(resultado.getString("descripcion"));
                p.setCantidad(resultado.getInt("cantidad"));
                p.setEstado(resultado.getString("estado"));
                lista.add(p);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public List<Producto> buscarProductos(String nombre) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Producto where nombre like '%" + nombre + "%';";
            List<Producto> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Producto p = new Producto();
                p.setCodigo(resultado.getInt("codigo"));
                p.setTipoProducto(resultado.getString("idTipoProducto"));
                p.setNombre(resultado.getString("nombre"));
                p.setDescripcion(resultado.getString("descripcion"));
                p.setCantidad(resultado.getInt("cantidad"));
                p.setEstado(resultado.getString("estado"));
                lista.add(p);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }
    
    public List<String> obtenerNombresProductos() {
        List<String> nombres = new ArrayList<>();

        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "SELECT nombre FROM Producto;";
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
