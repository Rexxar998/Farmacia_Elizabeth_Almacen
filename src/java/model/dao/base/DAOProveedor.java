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
public interface DAOProveedor<Gen> {
    public void create(String ruc, String razonSocial, String direccion, String telefono, String correo);
    public Gen read(String idLaboratorio);
    public void update(String idLaboratorio,String ruc, String razonSocial, String direccion, String telefono, String correo);
    public void delete(String idLaboratorio);
    public LinkedList<Gen> list();
}
