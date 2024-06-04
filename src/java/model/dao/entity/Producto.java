package model.dao.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import utilidades.Conexion;

/**
 *
 * @author casa
 */
public class Producto {

    private int codigo;
    private String tipoProducto;
    private String nombre;
    private String descripcion;
    private int cantidad;
    private String estado;

    public Producto() {

    }

    public Producto(int codigo, String tipoProducto, String nombre, String descripcion,int cantidad, String estado) {
        this.codigo = codigo;
        this.tipoProducto = tipoProducto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.cantidad=cantidad;
        this.estado = estado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

}