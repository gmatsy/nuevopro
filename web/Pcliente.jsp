
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    </head>
    <style>
        .alertContainer{
    width:400px;
    height:100px;
    border:10px;
    text-align:center;
    color:#fff;
    font-size:14px;
    position:fixed;
    top:50%;
    left:50%;
    margin-left:-200px;
    margin-top:-50px;
    padding:30px;
    z-index: 10000;
    border-radius:3px;
    opacity: 0;
    transform: translateY(-50px);
    transition:all ease .3s;
}
.alertContainer.error{
    background:rgb(202, 80, 80);;
}
.alertContainer.warning{
    background:#FB9E57;
}
.alertContainer.info{
    background:#847DA2;
}
.alertContainer .cerrarAlert{
    position: absolute;
    width:20px;
    height:20px;
    border-radius:100px;
    background:#3a3a3a;
    border:2px solid #fff;
    text-align: center;
    line-height: 12px;
    top:-10px;
    right:-10px;
    box-shadow: 0px 0px 10px -2px #333;
    cursor: pointer;
    font-family:'Lato', sans-serif;
}
.alertContainer.active{
    transform: translateY(0px);
    opacity: 1;
}
.alertContainer .mensajeAlert{
    font-size:16px;
    vertical-align: middle;
    display: inline-block;
    font-family:'Lato', sans-serif;
    text-transform: capitalize;
}
    </style>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/head.jspf" %>
            <%@include file="WEB-INF/jspf/navusuario.jspf" %>
            <section>
                <div class="bienvenida" style="font-style: arial; font-size: 20px; color: blue; text-transform: capitalize">
                    Bienvenido:&nbsp;<%=usuario.getNombre()+" "+usuario.getApellido()%>
                     <a style="text-decoration: none" href="perfil.jsp?correo='<%=usuario.getCorreo()%>'"  role="button" aria-pressed="true"><i class="fas fa-sign-in-alt"></i>&nbsp;Ver Perfil</a>   
                </div>
                <section>
               <%@include file="WEB-INF/jspf/ccarrusel.jspf" %> 
            </section>
            </section>
            
            <%@include file="WEB-INF/jspf/nav2.jspf" %>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <script>
function alert(msg, type){
    var html =  '<div class="alertContainer '+type+'">\n';
    html +=     '   <div class="mensajeAlert">'+msg+'</div>\n';
    html +=     '   <div class="cerrarAlert">x</div>\n';
    html +=     '</div>';
    jQuery('body').append(html);
    window.setTimeout(function(){jQuery('.alertContainer').addClass('active')}, 500);
    jQuery('.cerrarAlert').click(function(){
        jQuery('.alertContainer').removeClass('active');
        window.setTimeout(function(){jQuery('.alertContainer').remove()}, 500);
    });
}

alert("Hola <%=usuario.getNombre()+" "+usuario.getApellido()%>",'error');
        </script>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
