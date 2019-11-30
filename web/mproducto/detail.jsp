<%@page import="dtos.Producto"%>
<%

Producto producto = (Producto)request.getSession().getAttribute("producto");

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
                                    <input type="text" id="txtId" name="txtId" value=<%=producto.getId_prod()%> class="form-control" placeholder="Disabled input">
                                </div>
                                <div class="form-group">
                                    <label for="txtNombre">Nombre</label>
                                    <input type="text" id="txtNombre" name="txtNombre" value=<%=producto.getNombre_prod()%> class="form-control" placeholder="Disabled input">
                                </div>
                                <div class="form-group">
                                    <label for="txtPrecio">precio</label>
                                    <input type="text" id="txtApellido" name="txtApellido" value=<%=producto.getPrecio()%>  class="form-control" placeholder="Disabled input">
                                </div>
                                

                                <button  type="submit" class="btn btn-primary">Submit</button>
                            </fieldset>
                        </form>
                    </div>                  
                </div>

            </section>
        </div>
        <%@include file="../WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
