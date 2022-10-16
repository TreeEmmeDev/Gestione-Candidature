<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Candidati</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/all.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="row">
		<div class="col">
			<nav class="navbar navbar-expand-lg navbar-light bg-light"
				style="background-color: #e3f2fd !important;">
				<div class="container-fluid">
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<img src="img/unnamed.png" alt="" width="70" height="60"
								class="d-inline-block align-text-top"> <a class="nav-link"
								href="index.jsp">Inserimento Candidati</a>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<table class="table table-sm">
		<thead>
			<tr>
				<th scope="col">Nome</th>
				<th scope="col">Cognome</th>
				<th scope="col">Età</th>
				<th scope="col">Formazione</th>
				<th scope="col">Candidatura</th>
				<th scope="col">Greenpass</th>
				<th scope="col">Dettagli</th>
				<th scope="col">Elimina</th>
				<th scope="col">Modifica</th>


				<!--  <th scope="col">Resid</th>
				<th scope="col">Tel</th>
				<th scope="col">Email</th>
				<th scope="col">TitStudio</th>
				<th scope="col">Voto</th>
				<th scope="col">Colloquio</th>
				
				<th scope="col">Esito</th>
				<th scope="col">Note</th>-->
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listacandidati}" var="listacandidati">
				<tr>
					<td>${listacandidati.nome}</td>
					<td>${listacandidati.cognome}</td>
					<td>${listacandidati.eta}</td>
					<td>${listacandidati.formazione}</td>
					<td>${listacandidati.data_candidatura}</td>
					<td>${listacandidati.greenpass}</td>


					<!-- <td>${listacandidati.anno_nascita}</td>
					<td>${listacandidati.residenza}</td>
					<td>${listacandidati.telefono}</td>
					<td>${listacandidati.email}</td>
					<td>${listacandidati.titolo_studio}</td>
					<td>${listacandidati.voto}</td>
					<td>${listacandidati.data_colloquio}</td>			
					<td>${listacandidati.esito}</td>
					<td>${listacandidati.note}</td> -->
					<td><a
						href="AppoggioDettaglio?id=${listacandidati.id}&nome=${listacandidati.nome}&cognome=${listacandidati.cognome}&anno_nascita=${listacandidati.anno_nascita}&eta=${listacandidati.eta}
						&residenza=${listacandidati.residenza}&telefono=${listacandidati.telefono}&email=${listacandidati.email}&titolo_studio=${listacandidati.titolo_studio}&voto=${listacandidati.voto}
						&formazione=${listacandidati.formazione}&data_candidatura=${listacandidati.data_candidatura}&data_colloquio=${listacandidati.data_colloquio}&note=${listacandidati.note}&esito=${listacandidati.esito}
						&greenpass=${listacandidati.greenpass}"><button
								type="button" class="btn btn-success" data-toggle="modal"
								data-target="#ModeButton">Dettagli</button></a></td>
					<td>
						<form action="Delete" method="post">
							<input type="hidden" name="id" id="id"
								value="${listacandidati.id}" />
							<button class="btn btn-danger" type="submit">Elimina</button>
						</form>
					</td>
					<td><a
						href="Update?id=${listacandidati.id}&nome=${listacandidati.nome}&cognome=${listacandidati.cognome}&anno_nascita=${listacandidati.anno_nascita}&eta=${listacandidati.eta}
						&residenza=${listacandidati.residenza}&telefono=${listacandidati.telefono}&email=${listacandidati.email}&titolo_studio=${listacandidati.titolo_studio}&voto=${listacandidati.voto}
						&formazione=${listacandidati.formazione}&data_candidatura=${listacandidati.data_candidatura}&data_colloquio=${listacandidati.data_colloquio}&note=${listacandidati.note}&esito=${listacandidati.esito}
						&greenpass=${listacandidati.greenpass}"><button
								type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#ModeButton">Modifica</button></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">

			<span class="close">&times;</span>
			<table class="table table-sm">
				<thead>
					<tr>
						<th scope="col">Nome</th>
						<th scope="col">Cognome</th>
						<th scope="col">Età</th>
						<th scope="col">Formaz</th>
						<th scope="col">Candidatura</th>
						<th scope="col">Greenpass</th>
						<th scope="col">Dettagli</th>
						<th scope="col">Elimina</th>
						<th scope="col">Modifica</th>


						<!--  <th scope="col">Resid</th>
				<th scope="col">Tel</th>
				<th scope="col">Email</th>
				<th scope="col">TitStudio</th>
				<th scope="col">Voto</th>
				<th scope="col">Colloquio</th>
				
				<th scope="col">Esito</th>
				<th scope="col">Note</th>-->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listacandidati}" var="listacandidati">
						<tr>
							<td>${listacandidati.nome}</td>
							<td>${listacandidati.cognome}</td>
							<td>${listacandidati.eta}</td>
							<td>${listacandidati.formazione}</td>
							<td>${listacandidati.data_candidatura}</td>
							<td>${listacandidati.greenpass}</td>


							<!-- <td>${listacandidati.anno_nascita}</td>
					<td>${listacandidati.residenza}</td>
					<td>${listacandidati.telefono}</td>
					<td>${listacandidati.email}</td>
					<td>${listacandidati.titolo_studio}</td>
					<td>${listacandidati.voto}</td>
					<td>${listacandidati.data_colloquio}</td>			
					<td>${listacandidati.esito}</td>
					<td>${listacandidati.note}</td> -->
							<td>
								<button type="button" class="btn btn-success" id="myBtn">Dettagli</button>
							</td>
							<td>
								<form action="Delete" method="post">
									<input type="hidden" name="IdU" id="IdU" value="${list.id}" />
									<button class="btn btn-danger" type="submit">Elimina</button>
								</form>
							</td>
							<td><a
								href="Appoggio?id=${list.id}&nome=${list.nome}&cognome=${list.cognome}&eta=${list.eta}"><button
										type="button" class="btn btn-primary" data-toggle="modal"
										data-target="#ModeButton">Modifica</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</div>

	</div>


	<script>
		// Get the modal
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
</body>
</html>