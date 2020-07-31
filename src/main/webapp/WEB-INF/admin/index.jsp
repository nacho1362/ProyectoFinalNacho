<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	$(document).ready(function () {
		
		$('#dtBasicExample').DataTable();
		$('.dataTables_length').addClass('bs-select');
		$('#dtBasicExample1').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
	</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../balay/css/owl.carousel.min.css">
<link rel="stylesheet" href="../balay/css/style.css">
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
	
</body>
</html>

