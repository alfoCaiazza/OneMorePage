<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>OneMorePage</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1" />
 <link rel="stylesheet" href="header1.css" />
  <link rel="stylesheet" href="Style.css" />
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
</head>
<body>
    <header class="site-header">
      <div class="wrapper site-header__wrapper">
      	 
        <div class="site-header__start" id="primo">
        <a href="userLogged.jsp" class="brand">OneMorePage</a>
        
        </div>
         <div id="mySidenav" class="sidenav">
  			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  			<div class="side-container">
  			<div class="dropdown-side">
  			<button class="dropbtn-side">Libri</button>
  			<div class="dropdown-content-side">
   			<a href="HeaderLibri?action=homepage">Homepage</a>
    		<a href="HeaderLibri?action=classifica">Classifica</a>
    		<a href="HeaderLibri?action=novita">Novità</a>
 		 	</div>
			</div>
			<div class="dropdown-side">
  			<button class="dropbtn-side">Ebook</button>
  			<div class="dropdown-content-side">
   			<a href="HeaderEbook?action=homepage">Homepage</a>
    		<a href="HeaderLibri?action=classifica">Classifica</a>
    		<a href="HeaderEbook?action=dispositivi">Dispositivi</a>
 		 	</div>
			</div>
			<div class="dropdown-side">
  			<button class="dropbtn-side">Libri in inglese</button>
  			<div class="dropdown-content-side">
   			<a href="HeaderLibriInglese?action=homepagep">Homepage</a>
    		<a href="HeaderLibriInglese?action=classifica">Classifica</a>
 		 	</div>
			</div>
			</div>
			</div>
          
 
        <div class="site-header__middle" id="secondo">
          <a href="#" class="toggle-button"><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></a>  
          <a href="LoginPage.jsp"><button class="button user"><i class="fa fa-user"></i></button></a>     
        </div>
        <div class="site-header__end" id="terzo">
          <a href="RicercaAJAX.jsp"><button class="button search" type="submit"><i class="fa fa-search"></i></button></a>
  		  <a href="preferiti.jsp"><button class="button"><i class="fa fa-heart"></i></button></a>
          <a href="carrello.jsp"><button class="button"><i class="fa fa-shopping-cart"></i></button></a>
          <a href="UserSettings.jsp"><button class="button"><i class="fa fa-gear"></i></button></a>
        </div>
        <div class="site-main_menu">
       <div class="dropdown">
  		<span class="main"><a href="HeaderLibri?action=homepage">Libri</a></span>
  		<div class="dropdown-content">
  			<a href="HeaderLibri?action=homepage">Homepage</a><br>
  			<a href="HeaderLibri?action=novita">Novità</a><br>
  			<a href="HeaderLibri?action=classifica">Classifica</a><br>
 		 </div>
		</div>
		<div class="dropdown">
  		<span class="main"><a href="HeaderEbook?action=homepage">Ebook</a></span>
  		<div class="dropdown-content">
  			<a href="HeaderEbook?action=homepage">Homepage</a><br>
  			<a href="HeaderLibri?action=classifica">Classifica</a><br>
  			<a href="HeaderEbook?action=dispositivi">Dispositivi</a>
 		 </div>
		</div>
		<div class="dropdown">
  		<span class="main"><a href="HeaderLibriInglese?action=homepage">Libri in inglese</a></span>
  		<div class="dropdown-content">
  			<a href="HeaderLibriInglese?action=homepage">Homepage</a><br>
  			<a href="HeaderLibriInglese?action=classifica">Classifica</a><br>
 		 </div>
		</div>
		</div>
		</div>
    </header>
    <script>
    function openNav() {
    	  document.getElementById("mySidenav").style.width = "100%";
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
    }</script>
</body>
</html>