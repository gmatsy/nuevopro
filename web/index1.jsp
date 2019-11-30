
<%@page import="dtos.Usuario"%>
<% 
Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
String perfil=usuario.getPerfil();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
             <%@include file="WEB-INF/jspf/head.jspf" %>
            <%@ include file="WEB-INF/jspf/navusuario.jspf"%>
            <section>
                <section>
                <div class="bienvenida" style="font-style: arial; font-size: 20px; color: blue; text-transform: capitalize">
                    Bienvenido:&nbsp;<%=usuario.getNombre()+" "+usuario.getApellido()%>
                     <a style="text-decoration: none" href="perfil.jsp?correo='<%=usuario.getCorreo()%>'"  role="button" aria-pressed="true"><i class="fas fa-sign-in-alt"></i>&nbsp;Ver Perfil</a>
                </div>
                </section>
               <%@include file="WEB-INF/jspf/ccarrusel.jspf" %> 
            </section>
               <%@include file="WEB-INF/jspf/nav2.jspf" %>
 <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br> <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
                        <br>
            <br>
            <br>
            <br>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
               
        </div>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>