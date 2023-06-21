DROP DATABASE IF EXISTS storage;
CREATE DATABASE storage;
USE storage;

DROP TABLE IF EXISTS utente;

CREATE TABLE utente (	
  code int primary key AUTO_INCREMENT,
  name char(20) not null,
  surname char(20) not null,
  username char(20) not null,
  password char(20) not null
);

INSERT INTO utente values (1,"Alfonso","Caiazza","acaiazza","12345");
INSERT INTO utente values (2,"Eva","Roscigno","roscino67","1967");
INSERT INTO utente values (3,"Antonio","Caiazza","acaiazza","99999");
INSERT INTO utente values (4,"Carmen","Caiazza","carmen93","12345");
INSERT INTO utente values (5,"Simona","Leo","leoleo","12345");
INSERT INTO utente values (6,"Daniela","Testa","daniela30","12345");
INSERT INTO utente values (7, "Menager", "Menager", "root", "admin");

CREATE TABLE product (
	code int primary key, 
	name char(50) not null,
	shortdescription char(150) not null,
	longdescription char(255) not null,
	imgThumb char(200) not null,
	imgFull char(200) not null,
	price double not null,
	weight double not null,
	category char(30) not null,
	author char(30) not null,
	rating int not null,
	quantity int not null
);

