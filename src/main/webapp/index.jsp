<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">

			<script src="package/dist/sweetalert2.min.js"></script>
			<link rel="package/dist/stylesheet" href="sweetalert2.min.css">


			<link href="css/bootstrap.min.css" rel="stylesheet">
			<link rel="stylesheet" href="css/style.css">
			<title>Gestione Candidato</title>

			<script>
				function popup_note() {
					document.getElementById("note").style.display = "block";
				}
			</script>
		</head>

		<body>
			<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #e3f2fd !important;">
				<div class="container-fluid">
					<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<img src="img/unnamed.png" alt="" width="70" height="60"
								class="d-inline-block align-text-top"> <a class="nav-link" href="select">Lista
								Candidati</a>
						</div>
					</div>
				</div>
			</nav>
			<form action="Insert" method="POST">
				<div class="container">
					<div class="alert alert-dark">
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Nome</label>
							<input name="nome" type="text" class="form-control" id="nome"
								placeholder="Nome" required> <label for="exampleFormControlInput1"
								class="form-label">Cognome</label>
							<input name="cognome" type="text" class="form-control" id="cognome"
								placeholder="Cognome" required> <label for="exampleFormControlInput1"
								class="form-label">Data di
								nascita</label> <input name="anno_nascita" type="date" class="form-control"
								id="exampleFormControlInput1" placeholder="Data di nascita" required> <label
								for="exampleFormControlInput1" class="form-label">Residenza</label>
							<input name="residenza" type="text" class="form-control" id="exampleFormControlInput1"
								placeholder="Residenza" required> <label for="exampleFormControlInput1"
								class="form-label">Numero
								di telefono</label> <input name="telefono" type="tel" placeholder="3398569667" pattern="[0-9]{10}" class="form-control"
								id="exampleFormControlInput1" required>

							<label for="exampleFormControlInput1" class="form-label">Email</label>
							<input name="email" type="email" class="form-control" id="exampleFormControlInput1"
								placeholder="name@example.com" required>

							<label for="exampleFormControlInput1" class="form-label">Titolo
								di studio</label> <input name="titolo_studio" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="Titolo di studio" required> <label
								for="exampleFormControlInput1" class="form-label">Voto</label> <input name="voto"
								type="number" class="form-control" id="exampleFormControlInput1" placeholder="Voto"
								required> <label for="exampleFormControlInput1" class="form-label">Formazione</label>
							<input name="formazione" type="text" class="form-control" id="exampleFormControlInput1"
								placeholder="Formazione" required> <label for="exampleFormControlInput1"
								class="form-label">Data di
								candidatura</label> <input name="data_candidatura" type="date" class="form-control"
								id="exampleFormControlInput1" placeholder="Data di candidatura" required> <label
								for="exampleFormControlInput1" class="form-label">Data di
								colloquio</label> <input name="data_colloquio" type="date" class="form-control"
								id="exampleFormControlInput1" placeholder="Data di colloquio" required>
							<div class="mb-3">
								<label for="greenpass">Certificazione Verde: </label> <select name="greenpass">
									<option value="si">Si</option>
									<option value="no">No</option>
								</select> <br>

							</div>
						</div>
						<div class="mb-3">
							<label for="esito">Esito:</label> <select name="esito">
								<option value="Idoneo">Idoneo</option>
								<option value="Non Idoneo">Non Idoneo</option>
								<option value="In attesa">In attesa</option>
								<option value="Da ricontattare">Da ricontattare</option>
							</select> <br>
							<!-- <label for="exampleFormControlTextarea1" class="form-label">Esito colloquio</label> -->
							<!-- <input name="esito" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_esito()">  -->

							<label for="exampleFormControlTextarea1" class="form-label">Note</label>
							<input type="text" name="note" class="form-control" id="exampleFormControlTextarea1"
								rows="3" onclick="popup_note()">
							<p style="display: none; color: blue;" id="note">Lunghezza
								massima 1000</p>
						</div>

						<button type="submit" class="btn btn-primary">Invio</button>
					</div>
				</div>
			</form>
		</body>

		</html>