
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
        <form action="<%=request.getContextPath()%>/usuariocontroller.do?accion=recuperar" method="POST">
               <span class="login100-form-title p-b-59" style="text-decoration: underline;">
						Recuperar Contraseña
					</span>
           
                <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Ingrese su Correo</span>
                                                <input class="input100" id="txtCorreo" type="email" name="txtCorreo" required="email">
                                                <span class="focus-input100"></span>
                                            </div>
                 <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Ingrese su Nombre</span>
                                                <input class="input100" id="txtNombre" type="txt" name="txtNombre" required="nombre" >
                                                <span class="focus-input100"></span>
                                            </div>
               <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Ingrese su Apellido</span>
                                                <input class="input100" id="txtApellido" type="txt" name="txtApellido" required="apellido" >
                                                <span class="focus-input100"></span>
                                            </div>
               <div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate="Name is required">
						<span class="label-input100">Ingrese su Color Favorito </span>
                                                <input class="input100" id="txtColor" type="txt" name="txtColor" required="color" >
                                                <span class="focus-input100"></span>
                                            </div>

                                                    <div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
                                                        <button type="submit" class="login100-form-btn" style="background: green">
								Confirmar Datos
							</button>
						</div>
                </form>
            
                        </div>
                </div>
        </div>
                       
        
            <script src="js1/main.js"></script>
    </body>
</html>
