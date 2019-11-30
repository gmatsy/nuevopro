/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import daos.DAOUsuario;
import dtos.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author C19255
 */
public class UsuarioController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion.equals("registrar")) {
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtCorreo");
            String clave = request.getParameter("txtPassword");
             String color = request.getParameter("txtColor");
            String sexo=request.getParameter("txtSexo");
            String perfil = "cliente";
            int estado = 1;

            Usuario usuario = new Usuario(nombre, apellido, correo, clave, color,sexo,perfil, estado);
            DAOUsuario dAOUsuario = new DAOUsuario();

            if (dAOUsuario.insert(usuario)) {
                String mensaje = "Se registro correctamente";
                request.getSession().setAttribute("mensaje", mensaje);
                request.getRequestDispatcher("exito.jsp").forward(request, response);
            } else {
            }

        } else if(accion.equals("login")) {
        
            String correo = request.getParameter("txtCorreo");
            String clave= request.getParameter("txtPassword");
            
            Usuario usuario = new Usuario(correo, clave);
            DAOUsuario dAOUsuario = new DAOUsuario();
            usuario = dAOUsuario.login(usuario);
            
            if (usuario!=null) {
                request.getSession().setAttribute("usuario",usuario);
                request.getRequestDispatcher("sistema.jsp").forward(request, response);
            } else {
                String mensaje="Usuario y/o contraseña incorrecta";
                request.getSession().setAttribute("error", mensaje);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }  
        }
        else if(accion.equals("listar")){
         
            DAOUsuario dAOUsuario = new DAOUsuario();
            ArrayList<Usuario> usuarios= new ArrayList<>();
            usuarios = dAOUsuario.selectAll();
            request.getSession().setAttribute("lista",usuarios);
            request.getRequestDispatcher("musuario/list.jsp").forward(request, response);
        
        
        }
         else if(accion.equals("detalle")){
            String id = request.getParameter("txtId");
            DAOUsuario daoUsuario = new DAOUsuario();
            Usuario usuario = daoUsuario.seleTById(id);
            request.getSession().setAttribute("usuario", usuario);
            request.getRequestDispatcher("musuario/detail.jsp").forward(request, response);
        
        }
        else if(accion.equals("recuperar")) {
        
            String correo = request.getParameter("txtCorreo");
            String nombre = request.getParameter("txtNombre");
            String apellido =request.getParameter("txtApellido");
            String color= request.getParameter("txtColor");
            Usuario usuario = new Usuario(correo,nombre,apellido,color);
            DAOUsuario dAOUsuario = new DAOUsuario();
            usuario = dAOUsuario.recuperar(usuario);
            
            if (usuario!=null) {
                request.getSession().setAttribute("usuario",usuario);
                request.getRequestDispatcher("Block.jsp").forward(request, response);
            } else {
                String mensaje="Usuario y/o contraseña incorrecta";
                request.getSession().setAttribute("error", mensaje);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }  
        }
        
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
