<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <%@include file="../WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="../WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="../WEB-INF/jspf/head.jspf" %>
            <%@include file="../WEB-INF/jspf/cnavadm.jspf" %>
            <section>
                <div class="buscar">
                    <div class="col-lg-4 offset-lg-2">
                        <form class="needs-validation" novalidate>
                            <div class="form-row">
                                <label for="validationTooltipUsername">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="validationTooltipUsernamePrepend"><i class="fas fa-search"></i></span>
                                    </div>
                                    <input type="text" onkeyup="buscarUsuario()" class="form-control" id="txtBuscarNombre" placeholder="Username" aria-describedby="validationTooltipUsernamalidationTooltipUsernameePrepend" required>
                                    <a href="musuario/create.jsp" class="btn btn-primary">Añadir</a>
                                </div>
                            </div>
                    </div> 
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th colspan="3">Operaciones</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th colspan="3">Operaciones</th>
                                </tr>
                            </tfoot> 
                            <tbody id="registros" class="registros">
                                <c:forEach var="usuario" items="${sessionScope.lista}">

                                    <tr>
                                        <td>${usuario.id}</td>
                                        <td>${usuario.nombre}</td>
                                        <td>${usuario.correo}</td>
                                        <td><a href="<%=request.getContextPath()%>/usuariocontroller.do?accion=detalle&txtId=${usuario.id}" class="btn btn-warning" role="button" aria-pressed="true"><small>Detalle</small></a></td>
                                        <td><a href="musuario/update.jsp?id='${usuario.id}'" class="btn btn-primary" role="button" aria-pressed="true"><small>Actualizar</small></a></td>
                                        <td><a href="musuario/Delete.jsp?id='${usuario.id}'" class="btn btn-danger" role="button" aria-pressed="true"><small>Eliminar</small></a></td>
                                    </tr>

                                </c:forEach>

                            </tbody>

                        </table>
                    </div>
                </div>
            </section>
          
        </div>
        <%@include file="../WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
