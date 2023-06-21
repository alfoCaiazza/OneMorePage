/**
 * 
 */

function ValidateLogin(inputText) {
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var email = document.getElementById("email").value;
	var pwdformat = /^(?=(.*[a-zA-Z]){1,})(?=(.*[0-9]){2,}).{8,}$/;
	var pwd = document.getElementById("pwd").value;

	if((email.match(mailformat) || email == "root") && (pwd.match(pwdformat) || pwd == "admin" || pwd == "12345")){
		return true;
	}else if(!email.match(mailformat)){
			document.getElementById("emessage").innerHTML = "Formato email non valido!";
			emessage.focus();
			emessage.style.color="red";
			return false;
	}else if(!pwd.match(pwdformat)){
			document.getElementById("pmessage").innerHTML = "Formato password non valido!";
			pmessage.focus();
			pmessage.style.color="red";
			return false;
	}
}

