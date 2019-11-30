<% 
String error = (String)request.getSession().getAttribute("mensaje");
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
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>       
                <div class="formulario">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-4">
                            <div class="card">
                                <div class="card-header">
                                    Error
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">A ocurrido el siguiente error :</h5>
                                    <p class="card-text">usuario o contraseña incorrecta</p>
                                    <a href="login.jsp" class="btn btn-primary">Intentar nuevamente</a>
                                </div>
                            </div>       
                        </div>
                    </div>
                </div>
            </section>
     
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
