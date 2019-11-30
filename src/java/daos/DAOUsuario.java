/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import conexion.ConexionBD;
import dtos.Usuario;
import interfaces.IOperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 *
 * @author c19255
 */
public class DAOUsuario implements IOperacionesBD<Usuario> {
    // UTILIZANDO LA API JDBC
    // Preparestatement - Sirve para poner y ejecutar la 
    // consulta en la BD

    private static PreparedStatement pstm = null;
    /* Resultset - Sirve los datos luego de realizar 
     una consulta a la base de datos
     */
    private static ResultSet res = null;
    // Genera la instancia de conexion a la BD
    ConexionBD con = ConexionBD.generarInstancia();

    // GENERAR CONSULTA SQL A LA BD
    private static final String SQL_INSERT = "insert into usuario values(?,?,?,?,?,?,?,?)";
    private static final String SQL_UPDATE="update usuario set nombre=?,apellido=?,correo=?,clave=?,perfil=?,estado=? where id=?";
    private static final String SQL_LOGIN="select nombre,apellido,perfil,estado,correo from usuario where correo=? and clave=?";
    private static final String SQL_SELECTALL= "select id,nombre,correo from usuario";
    private static final String SQL_SELECTBYID="select * from usuario where id=?";
    private static final String SQL_SELECTBYNAME="{call pa_buscarusuarionombre(?)}";
    private static final String SQL_REC="select correo,clave from usuario where correo=? and nombre=? and apellido=? and color=?";
    private static final String SQL_UPD="update usuario set clave=? where correo=?";
    private static final String SQL_PERFIL="select*from usuario where correo=?";
      
    public Usuario login(Usuario usuario){
        Usuario usuarioAux=null;
        try {
            pstm=con.getCon().prepareStatement(SQL_LOGIN);
            pstm.setString(1,usuario.getCorreo());
            pstm.setString(2,usuario.getClave());
            res = pstm.executeQuery();
            while(res.next()){
            usuarioAux = new Usuario(res.getString(1),res.getString(2),res.getString(3),res.getInt(4),res.getString(5));
            }
            
        } catch (Exception e) {
            System.out.println("Error en el login :"+e.getMessage());
            e.printStackTrace();
        }
        finally{
            cerrarConexion();
        }
     return usuarioAux;
    
    }
    
    
    
    @Override
    public boolean insert(Usuario t) {
        boolean result=false;
        try {
           pstm = con.getCon().prepareStatement(SQL_INSERT);
           pstm.setString(1, t.getNombre());
           pstm.setString(2, t.getApellido());
           pstm.setString(3, t.getCorreo());
           pstm.setString(4, t.getClave());
           pstm.setString(5, t.getColor());
           pstm.setString(6, t.getSexo());
           pstm.setString(7, t.getPerfil());
           pstm.setInt(8, t.getEstado()); 
           
           if(pstm.executeUpdate()>0){
               result=true;
           }
           
        } catch (Exception e) {
            System.out.println("Error al insertar :"+e.getMessage());
            e.printStackTrace();
        } finally {            
           cerrarConexion();
        }
      return result;
    }

    @Override
    public boolean update(Usuario t) {
        boolean result=false;
        try {
           pstm = con.getCon().prepareStatement(SQL_UPDATE);
           pstm.setString(1,t.getNombre());
           pstm.setString(2,t.getApellido());
           pstm.setString(3,t.getCorreo());
           pstm.setString(4,t.getClave());
           pstm.setString(5,t.getPerfil());
           pstm.setInt(6,t.getEstado());
           pstm.setInt(7,t.getId());
           if(pstm.executeUpdate()>0){
           result = true;
           }
        } catch (Exception e) {
            System.out.println("Error al actualizar:"+e.getMessage());
            e.printStackTrace();
        }
        finally{
         cerrarConexion();
        
        }
     return result;
        
    }


    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Usuario> selectAll() {
        ArrayList<Usuario> usuarios = new ArrayList<>();
        try {
           pstm = con.getCon().prepareStatement(SQL_SELECTALL);
           res = pstm.executeQuery();
           
           while(res.next()){
           usuarios.add(new Usuario(res.getInt(1),res.getString(2),res.getString(3)));
           }

        } catch (Exception e) {
            System.out.println("Error al seleccionar :"+e.getMessage());
            e.printStackTrace();
        } finally {
            cerrarConexion();

        }
        return usuarios;
    }

    @Override
    public Usuario seleTById(Object id) {
        Usuario usuario=null;
        try {
            pstm = con.getCon().prepareStatement(SQL_SELECTBYID);
            pstm.setInt(1, Integer.parseInt(id.toString()));
            res = pstm.executeQuery();
            while(res.next()){
            usuario=new Usuario(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),res.getString(6),res.getString(7),res.getString(8),res.getInt(9));
            }
            
        } catch (Exception e) {
            System.out.println("Error al consultar por id");
            e.printStackTrace();
        }
        finally{
        cerrarConexion();
        }
        return usuario;
    }

    @Override
    public ArrayList<Usuario> selectByName(String name) {
        ArrayList<Usuario> usuarios = new ArrayList<>();
        try {
            pstm=con.getCon().prepareCall(SQL_SELECTBYNAME);
            pstm.setString(1, name);
            res = pstm.executeQuery();
            while (res.next()) {                
                usuarios.add(new Usuario(res.getInt(1),res.getString(2),res.getString(3)));
            }
        } catch (Exception e) {
            System.out.println("Error al seleccionar por nombre"+e.getMessage());
            e.printStackTrace();
        }
        finally{
        cerrarConexion();
        }
        return usuarios;
    }

    @Override
    public void cerrarConexion() {

        try {
            if(res!=null){
                res.close();
            }
            if(pstm!=null){
                pstm.close();
            }
            if(con!=null){
                con.cerrarConexion();
            }
        } catch (Exception e) {
            System.out.println("Error al cerrar :"+e.getMessage());
            e.printStackTrace();
        }
        
        

    }

    
      public Usuario perfil(Usuario usuario){
        Usuario usuarioAux=null;
        try {
            pstm=con.getCon().prepareStatement(SQL_REC);
            pstm.setString(1,usuario.getCorreo());
            res = pstm.executeQuery();
            while(res.next()){
            usuarioAux = new Usuario(res.getString(1),res.getString(2));
            }
            
        } catch (Exception e) {
            System.out.println("Error en el login :"+e.getMessage());
            e.printStackTrace();
        }
        finally{
            cerrarConexion();
        }
     return usuarioAux;
    
    }
     public boolean resta(Usuario r) {
        boolean result=false;
        try {
           pstm = con.getCon().prepareStatement(SQL_UPD);
           pstm.setString(1,r.getClave());
           if(pstm.executeUpdate()>0){
           result = true;
           }
        } catch (Exception e) {
            System.out.println("Error al actualizar:"+e.getMessage());
            e.printStackTrace();
        }
        finally{
         cerrarConexion();
        
        }
     return result;
        
    }

   public Usuario recuperar(Usuario usuario){
        Usuario usuarioAux=null;
        try {
            pstm=con.getCon().prepareStatement(SQL_REC);
            pstm.setString(1,usuario.getCorreo());
            pstm.setString(2,usuario.getNombre());
            pstm.setString(3,usuario.getApellido());
            pstm.setString(4, usuario.getColor());
            res = pstm.executeQuery();
            while(res.next()){
            usuarioAux = new Usuario(res.getString(1),res.getString(2));
            }
            
        } catch (Exception e) {
            System.out.println("Error en el login :"+e.getMessage());
            e.printStackTrace();
        }
        finally{
            cerrarConexion();
        }
     return usuarioAux;
    
    }
    
    public Usuario Recuperar(Usuario usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
