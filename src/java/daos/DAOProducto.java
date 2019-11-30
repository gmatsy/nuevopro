
package daos;
import conexion.ConexionBD;
import dtos.Producto;
import interfaces.IOperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOProducto implements IOperacionesBD<Producto>{
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
      private static final String SQL_SELECTALL= "select id_prod,nombre_prod,precio from producto";
    private static final String SQL_SELECTBYID="select * from producto where id_prod=?";

    @Override
    public boolean insert(Producto t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Producto t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean resta(Producto r) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Producto> selectAll() {
        ArrayList<Producto> producto = new ArrayList<>();
        try {
           pstm = con.getCon().prepareStatement(SQL_SELECTALL);
           res = pstm.executeQuery();
           
           while(res.next()){
           producto.add(new Producto(res.getInt(1) ,res.getString(2), res.getInt(3)));
           }

        } catch (Exception e) {
            System.out.println("Error al seleccionar :"+e.getMessage());
            e.printStackTrace();
        } finally {
            cerrarConexion();

        }
        return producto;
    }

    public Producto seleTById(String id) {
         Producto producto=null;
        try {
            pstm = con.getCon().prepareStatement(SQL_SELECTBYID);
            pstm.setInt(1, Integer.parseInt(id.toString()));
            res = pstm.executeQuery();
            while(res.next()){
            producto=new Producto(res.getInt(1), res.getString(2), res.getInt(3), res.getInt(4));
            }
            
        } catch (Exception e) {
            System.out.println("Error al consultar por id");
            e.printStackTrace();
        }
        finally{
        cerrarConexion();
        }
        return producto;
    }
    

    @Override
    public Producto seleTById(Object id) {
          Producto producto=null;
        try {
            pstm = con.getCon().prepareStatement(SQL_SELECTBYID);
            pstm.setInt(1, Integer.parseInt(id.toString()));
            res = pstm.executeQuery();
            while(res.next()){
            producto=new Producto(res.getInt(1), res.getString(2), res.getInt(3), res.getInt(4));
            }
            
        } catch (Exception e) {
            System.out.println("Error al consultar por id");
            e.printStackTrace();
        }
        finally{
        cerrarConexion();
        }
        return producto;
    }

    @Override
    public ArrayList<Producto> selectByName(String name) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
    
}
