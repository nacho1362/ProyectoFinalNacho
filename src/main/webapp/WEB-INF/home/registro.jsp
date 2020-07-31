<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V3</title>
<jsp:include page="../includes/headHome.jsp" />
</head>
<body>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form id="formulario" action="<c:url value='/usuarios'/>"
					method="post" enctype="multipart/form-data">

					<div class="form-group">
						<label for="marca">Nombre</label> <input id="nombre" name="nombre"
							type="text" class="form-control" />
					</div>
					
					<div class="form-group">
						<label for="anio">Contraseña</label> <input id="contrasenia"
							name="contrasenia" type="password" class="form-control"
							required="required" />
					</div>
					
					<div class="form-group">
						<label for="modelo">telefono</label> <input id="telefono"
							name="telefono" type="number" class="form-control" />
					</div>

					<div class="form-group">
						<label for="modelo">Correo</label> <input id="correo"
							name="correo" type="email" class="form-control" />
					</div>

					


					<button id="boton" type="submit" class="btn btn-primary">Registrarce</button>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/bootstrap/js/popper.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/daterangepicker/moment.min.js"></script>
	<script src="../vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="../vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="../js/main.js"></script>

</body>
</html>