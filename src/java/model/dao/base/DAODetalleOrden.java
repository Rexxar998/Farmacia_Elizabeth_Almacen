/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package model.dao.base;

import java.util.LinkedList;

/**
 *
 * @author casa
 * @param <Gen>
 */
public interface DAODetalleOrden <Gen>{
    public void create(String nombre, String tipoProducto, String cantidad, String precio);
    public Gen read(String secuencia_detalle_orden);
    public void update(String secuencia_detalle_orden,String cantidad, String precio);
    public void delete(String secuencia_detalle_orden);
    public LinkedList<Gen> list();
}
