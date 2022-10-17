<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Kanit&family=Mukta:wght@500;700&display=swap" rel="stylesheet">

            <title>Home Page</title>

        </head>

        <body style="background-color:rgb(160, 198, 212)">
            <nav class="navbar navbar-expand-lg navbar-fixed-bottom" style="background-color: rgba(0, 101, 184, 0.952)">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>

                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div class="navbar-nav align-center">
                            <a class="nav-link active" aria-current="page" href="#" style="font-family: Mukta, sans-serif; color: white">HOME</a>
                            <a class="nav-link" href="#" style="font-family: Mukta, sans-serif; color: white">NUOVA CANDIDATURA</a>
                            <a class="nav-link" href="#" style="font-family: Mukta, sans-serif; color: white">TABELLA CANDIDATURA</a>

                        </div>
                    </div>
                </div>
            </nav>

            <form action="Insert" method="POST">
                <div class="container">
                    <div class="alert alert-dark">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Nome</label>
                            <input name="nome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nome" required> <label for="exampleFormControlInput1" class="form-label">Cognome</label>
                            <input name="cognome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Cognome" required> <label for="exampleFormControlInput1" class="form-label">Data di
								nascita</label> <input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" required> <label for="exampleFormControlInput1" class="form-label">Residenza</label>
                            <input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza" required> <label for="exampleFormControlInput1" class="form-label">Numero
								di telefono</label> <input name="telefono" type="tel" placeholder="3398569667" pattern="[0-9]{10}" class="form-control" id="exampleFormControlInput1" required>

                            <label for="exampleFormControlInput1" class="form-label">Email</label>
                            <input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" required>

                            <label for="exampleFormControlInput1" class="form-label">Titolo
								di studio</label> <input name="titolo_studio" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Titolo di studio" required> <label for="exampleFormControlInput1" class="form-label">Voto</label>                            <input name="voto" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Voto" required> <label for="exampleFormControlInput1" class="form-label">Formazione</label>
                            <input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione" required> <label for="exampleFormControlInput1" class="form-label">Data di
								candidatura</label> <input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura" required> <label for="exampleFormControlInput1" class="form-label">Data di
								colloquio</label> <input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio" required>
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
                            <input type="text" name="note" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_note()">
                            <p style="display: none; color: blue;" id="note">Lunghezza massima 1000</p>
                        </div>

                        <button type="submit" class="btn btn-primary">Invio</button>
                    </div>
                </div>
            </form>
        </body>

        </html>