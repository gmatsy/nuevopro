<% 
String mensaje= (String)request.getSession().getAttribute("mensaje");
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
                                   Información
                                </div>
                                <div class="card-body">
                                    <p class="card-text"><%=mensaje%></p>
                                    <a href="login.jsp" class="btn btn-primary">llevame a logearme</a>
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
