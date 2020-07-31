<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<jsp:include page="../includes/head.jsp" />
	
	<title>Transport JC</title>
</head>
<body background="https://cdn.pixabay.com/photo/2018/12/14/10/26/leaves-3874716_960_720.jpg" style="margin: 0; padding: 0; background-size: cover;">
	<div class="container">
		<div class="row" style="margin-top: 30px">
			<div class="col-2">
				<div id="colorlib-page">
					<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
					<aside id="colorlib-aside" role="complementary">
						<h1 id="colorlib-logo">
							<a href="index.html">Transport JC</a>
						</h1>
						<nav id="colorlib-main-menu" role="navigation">
							<ul>
								<li class="colorlib-active"><a>Gestion de Usuarios</a></li>
								<li><a href="/admin">Home</a></li>
								<li><a href="/admin/vehiculos">Mis Vehiculos</a></li>
								<li><a href="/">Cerrar Session</a></li>
							</ul>
						</nav>
					</aside>
				</div>
			</div>
			<div class="col-10">
				<h3>Registrar/Actualizar Usuarios</h3>
				<form id="formulario" action="<c:url value='/usuarios'/>"
					method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-sm">
							<label for="Fecha">ID</label> <input type="number"
								class="form-control" id="ID">
						</div>
						<div class="form-group col-sm">
							<label for="Kilometros">Nombre</label> <input type="text"
								class="form-control" id="kilometros">
						</div>
						<div class="form-group col-sm">
							<label for="Destino">Email</label> <input type="email"
								class="form-control" id="email">
						</div>
						
						<div class="form-group col-sm">
							<label for="Destino">Telefono</label> <input type="number"
								class="form-control" id="telefono">
						</div>
						
						<div class="form-group col-sm">
							<label for="Destino">Rol</label> <input type="text"
								class="form-control" id="Rol">
						</div>
						
						
						
					</div>
					<button id="boton" type="submit" class="btn-sm btn-primary"
						style="margin-top: 5px;">Guardar</button>
				</form>
				
				
				
				<div style="margin-top: 20px">
				
				
				<h5>Usuarios Registrados</h5>
				
					<table id="dtBasicExample" class="table table-sm table-bordered table-dark"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th scope="col">#ID</th>
								<th scope="col">Nombre</th>
								<th scope="col">Email</th>
								<th scope="col">Telegono</th>
								<th scope="col">Rol</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th scope="col">#ID</th>
								<th scope="col">Nombre</th>
								<th scope="col">Email</th>
								<th scope="col">Telegono</th>
								<th scope="col">Rol</th>
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

<script type="text/javascript"
	src="https://cdn.datatables.net/v/bs4/dt-1.10.21/b-1.6.2/datatables.min.js"></script>

<script>
	$(document).ready(function() {
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>
</body>
</html>

