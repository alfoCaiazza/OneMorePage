function ValidateCard(){
	var jcbFortmat = /^(?:(?:2131|1800|35\d{3})\d{11})$/;
	var masterFormat = /^(?:5[1-5][0-9]{14})$/;
	var discoverFormat = /^(?:6(?:011|5[0-9][0-9])[0-9]{12})$/;
	var dinersFormat = /^(?:3(?:0[0-5]|[68][0-9])[0-9]{11})$/;
	var amexFormat = /^(?:3[47][0-9]{13})$/;
	var letters = /^[A-Za-z]+$/; 
	var numbers = /^[0-9]+$/;
	
	var codiceCarta = document.getElementById("codiceCarta").value;
	var cvc = document.getElementById("cvc").value;
	var intestatario = document.getElementById("intestatario").value;
	var mese = parseInt(document.getElementById("mese").value);
	var anno = parseInt(document.getElementById("anno").value);
	
	
	function controlloCodice(codiceCarta){
		if(!codiceCarta.match(jcbFortmat) && !codiceCarta.match(masterFormat) && !codiceCarta.match(discoverFormat) && !codiceCarta.match(amexFormat) && !codiceCarta.match(dinersFormat)){
			return false;
		}else{
			return true;
		}
	}
	
	if(((mese >= 1 && mese <=12) && (anno >= 2022)) && (controlloCodice(codiceCarta) == true) && (cvc.match(numbers) && cvc.lenght >= 3 && cvc.lenght <= 4) && (intestatario.match(letters))){
		return true;
	}else if(controlloCodice(codiceCarta) == false){
		document.getElementById("codiceTxt").innerHTML = "Carta non supportata o formato non valido!";
		codiceTxt.focus();
		codiceTxt.style.color="red";
		return false;
	}else if(controlloScadenza(mese,anno) == false){
		document.getElementById("scadenzaTxt").innerHTML = "Inserire una data valida";
		scadenzaTxt.focus();
		scadenzaTxt.style.color="red";
		return false;
	}else if(mese < 1 || mese > 12){
		document.getElementById("scadenzaTxt").innerHTML = "Mese non valido";
		scadenzaTxt.focus();
		scadenzaTxt.style.color="red";
		return false;
	}else if(anno < 2022){
		document.getElementById("scadenzaTxt").innerHTML = "Anno non valido";
		scadenzaTxt.focus();
		scadenzaTxt.style.color="red";
		return false;
	}else if(!cvc.match(numbers) || cvc.lenght >= 3 || cvc.lenght <= 4){
		document.getElementById("cvcTxt").innerHTML = "Formato CVC errato";
		cvcTxt.focus();
		cvcTxt.style.color="red";
		return false;
	}else if(!intestatario.match(letters)){
		document.getElementById("intestatarioTxt").innerHTML = "I nomi sono formati da sole lettere!";
		intestatarioTxt.focus();
		intestatario.style.color="red";
		return false;
	}
}