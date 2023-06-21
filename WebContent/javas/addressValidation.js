
function ValidateRegistration(){
	var destinatario = document.getElementById("nomeDestinatario").value;
	var regione = document.getElementById("stato").value;
	var provincia = document.getElementById("provincia").value;
	var paese = document.getElementById("paese").value;
	var indirizzo = document.getElementById("indirizzo").value;
	var numCivico = parseInt(document.getElementById("numCivico").value);
	var cap = parseInt(document.getElementById("CAP").value);
	var letters = /^[A-Za-z]+$/;
	var numbers = /^[0-9]+$/;
	
	//resta da convalidare indirizzo
	
	 if((destinatario.match(letters))&&(regione.match(letters))&&(provincia.match(letters))&&(paese.match(letters))&&(numCivico.match(numbers) && numCivico.lenght <= 199)&&(cap.match(numbers))){
		return true;
	}else if(!destinatario.match(letters)){
		document.getElementById("nameTxt").innerHTML = "Il nome può contenere solo lettere!";
		nameTxt.focus();
		nameTxt.style.color="red";
		return false;
	}else if(!regione.match(letters)){
		document.getElementById("regioneTxt").innerHTML = "Regione non valida!";
		regioneTxt.focus();
		regioneTxt.style.color="red";
		return false;
	}else if(!provincia.match(letters)){
		document.getElementById("provinciaTxt").innerHTML = "Provincia non valida!";
		provinciaTxt.focus();
		provinciaTxt.style.color="red";
		return false;
	}else if(!paese.match(letters)){
		document.getElementById("paeseTxt").innerHTML = "Paese non valido!";
		paeseTxt.focus();
		paeseTxt.style.color="red";
		return false;
	}else if(!cap.match(numbers)){
		document.getElementById("capTxt").innerHTML = "CAP non valido";
		capTxt.focus();
		capTxt.style.color="red";
		return false;
	}
}