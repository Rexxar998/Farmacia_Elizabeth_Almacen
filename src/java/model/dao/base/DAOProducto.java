
package model.dao.base;

import java.util.LinkedList;

/**
 *
 * @author Estudiante
 * @param <Gen>
 */
public interface DAOProducto<Gen> {
    public void create(String tipo, String nombre, String descripcion,String cantidad);
    public Gen read(String codigo);
    public void update(String codigo, String tipo, String nombre, String descripcion,String cantidad, String estado);
    public void delete(String codigo);
    public LinkedList<Gen> list();
}
