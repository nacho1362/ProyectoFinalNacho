<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs4/dt-1.10.21/b-1.6.2/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/v/bs4/dt-1.10.21/b-1.6.2/datatables.min.js"></script>
<title>Balay Template</title>
<script>
	$(document).ready(function() {
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../balay/css/owl.carousel.min.css">
<link rel="stylesheet" href="../balay/css/style.css">

</head>
<body background="https://cdn.pixabay.com/photo/2016/07/23/11/57/road-1536748_960_720.jpg" style="margin: 0; padding: 0; background-size: cover;">
	<div class="container">
		<div class="row" style="margin-top: 30px">
			<div class="col-2">
				<div id="colorlib-page">
					<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
					<aside id="colorlib-aside" role="complementary">
						<h1 id="colorlib-logo">
							<a href="index.html">Trasnport JC</a>
						</h1>
						<nav id="colorlib-main-menu" role="navigation">
							<ul>
								<li class="colorlib-active"><a>Mis Vehiculos</a></li>
								<li><a href="/admin">Home</a></li>
								<li><a href="/admin/gestionDeUsuarios">Gestion de Usuarios</a></li>
								<li><a href="/">Cerrar Session</a></li>
							</ul>
						</nav>
					</aside>
				</div>
			</div>
			<div class="col-10">
				<h3>Nuevo Vehiculo</h3>
				<form id="formulario" action="<c:url value='/usuarios'/>"
					method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-sm">
							<label for="Fecha">Marca</label> <input type="text"
								class="form-control" id="Marca">
						</div>
						<div class="form-group col-sm">
							<label for="Kilometros">KM por Litro</label> <input type="number"
								class="form-control" id="kilometros">
						</div>
						<div class="form-group col-sm">
							<label for="Destino">Max. Pasajeros</label> <input type="number"
								class="form-control" id="max_Pasajeros">
						</div>
					</div>
					<button id="boton" type="submit" class="btn-sm btn-primary"
						style="margin-top: 5px;">Guardar</button>
				</form>
				
				
				
				<div style="margin-top: 20px">
				
				
				<h5>Lista Vehiculos</h5>
				
					<table id="dtBasicExample" class="table table-sm table-bordered table-dark"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th scope="col">#ID</th>
								<th scope="col">Marca</th>
								<th scope="col">Km. por Litro</th>
								<th scope="col">Max. Pasajeros</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th scope="col">#ID</th>
								<th scope="col">Marca</th>
								<th scope="col">Km. por Litro</th>
								<th scope="col">Max. Pasajeros</th>
								<th scope="col"></th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="usuario" items="${usuarios}">
								<tr>
									<th scope="row">${usuario.id}</th>
									<td>${usuario.nombre}</td>
									<td>${usuario.correo}</td>
									<td>${usuario.contrasenia}</td>
									<td><img width="100" height="100" src="<c:url value='${usuario.urlImagen}'></c:url>" class="rounded" alt="${usuario.urlImagen}" /></td>
									<td>
									<a href='javascript:actualizar(${usuario.toJson()})'>Actualizar</a> | 
									<a href='javascript:eliminar(${usuario.toJson()})'>Eliminar</a>
									
									</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				<!-- TABLA DE AUTOMOVIL # -->
			</div>
			</div>
		</div>
	</div>
</body>
</html>

