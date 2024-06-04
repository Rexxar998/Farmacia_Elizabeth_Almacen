/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao.entity;

/**
 *
 * @author casa
 */
public class DetalleOrden {
    int secuencia_detalle_orden;
    String nombre_prod;
    String tipo_prod;
    int cantidad;
    double precioCompra;
    double subtotal;
    double igv;
    double totalProduct;

    public DetalleOrden(int secuencia_detalle_orden, String nombre_prod, String tipo_prod, int cantidad, double precioCompra, double subtotal, double igv, double totalProduct) {
        this.secuencia_detalle_orden = secuencia_detalle_orden;
        this.nombre_prod = nombre_prod;
        this.tipo_prod = tipo_prod;
        this.cantidad = cantidad;
        this.precioCompra = precioCompra;
        this.subtotal = subtotal;
        this.igv = igv;
        this.totalProduct = totalProduct;
    }

    public DetalleOrden() {
    }

    public int getSecuencia_detalle_orden() {
        return secuencia_detalle_orden;
    }

    public void setSecuencia_detalle_orden(int secuencia_detalle_orden) {
        this.secuencia_detalle_orden = secuencia_detalle_orden;
    }

    public String getNombre_prod() {
        return nombre_prod;
    }

    public void setNombre_prod(String nombre_prod) {
        this.nombre_prod = nombre_prod;
    }

    public String getTipo_prod() {
        return tipo_prod;
    }

    public void setTipo_prod(String tipo_prod) {
        this.tipo_prod = tipo_prod;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public double getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(double totalProduct) {
        this.totalProduct = totalProduct;
    }
}
