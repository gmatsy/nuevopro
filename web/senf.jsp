<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>Formulario de Contacto</title>

	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/font-awesome.css">

	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/script.js"></script>
</head>
<body>
	<section class="form_wrap">
		<section class="contact_info">
			<section class="info_title">
				<span class="fa fa-user-circle"></span>
				<h2>INFORMACION<br>DE CONTACTO</h2>
			</section>
			<section class="info_items">
				<p><span class="fa fa-envelope"></span> Flstudio@gmail.com</p>
				<p><span class="fa fa-mobile"></span> +51 924221132</p>
			</section>
		</section>
		<form action="" class="form_contact">
			<h2>Envia un mensaje</h2>
			<div class="user_info">
				<label for="names">Nombres *</label>
				<input type="text" id="names">

				<label for="phone">Telefono / Celular</label>
				<input type="text" id="phone">

				<label for="email">Correo electronico *</label>
				<input type="text" id="email">

				<label for="mensaje">Mensaje *</label>
				<textarea id="mensaje"></textarea>

				<input type="button" value="Enviar Mensaje" id="btnSend">
			</div>
		</form>
        </section>