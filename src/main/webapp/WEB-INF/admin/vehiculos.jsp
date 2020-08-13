<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<jsp:include page="../includes/head.jsp" />
	
<title>Balay Template</title>

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
				<form id="formulario" action="<c:url value='/admin/vehiculos'/>"
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
				
					<table id="dtBasicExample" class="table table-sm table-bordered table-dark
					action="<c:url value='/admin/vehiculos'/>""
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
	
	<script>
	$(document).ready(function() {
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>
</body>
</html>

