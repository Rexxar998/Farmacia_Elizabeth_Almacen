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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.dao.entity.Proveedor;
import model.dao.base.DAOProveedor;
import utilidades.Conexion;

/**
 *
 * @author casa
 */
public class ProveedorDAO implements DAOProveedor<Proveedor> {

    @Override
    public void create(String ruc, String razonSocial, String direccion, String telefono, String correo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "insert into Proveedor (ruc,razonSocial,direccion,telefono,correo) values(?,?,?,?,?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            
            if(validarDatosProveedor(ruc,telefono,correo))
            {
            sentencia.setString(1, ruc);
            sentencia.setString(2, razonSocial);
            sentencia.setString(3, direccion);
            sentencia.setString(4, telefono);
            sentencia.setString(5, correo);
            //Si se cumple con las condiciones se capturan los datos y se cierra la conexión
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
      public boolean validarDatosProveedor(String ruc,String telf,String correo){
        boolean state = true;
        
        //Validando RUC
        
        
        //Validando RUC (longitud, caracteres iniciales como 10 y 20)
        if((ruc.trim().length() != 11) || !(ruc.matches("[0-9]+")) || (!(ruc.trim().substring(0, 2).equals("10"))
                && !(ruc.trim().substring(0, 2).equals("20")))){
           System.out.println("¡RUC Invalido!");
           state = false;
        }
        //Validando longitud y caracteres del telefono
        if((telf.trim().length() != 9) || !(telf.matches("[0-9]+"))){
           System.out.println("Telefono Invalido");
           state = false;
        }
        
        //Validando formato correo
        
        Pattern p = Pattern.compile("[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\\.[a-zA-Z]");
        Matcher mt = p.matcher(correo);
        
        if (!(mt.find())){
            state = false;
        }
        
        return state;
    }
    
    
    
    
  
    @Override
    public Proveedor read(String idLaboratorio) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Proveedor where idLaboratorio = '" + idLaboratorio + "';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            if (resultado.next()) {
                Proveedor prov = new Proveedor();
                prov.setIdLaboratorio(resultado.getInt("idLaboratorio"));
                prov.setRuc(resultado.getString("ruc"));
                prov.setRazonSocial(resultado.getString("razonSocial"));
                prov.setDireccion(resultado.getString("direccion"));
                prov.setTelefono(resultado.getString("telefono"));
                prov.setCorreo(resultado.getString("correo"));
                sentencia.close();
                cnx.close();
                return prov; // Devuelve el objeto Proveedor creado con los datos.
            }
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void update(String idLaboratorio,String ruc, String razonSocial, String direccion, String telefono, String correo) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "update Proveedor set razonSocial=?, direccion=?,telefono=?,correo=?, ruc=? where idLaboratorio=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, razonSocial);
            sentencia.setString(2, direccion);
            sentencia.setString(3, telefono);
            sentencia.setString(4, correo);
            sentencia.setString(5, ruc);
            sentencia.setString(6, idLaboratorio);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void delete(String idLaboratorio) {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "delete from Proveedor where idLaboratorio=?";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, idLaboratorio);
            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public LinkedList<Proveedor> list() {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Proveedor;";
            LinkedList<Proveedor> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Proveedor prov = new Proveedor();
                prov.setIdLaboratorio(resultado.getInt("idLaboratorio"));
                prov.setRuc(resultado.getString("ruc"));
                prov.setRazonSocial(resultado.getString("razonSocial"));
                prov.setDireccion(resultado.getString("direccion"));
                prov.setTelefono(resultado.getString("telefono"));
                prov.setCorreo(resultado.getString("correo"));
                lista.add(prov);
            }
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProveedorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public List<Proveedor> buscarProveedor(String razonSocial) throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "select * from Proveedor where razonSocial like '%" + razonSocial + "%';";
            List<Proveedor> lista = new LinkedList<>();
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);

            while (resultado.next()) {
                Proveedor prov = new Proveedor();
                prov.setIdLaboratorio(resultado.getInt("idLaboratorio"));
                prov.setRuc(resultado.getString("ruc"));
                prov.setRazonSocial(resultado.getString("razonSocial"));
                prov.setDireccion(resultado.getString("direccion"));
                prov.setTelefono(resultado.getString("telefono"));
                prov.setCorreo(resultado.getString("correo"));
                lista.add(prov);
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
