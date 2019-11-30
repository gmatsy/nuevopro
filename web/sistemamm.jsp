
<%@page import="dtos.Usuario"%>
<%
    Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
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
<%@include file="WEB-INF/jspf/cnavadm.jspf" %>
            <section>
                <div class="bienvenida">
                    Bienvenido:<%=usuario.getNombre() + " " + usuario.getApellido()%>
                </div>
                <div class="modulos">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="card text-center">
                                <div class="card-header">
                                    <ul class="nav nav-tabs card-header-tabs">
                                        <center>
                                        <li class="nav-item ">
                                            <a class="nav-link active" href="sistemamm.jsp">Modulo Mantenimientos</a>
                                        </li>
                                        </center>
                                    </ul>
                                </div>
                                <div class="card-body" id="card_body">
                                    <h5 class="card-title">Modulo de Mantenimiento</h5>
                                    <p class="card-text">En este modulo usted podrá editar,eliminar,actualizar,listar 
                                        los registro que se encuentran en la base de datos del sistema
                                    </p>
                                    <a href="<%=request.getContextPath()%>/usuariocontroller.do?accion=listar" class="btn btn-primary">Usuarios</a>
                                    <a href="<%=request.getContextPath()%>/ProductoController?accion=listar" class="btn btn-primary">Productos</a>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <%@include file="WEB-INF/jspf/caside.jspf" %>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
