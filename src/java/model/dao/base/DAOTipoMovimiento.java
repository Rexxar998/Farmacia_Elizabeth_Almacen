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
public interface DAOTipoMovimiento<Gen>{
    public void create(String nombre, String descripcion,String tipoMovimiento);
    public Gen read(String codigo);
    public void update(String codigo, String nombre, String descripcion, String tipoMovimiento);
    public void delete(String codigo);
    public LinkedList<Gen> list();
}
