<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="package/dist/sweetalert2.min.js"></script>
    <link rel="package/dist/stylesheet" href="sweetalert2.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        
    <link rel="stylesheet" href="css/style.css">
    <title>Modifica Candidato</title>
    
<script>
  
function popup_esito(){
	alert("max 1000 caratteri");
}

function popup_note(){
	alert("max 1000 caratteri");
}

function palla(){
	var palla = document.getElementById("esito").value;
	if(palla=="Idoneo"){
		document.getElementById("esitoPalla").style.backgroundColor = "green";
	}
	if(palla=="Non Idoneo"){
		document.getElementById("esitoPalla").style.backgroundColor = "red";
	}
	if(palla=="In attesa"){
		document.getElementById("esitoPalla").style.backgroundColor = "giallo";
	}
	if(palla=="Da ricontattare"){
		document.getElementById("esitoPalla").style.backgroundColor = "blue";
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
</style>
</head>
<body onload="palla()">
  
   <nav class="navbar navbar-expand-lg" style="background-color: rgba(0, 101, 184, 0.952); color: white;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">   </a>
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
                </ul>
              </div>
            </div>
          </nav>
  
  
  <form action="Appoggio" method="POST">  
  <div class="container" style="margin-top: 30px;">   
  <div class="alert alert-dark">
    <div class="mb-3">
    
    <input name="id" type="hidden" class="form-control" id="exampleFormControlInput1" placeholder="Nome" value="${c.id}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Nome</label>
    <input name="nome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nome" value="${c.nome}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Cognome</label>
    <input name="cognome" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Cognome" value="${c.cognome}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Data di nascita</label>
    <input name="anno_nascita" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di nascita" value="${c.anno_nascita}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Residenza</label>
    <input name="residenza" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Residenza" value="${c.residenza}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Numero di telefono</label>
    <input name="telefono" type="tel" class="form-control" id="exampleFormControlInput1" placeholder="Numero di telefono" value="${c.telefono}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Email</label>
    <input name="email" type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"value="${c.email}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Titolo di studio</label>
    <input name="titolo_studio" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Titolo di studio" value="${c.titolo_studio}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Voto</label>
    <input name="voto" type="number" class="form-control" id="exampleFormControlInput1" placeholder="Voto" value="${c.voto}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Formazione</label>
    <input name="formazione" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Formazione" value="${c.formazione}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Data di candidatura</label>
    <input name="data_candidatura" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di candidatura" value="${c.data_candidatura}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Data di colloquio</label>
    <input name="data_colloquio" type="date" class="form-control" id="exampleFormControlInput1" placeholder="Data di colloquio" value="${c.data_colloquio}" readonly>
    
    <label for="exampleFormControlInput1" class="form-label">Greenpass</label>
    <input name="greenpass" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Greenpass" value="${c.greenpass}" readonly>
    
 
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Esito colloquio</label>
  <input name="esito" type="hidden" class="form-control" id="esito" value="${c.esito}" readonly>
  <br>
  <span class="dot" id="esitoPalla"></span>
  <br>
  <label for="exampleFormControlTextarea1" class="form-label">Note</label>
  <input name="note" class="form-control" id="exampleFormControlTextarea1" value="${c.note}" readonly>
</div>
<button type="submit" class="btn btn-primary">Modifica</button>
</div>
</div>
</form> 


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/c2b8bef5f3.js" crossorigin="anonymous"></script>
</body>
</html>