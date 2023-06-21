/**
 * 
 */

function ValidateRegistration(){
	var name = document.getElementById("name").value;
	var surname = document.getElementById("surname").value;
	var email = document.getElementById("email").value;
	var pwd = document.getElementById("pwd").value;
	var cap = document.getElementById("CAP").value;
	var letters = /^[A-Za-z]+$/;
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var pwdformat = /^(?=(.*[a-zA-Z]){1,})(?=(.*[0-9]){2,}).{8,}$/;
	var numbers = /^[0-9]+$/;
	
	 if((name.match(letters))&&(surname.match(letters))&&(email.match(mailformat))&&(pwd.match(pwdformat) || pwd.lenght >= 2)&&(cap.match(numbers))){
		return true;
	}else if(!name.match(letters)){
		document.getElementById("nameTxt").innerHTML = "Il nome può contenere solo lettere!";
		nameTxt.focus();
		nameTxt.style.color="red";
		return false;
	}else if(!surname.match(letters)){
		document.getElementById("surnameTxt").innerHTML = "Il cognome può contenere solo lettere!";
		surnameTxt.focus();
		surnameTxt.style.color="red";
		return false;
	}else if(!email.match(mailformat)){
		document.getElementById("emailTxt").innerHTML = "Email non valida: controlla il formato!";
		emailTxt.focus();
		emailTxt.style.color="red";
		return false;
	}else if(!pwd.match(pwdformat)){
		document.getElementById("passTxt").innerHTML = "Password non valida: deve contenere almeno 2 numeri!";
		passTxt.focus();
		passTxt.style.color="red";
		return false;
	}else if(!cap.match(numbers)){
		document.getElementById("capTxt").innerHTML = "CAP non valido";
		capTxt.focus();
		capTxt.style.color="red";
		return false;
	}
}

