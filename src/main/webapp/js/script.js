var format = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;

function containsNumbers(str) {
    return /\d/.test(str) || format.test(str);

  }
  
  
 function onlyLettersAndSpaces(str) {
  return /^[A-Za-z\s]*$/.test(str);
}
var submit = document.getElementById("submit");

function validaC() {
    
    var cognome = document.getElementById("cognome");

    if(containsNumbers(cognome.value) && !onlyLettersAndSpaces(cognome.value)){
        submit.classList.add("hidden");
        cognome.classList.add("ERROR");
    }else {
        cognome.classList.remove("ERROR");
        submit.classList.remove("hidden");
    }

}

function validaN(){
	
    var nome = document.querySelector("input#nome");
    
    if(containsNumbers(nome.value) && !onlyLettersAndSpaces(nome.value)){
        submit.classList.add("hidden");
        nome.classList.add("ERROR");
    }else {
        nome.classList.remove("ERROR");
        submit.classList.remove("hidden");
    }
}

function controllotitolo() {
    var select = document.getElementById("titolodistudio");
    var voto = document.getElementById("voto");

    if(select.value.includes("Diploma")){
        voto.max = 100;
    }

    if(select.value.includes("Laurea")){
        voto.max = 110;
    }

}

function validaNumero(){

    var numero = document.getElementById("numero");

    if(containsNumbers(numero.value) && !onlyLettersAndSpaces(numero.value)){
        submit.classList.add("hidden");
        nome.classList.add("ERROR");
    }else {
        nome.classList.remove("ERROR");
        submit.classList.remove("hidden");
    }
}




function successo() {
    if (localStorage.getItem("inserimento") ==  1 ){
        Swal.fire(
            'Ottimo Lavoro!',
            'Hai inserito il candidato',
            'success'
          )
          localStorage.setItem("inserimento", 0);
    }
}



function legenda(){
	Swal.fire(
  		'Legenda Colori',
  		' <table style="text-align: justify; width: -webkit-fill-available;">' +
  			'<tr><td><span class="dot" id="esitoPalla" style="background-color: green;"></span> Idoneo</td>' +
  			'<td><span class="dot" id="esitoPalla" style="background-color: red;"></span> Non Idoneo</td>'+
        	'</tr><tr><td><span class="dot" id="esitoPalla" style="background-color: yellow;"></span> Da Ricontattare</td>'+
        	'<td><span class="dot" id="esitoPalla" style="background-color: blue;"></span> In Attesa</td></tr>'+
        '</table>',
  		'question'
	)
}


function filtraEsito(){
	var selettore = document.getElementById("esitoSelezione");
	
	if(selettore.value == ""){
		window.open("Select", "_self");	
	}else if(selettore.value == "Idoneo"){
		window.open("Select?esito=Idoneo", "_self");
	}else if(selettore.value == "Non Idoneo"){
		window.open("Select?esito=NonIdoneo", "_self");
	}else if(selettore.value == "In Attesa"){
		window.open("Select?esito=InAttesa", "_self");
	}else if(selettore.value == "Da ricontattare"){
		window.open("Select?esito=DaRicontattare", "_self");
	}
}
