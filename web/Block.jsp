<%@page import="dtos.Usuario"%>
<% 
Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
        <form action="<%=request.getContextPath()%>/usuariocontroller.do?accion=resta" method="POST">
            <span class="login100-form-title p-b-59" style="text-decoration: underline;">
						Datos 
					</span>
                 <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Correo</span>
                                                <input class="input100" type="text" id="txtCorreo" name="txtCorreo"  value="<%=usuario.getCorreo()%>" readonly="readonly">
                                                <span class="focus-input100"></span>
                                            </div>
                 <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Contraseña</span>
                                                <input class="input100" type="txt" id="txtPassword" name="txtPassword" value="<%=usuario.getClave()%>" readonly="readonly">
                                                <span class="focus-input100"></span>
                                            </div>
            
                     <div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                                                        <a href="login.jsp" type="submit" class="login100-form-btn" style="background: green">
								REGRESAR AL LOGIN   
							</a>
						</div>
</form> 
                        </div>
                </div>
        </div>
    </body>

</html>
