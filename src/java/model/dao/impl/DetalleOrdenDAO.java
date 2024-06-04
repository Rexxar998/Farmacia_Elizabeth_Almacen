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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.dao.base.DAODetalleOrden;
import model.dao.entity.DetalleOrden;
import utilidades.Conexion;

/**
 *
 * @author casa
 */
public class DetalleOrdenDAO implements DAODetalleOrden<DetalleOrden> {

    @Override
    public void create(String nombre, String tipoProducto, String cantidad, String precio) {
        try {
            // Calcular subtotal, igv y totalProducto
            double cantidadDouble = Double.parseDouble(cantidad);
            double precioDouble = Double.parseDouble(precio);
            double subtotal = cantidadDouble * precioDouble;
            double igv = subtotal * 0.18; // Suponiendo un IGV del 18%
            double totalProducto = subtotal + igv;

            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            // Insertar en la base de datos con los valores calculados
            String query = "INSERT INTO detalleOrden (nombreProd, tipoProd, cantidad, precioCompra, subtotal, igv, totalProduct) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setString(2, tipoProducto);
            sentencia.setString(3, cantidad);
            sentencia.setString(4, precio);
            sentencia.setDouble(5, subtotal);
            sentencia.setDouble(6, igv);
            sentencia.setDouble(7, totalProducto);

            sentencia.executeUpdate();

            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NumberFormatException e) {
            System.out.println("Error de formato en cantidad o precio: " + e.getMessage());
        }
    }

    @Override
    public DetalleOrden read(String secuencia_detalle_orden) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from detalleOrden where secuencia_detalle_orden = '" + secuencia_detalle_orden + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            if (resultado.next()) {
                DetalleOrden det = new DetalleOrden();
                det.setSecuencia_detalle_orden(resultado.getInt("secuencia_detalle_orden"));
                det.setNombre_prod(resultado.getString("nombreProd"));
                det.setTipo_prod(resultado.getString("tipoProd"));
                det.setCantidad(resultado.getInt("cantidad"));
                det.setPrecioCompra(resultado.getDouble("precioCompra"));
                det.setSubtotal(resultado.getDouble("subtotal"));
                sentencia.close();
                cnx.close();
                return det; // Devuelve el objeto Producto creado con los datos.
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
    public void update(String secuencia_detalle_orden,String cantidad, String precio) {
        try {
            // Calcular subtotal, igv y totalProducto
            double cantidadDouble = Double.parseDouble(cantidad);
            double precioDouble = Double.parseDouble(precio);
            double subtotal = cantidadDouble * precioDouble;
            double igv = subtotal * 0.18; // Suponiendo un IGV del 18%
            double totalProducto = subtotal + igv;

            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            // Insertar en la base de datos con los valores calculados
            String query = "update detalleOrden set cantidad=?, precioCompra=?, subtotal=?, igv=?, totalProduct=? where secuencia_detalle_orden=? ";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, cantidad);
            sentencia.setString(2, precio);
            sentencia.setDouble(3, subtotal);
            sentencia.setDouble(4, igv);
            sentencia.setDouble(5, totalProducto);
            sentencia.setString(6, secuencia_detalle_orden);

            sentencia.executeUpdate();

            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NumberFormatException e) {
            System.out.println("Error de formato en cantidad o precio: " + e.getMessage());
        }
    }
    
    public void editar(String secuencia_detalle_orden, String nombre, String tipoProducto) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();

            // Insertar en la base de datos con los valores calculados
            String query = "update detalleOrden set nombreProd=?, tipoProd=? where secuencia_detalle_orden=? ";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, nombre);
            sentencia.setString(2, tipoProducto);
            sentencia.setString(3, secuencia_detalle_orden);

            sentencia.executeUpdate();

            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NumberFormatException e) {
            System.out.println("Error de formato en cantidad o precio: " + e.getMessage());
        }
    }
    
    @Override
    public void delete(String secuencia_detalle_orden) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from detalleOrden where secuencia_detalle_orden=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, secuencia_detalle_orden);
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
    public LinkedList<DetalleOrden> list() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from detalleOrden;";
            LinkedList<DetalleOrden> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                DetalleOrden d = new DetalleOrden();
                d.setSecuencia_detalle_orden(resultado.getInt("secuencia_detalle_orden"));
                d.setNombre_prod(resultado.getString("nombreProd"));
                d.setTipo_prod(resultado.getString("tipoProd"));
                d.setCantidad(resultado.getInt("cantidad"));
                d.setPrecioCompra(resultado.getDouble("precioCompra"));
                d.setSubtotal(resultado.getDouble("subtotal"));
                d.setIgv(resultado.getDouble("igv"));
                d.setTotalProduct(resultado.getDouble("totalProduct"));
                lista.add(d);
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

}
