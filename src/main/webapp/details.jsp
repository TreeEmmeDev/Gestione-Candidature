<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="icon" href="img/unnamed.png">   
    <link rel="stylesheet" href="css/style.css">
    <title>GESTIONE CANDIDATURE - Dettagli Candidato</title>
    
<script>

function palla(){
	var palla = document.getElementById("esito").value;
	if(palla=="Idoneo"){
		document.getElementById("esitoPalla").style.backgroundColor = "green";
	}
	if(palla=="Non Idoneo"){
		document.getElementById("esitoPalla").style.backgroundColor = "red";
	}
	if(palla=="In attesa"){
		document.getElementById("esitoPalla").style.backgroundColor = "yellow";
	}
	if(palla=="Da ricontattare"){
		document.getElementById("esitoPalla").style.backgroundColor = "blue";
	}
	
	if(localStorage.getItem("file") == ""){
		document.getElementById("fileDiv").classList.add("hidden");
	}
}
</script>
<style>
  .dot {
    height: 25px;
    width: 25px; 
    border-radius: 50%;
    display: inline-block;
  }

  .nav-link{
    color: white;
    font-weight: bold;
    margin-right: 15px;
  }
      
  .nav-link:hover{
    color: rgba(99, 166, 220, 0.952);
  }
      
  .act{
    color: rgb(0, 140, 255);;
  }

  .iconcina{
    color: white;
  }
  #btn-back-to-top {
	position: fixed;
	bottom: 20px;
	right: 20px;
  }
  
  .hidden {
            display: none;
        }
</style>


</head>

<body onload="palla()" style="background-color:rgb(160, 198, 212)">
  
  <nav class="navbar navbar-expand-lg" style="background-color: rgba(0, 101, 184, 0.952); color: white;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"> </a>
      <button  class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa-solid fa-bars iconcina"></i>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="home.jsp">HOME</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">INSERISCI</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Select">VISUALIZZA</a>
          </li>
          <!-- <li class="nav-item">
            <a class="nav-link" href="#" onclick="legenda()">LEGENDA COLORI</a>
          </li> -->
        </ul>
      </div>

    </div>
  </nav>
  
  <div style="position: relative; top: 17px;">
  	<h2 style="font-weight: bold; font-family: 'Dela Gothic One'; text-align: center; color: rgb(255, 255, 255); filter: drop-shadow(5px 5px 2px #696969)"> DETTAGLI CANDIDATO:</h2>
  </div>
  
  <form action="Update" method="GET">
		<div class="container" style="margin-top: 30px;">
			<div class="alert alert-dark" style="background-color: rgba(0, 101, 184, 0.952); border: 2px solid rgba(0, 101, 184, 0.952); padding: 10px; border-radius: 15px;">
				<div class="mb-3" style="color: white;">

					<label for="exampleFormControlInput1" class="form-label">Ambito</label>
					<input type="text" value="${c.ambito}" id="exampleFormControlInput1"  class="form-control" name="ambito" >


					<input name="id" type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="Nome" value="${c.id}">

					<label for="exampleFormControlInput1" class="form-label">Nome</label>
					<input name="nome" onkeyup="validaN()" type="text" class="form-control" id="nome" placeholder="Nome" value="${c.nome}" >
					
					<label for="exampleFormControlInput1" class="form-label">Cognome</label>
					<input name="cognome" onkeyup="validaC()" type="text" class="form-control" id="cognome" placeholder="Cognome" value="${c.cognome}" > 
						
					<label for="exampleFormControlInput1" class="form-label">Data di nascita</label> 
					<input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" value="${c.anno_nascita}" >

					<label for="exampleFormControlInput1" class="form-label">Residenza</label>
					<input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza" value="${c.residenza}" > 
						
					<label for="exampleFormControlInput1" class="form-label">Numero di telefono</label> 
					<input name="telefono" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="3398569667" pattern="[0-9]{10}" value="${c.telefono}" > 
						
					<label for="exampleFormControlInput1" class="form-label">Email</label> 
					<input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" value="${c.email}" > 
					
					<label for="exampleFormControlInput1" class="form-label">Titolo di studio</label> 
					<input name="titolo_studio" type="text" class="form-control" id="titolodistudio" placeholder="Titolo di studio" value="${c.titolo_studio}"> 

					<label for="exampleFormControlInput1" class="form-label">Voto</label>
					<input name="voto" type="number" value="${c.voto}" class="form-control" id="voto" placeholder="Voto" min="60" >

					<label for="exampleFormControlInput1" class="form-label">Formazione</label>
					<input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione" value ="${c.formazione}" > 
						
					<label for="exampleFormControlInput1" class="form-label">Data di candidatura</label> 
					<input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura" value="${c.data_candidatura}" > 
						
					<label for="exampleFormControlInput1" class="form-label">Data di colloquio</label> 
					<input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio" value="${c.data_colloquio}" > 

				<div class="mb-3" style="color: white;">
					<label for="esito">Esito:</label><br>
					<input type="hidden" value="${c.esito}" id="esito" name="esito">
					<span class="dot" id="esitoPalla"></span>
					
					<div class="mb-3">
						<label for="formFile" class="form-label">FIle:</label>
						<input class="form-control" type="file" id="file" onchange="convertToBase64(document.getElementById('file').files[0]);" >
						<textarea hidden name="file" class="form-control" id="out"></textarea>
						
						<div id="fileDiv">
				        	<label for="exampleFormControlInput1" class="form-label" id="fileDivLabel">File Caricato: </label>
				        	<button onclick="apri()" type="button" id="fileDiv" class="form-control">File Caricato</button>
				        </div>
					</div>

					<label for="exampleFormControlTextarea1" class="form-label">Note</label> 
					<textarea  style="height:150px" type="text" name="note" class="form-control" id="exampleFormControlTextarea1" rows="3" onclick="popup_note()">${c.note}</textarea>
					<p style="display: none; color: white;" id="note">Lunghezza massima 1000 caratteri</p>
				</div>
				<button type="submit" class="btn btn-primary" id="submit" onclick="risultato()">Modifica</button>
			</div>
		</div>
	</form>

<button type="button" class="btn btn-primary btn-floating btn-lg" id="btn-back-to-top" onclick="legenda()">
	<i class="fa-solid fa-circle-info"></i>
</button>


<script>

function apri(){
	window.open("FileUpload?file=" + localStorage.getItem("file"), "_blank");
	
}

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c2b8bef5f3.js" crossorigin="anonymous"></script>
<script src="js/sweetalert2.all.js"></script>
<script src="js/script.js"></script>
</body>
</html>
