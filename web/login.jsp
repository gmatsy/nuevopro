<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				 <form action="<%=request.getContextPath()%>/usuariocontroller.do?accion=login" method="POST">
                                     <span class="login100-form-title p-b-70" style="text-decoration: underline;">
						BIENVENIDO
					</span>
                                        <span class="" style="margin-left: 150px;">
                                            <img src="RESOURCES/imgs/fl/il_logo.png" alt="">
					</span>

					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter username">
                                            <input class="input100" type="email" name="txtCorreo" id="txtCorreo" >
						<span class="focus-input100" data-placeholder="Correo"></span>
                                                
					</div>

					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                                            <input class="input100" type="password" name="txtPassword" id="txtPassword">
						<span class="focus-input100" data-placeholder="Contraseña"></span>
					</div>
                                        <div class="g-recaptcha" data-sitekey="6Le1-70UAAAAANqef_uvmiLuRjf6r0iZ4XxV_BTb" style="margin-left:45px ;"></div>
                                        <br>
                                        <br>
					<div class="container-login100-form-btn">
                                            <button class="login100-form-btn" type="submit" >
							Login
						</button>
					</div>
                           
					<ul class="login-more p-t-190">
						<li class="m-b-8">
							<span class="txt1">
								Olvido su
							</span>

							<a href="recuperar.jsp" class="txt2">
								Usuario / contraseña?
							</a>
						</li>

						<li>
							<span class="txt1">
								No tiene cuenta?
							</span>

							<a href="registro.jsp" class="txt2">
								Registro
							</a>
						</li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>