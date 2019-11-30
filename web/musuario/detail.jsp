<%@page import="dtos.Usuario"%>
<%

Usuario usuario = (Usuario)request.getSession().getAttribute("usuario");

%>

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

                <div class="row">                    
                    <div class="col-lg-4 offset-lg-4">
                        <div><h3>Detalle usuario</h3></div>
                        <form>
                            <fieldset disabled>
                                <div class="form-group">
                                    <label for="txtId">Id</label>
                                    <input type="text" id="txtId" name="txtId" value=<%=usuario.getId()%> class="form-control" placeholder="Disabled input">
                                </div>
                                <div class="form-group">
                                    <label for="txtNombre">Nombre</label>
                                    <input type="text" id="txtNombre" name="txtNombre" value=<%=usuario.getNombre()%> class="form-control" placeholder="Disabled input">
                                </div>
                                <div class="form-group">
                                    <label for="txtApellido">Apellido</label>
                                    <input type="text" id="txtApellido" name="txtApellido" value=<%=usuario.getApellido()%>  class="form-control" placeholder="Disabled input">
                                </div>
                                <div class="form-group">
                                    <label for="txtCorreo">Correo</label>
                                    <input type="text" id="txtCorreo" name="txtCorreo" value=<%=usuario.getCorreo()%>  class="form-control" placeholder="Disabled input">
                                </div>
                                
                                
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </fieldset>
                        </form>
                    </div>                  
                </div>

            </section>
        </div>
        <%@include file="../WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
