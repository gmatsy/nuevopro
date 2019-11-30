/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.ArrayList;

/**
 *
 * @author c19255
 */
// INTERFAZ CON DATO GENERICO
public interface IOperacionesBD <T>{
   
    // OPERACIONES QUE MODIFICAN EL ESTADO EN LA BD
    public abstract boolean insert(T t);
    public abstract boolean update(T t);
    public abstract boolean resta(T r);
    public abstract boolean delete(Object id);
    
    // OPERACIONES QUE NO MODIFICAN EL ESTADO EN LA BD
    public abstract ArrayList<T> selectAll();
    public abstract T seleTById(Object id);
    public abstract ArrayList<T> selectByName(String name);
    
    // METODOS UTILITARIOS
    
    public abstract void cerrarConexion();
    
            
    
    
    
}
