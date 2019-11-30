/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author C19255
 */
// PATRON DE DISEÑO DE SOFTWARE SINGLETON

public class ConexionBD {

    private static ConexionBD instance=null;
    // INTERFACE PROVISTA POR EL API JDBC
    private static Connection con=null;
    
    //DEFINIR PARAMETROS DE INFORMACION DE LA BD
    private static final String URL="jdbc:sqlserver://flstudiodb.database.windows.net:1433;databaseName=Fl";
    private static final String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String USER="saFlstudio";
    private static final String PASS="alumnoFl1";
    //DEFINIR CONSTRUCTOR PRIVADO
    private ConexionBD(){
        try {
       // GENERANDO INSTANCIA DEL DRIVER
       Class.forName(DRIVER).newInstance();
       // ESTABLECIENDO LA CONEXION A LA BD
       con =  DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Conexion exitosa :"+con.toString());     
            
        } catch (Exception e) {
            System.out.println("Error :"+e.getMessage());
            e.printStackTrace();
        }
    }
    // METODO QUE GENERA LA INSTANCIA DE CONEXION A LA BD
    // SYNCHRONIZED PARA GENERAR UNA COLA DE SOLICITUDES A LA BD
    public synchronized static ConexionBD generarInstancia(){
    
          if(instance==null){
          instance = new ConexionBD();
          }
        
        return instance;
    
    }
    // METODO QUE RETORNA LA INSTANCIA
    public Connection getCon() {
        return con;
    }
    
    // METODO PARA CERRAR LA CONEXION
    public void cerrarConexion(){
        instance = null;
    }
    public static void main(String[] args) {
         ConexionBD.generarInstancia();
    }
  
}
