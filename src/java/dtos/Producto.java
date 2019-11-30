
package dtos;

public class Producto {
    private int id_prod;
    private String nombre_prod;
    private int precio;
    private int cant;

    public Producto() {
    }

    public Producto(int id_prod, String nombre_prod, int precio, int cant) {
        this.id_prod = id_prod;
        this.nombre_prod = nombre_prod;
        this.precio = precio;
        this.cant = cant;
    }
 public Producto(int id_prod, String nombre_prod, int precio) {
        this.id_prod = id_prod;
        this.nombre_prod = nombre_prod;
        this.precio = precio;

    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public String getNombre_prod() {
        return nombre_prod;
    }

    public void setNombre_prod(String nombre_prod) {
        this.nombre_prod = nombre_prod;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }
    
}
