/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dao.entity.TipoMovimiento;
import model.dao.base.DAOTipoMovimiento;
import utilidades.Conexion;

/**
 *
 * @author casa
 */
public class TipoMovimientoDAO implements DAOTipoMovimiento<TipoMovimiento>{  

    @Override
    public void create(String nombre, String descripcion, String tipoMovimiento) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "insert into TipoMovimiento (nombre,descripcion,tipoMovimiento) values(?,?,?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setString(2, descripcion);
            sentencia.setString(3, tipoMovimiento);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TipoMovimientoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public TipoMovimiento read(String codigo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from TipoMovimiento where codigo = '" + codigo + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            if (resultado.next()) {
                TipoMovimiento tm = new TipoMovimiento();
                tm.setCodigo(resultado.getInt("codigo"));
                tm.setNombre(resultado.getString("nombre"));
                tm.setDescripcion(resultado.getString("descripcion"));
                tm.setTipoMovimiento(resultado.getString("tipoMovimiento"));
                sentencia.close();
                cnx.close();
                return tm; // Devuelve el objeto Proveedor creado con los datos.
            }
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TipoMovimientoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(String codigo, String nombre, String descripcion, String tipoMovimiento) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();     
            int cod=Integer.parseInt(codigo);
            String query = "update TipoMovimiento set nombre=?,descripcion=?,tipoMovimiento=? where codigo=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);            
            sentencia.setString(1, nombre);
            sentencia.setString(2, descripcion);
            sentencia.setString(3, tipoMovimiento);
            sentencia.setInt(4, cod);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TipoMovimientoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String codigo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from TipoMovimiento where codigo=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, codigo);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TipoMovimientoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public LinkedList<TipoMovimiento> list() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from TipoMovimiento;";
            LinkedList<TipoMovimiento> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                TipoMovimiento tm = new TipoMovimiento();
                tm.setCodigo(resultado.getInt("codigo"));
                tm.setNombre(resultado.getString("nombre"));
                tm.setDescripcion(resultado.getString("descripcion"));
                tm.setTipoMovimiento(resultado.getString("tipoMovimiento"));   
                lista.add(tm);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TipoMovimientoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    
    public List<TipoMovimiento> buscarMovimiento(String nombre) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from TipoMovimiento where nombre like '%" + nombre + "%';";
            List<TipoMovimiento> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                TipoMovimiento tm = new TipoMovimiento();
                tm.setCodigo(resultado.getInt("codigo"));
                tm.setNombre(resultado.getString("nombre"));
                tm.setDescripcion(resultado.getString("descripcion"));
                tm.setTipoMovimiento(resultado.getString("tipoMovimiento"));
                lista.add(tm);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return null;
    }
 
}
