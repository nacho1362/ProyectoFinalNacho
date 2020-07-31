<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>

<jsp:include page="../includes/head.jsp" />
<title>Balay Template</title>


</head>

<body background="https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_960_720.jpg" style="margin: 0; padding: 0; background-size: cover;">
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
								<li class="colorlib-active"><a>Home</a></li>
								<li><a href="/admin/vehiculos">Mis Vehiculos</a></li>
								<li><a href="/admin/gestionDeUsuarios">Gestion Usuarios</a></li>
								<li><a href="/">Cerrar Session</a></li>
							</ul>
						</nav>
					</aside>
				</div>
			</div>
			<div class="col-10">
				<div>
					<table id="dtBasicExample" class="table table-sm table-bordered table-dark"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Nombre</th>
								<th class="th-sm">Direccion</th>
								<th class="th-sm">Cantidad Kilometros</th>
								<th class="th-sm">Pasajeros</th>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">Presio Final</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Tiger Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
							</tr>
							<tr>
								<td>Garrett Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th class="th-sm">Nombre</th>
								<th class="th-sm">Direccion</th>
								<th class="th-sm">Cantidad Kilometros</th>
								<th class="th-sm">Pasajeros</th>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">Presio Final</th>
							</tr>
						</tfoot>
					</table>
					<table id="dtBasicExample1" class="table table-sm table-bordered table-dark"
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Nombre</th>
								<th class="th-sm">Direccion</th>
								<th class="th-sm">Cantidad Kilometros</th>
								<th class="th-sm">Pasajeros</th>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">Presio Final</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Tiger Nixon</td>
								<td>System Architect</td>
								<td>Edinburgh</td>
								<td>61</td>
								<td>2011/04/25</td>
								<td>$320,800</td>
							</tr>
							<tr>
								<td>Garrett Winters</td>
								<td>Accountant</td>
								<td>Tokyo</td>
								<td>63</td>
								<td>2011/07/25</td>
								<td>$170,750</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th class="th-sm">Nombre</th>
								<th class="th-sm">Direccion</th>
								<th class="th-sm">Cantidad Kilometros</th>
								<th class="th-sm">Pasajeros</th>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">Presio Final</th>
							</tr>
						</tfoot>
					</table>
					
				</div>
			</div>

		</div>

	</div>
	<script>
	$(document).ready(function () {
		
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
		$('#dtBasicExample1').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
	</script>
</body>
</html>

