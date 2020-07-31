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
		$('#dtBasicExample2').DataTable();
		$('.dataTables_length').addClass('bs-select');
	});
</script>

</head>
<body
	background="https://cdn.pixabay.com/photo/2014/01/04/12/34/street-238458_960_720.jpg"
	style="margin: 0; padding: 0; background-size: cover;">
	<div class="container">

		<div class="row" style="margin-top: 30px;">

			<div class="col-10">
				<h3>Nuevo viaje</h3>
				<form id="formulario" action="<c:url value='/usuarios'/>"
					method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-sm">
							<label for="Fecha">Fecha</label> <input type="date"
								class="form-control" id="Fecha">
						</div>
						<div class="form-group col-sm">
							<label for="Kilometros">Kilometros</label> <input type="number"
								class="form-control" id="kilometros">
						</div>
						<div class="form-group col-sm">
							<label for="Destino">Destino</label> <input type="text"
								class="form-control" id="destino">
						</div>

						<div class="form-group col-sm">
							<label for="CantidadPasajeros">Cantidad Pasajeros</label> <input
								type="number" class="form-control" id="cantidadPasajeros">
						</div>

						<div class="col-sm" style="margin-top: 30px">
							<select class="custom-select my-1 mr-sm-2"
								id="inlineFormCustomSelectPref">
								<option selected>Vehiculo</option>
								<option value="1">hola</option>
								<option value="2">probe</option>
								<option value="3">como esta?</option>
							</select>
						</div>
					</div>
					<button id="boton" type="submit" class="btn-sm btn-primary"
						style="margin-top: 5px;">Presupuesto</button>
				</form>

				<div style="margin-top: 50px;">
					<table id="dtBasicExample2" class="table-dark table-sm "
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">KM.</th>
								<th class="th-sm">Destino</th>
								<th class="th-sm">Cantidad Pasajeros</th>
								<th class="th-sm">Precio</th>
								<th class="th-sm">Confirmación</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>17-04-2019</td>
								<td>20</td>
								<td>chiloe</td>
								<td>4</td>
								<td>200.000</td>
								<td>
									<button id="solicitar" type="submit" class="btn-sm btn-primary">Solicitar</button>
									<button id="eliminar" type="submit" class="btn-sm btn-primary">eliminar</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div style="margin-top: 50px;">
					<table id="dtBasicExample" class="table-dark table-sm "
						cellspacing="0" width="100%">
						<thead>
							<tr>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">KM.</th>
								<th class="th-sm">Destino</th>
								<th class="th-sm">Cantidad Pasajeros</th>
								<th class="th-sm">Precio</th>
								<th class="th-sm">Confirmación</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>17-04-2019</td>
								<td>20</td>
								<td>chiloe</td>
								<td>4</td>
								<td>200.000</td>
								<td>
									<div class="alert alert-success" role="alert">
										<a href="#" class="alert-link">Autorizada</a>
									</div>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th class="th-sm">Fecha</th>
								<th class="th-sm">KM.</th>
								<th class="th-sm">Destino</th>
								<th class="th-sm">Cantidad Pasajeros</th>
								<th class="th-sm">Precio</th>
								<th class="th-sm">Confirmación</th>
							</tr>
						</tfoot>
					</table>
				</div>

			</div>
			<div class="col-2">

				<div class="btn-group">
					<button class="btn btn-secondary btn-lg dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Luis Herrera</button>
					<div class="dropdown-menu">
					<a class="dropdown-item" href="/">Cerrar session</a>
					
					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>