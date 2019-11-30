/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author C19255
 */
public class Usuario {

    private int id;
    private String nombre;
    private String apellido;
    private String correo;
    private String clave;
    private String color;
    private String sexo;
    private String perfil;
    private int estado;
     


    // CONSTRUCTOR PARA EL LOGIN

    public Usuario(String correo, String clave) {
        this.correo = correo;
        this.clave = clave;
    }
    public Usuario(int id,String nombre,String correo){
        this.id=id;
        this.nombre = nombre;
        this.correo=correo;
    }

    public Usuario(String nombre, String apellido, String perfil, int estado,String correo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.perfil = perfil;
        this.estado = estado;
        this.correo=correo;
    }
    
    
    // CONSTRUCTOR PARA INSERTAR DATOS A LA BD
    public Usuario(String nombre, String apellido, String correo, String clave, String color,String sexo,String perfil, int estado) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.clave = clave;
        this.color=color;
        this.sexo=sexo;
        this.perfil = perfil;
        this.estado = estado;
      
    }
    // CONSTRUCTOR PARA ACTUALIZAR DATOS EN LA BD

    public Usuario(int id, String nombre, String apellido, String correo, String clave, String color, String sexo, String perfil, int estado) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.clave = clave;
        this.color = color;
        this.sexo = sexo;
        this.perfil = perfil;
        this.estado = estado;
    }
    

  //constructor para recuperar
    public Usuario(String correo, String nombre, String apellido,String color){
        this.correo=correo;
        this.nombre=nombre;
        this.apellido=apellido;
        this.color=color;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    
    
  
   
}
