create database TankSolutions;
use TankSolutions;


-- Tabela  base (clientes) -- 

create table Clientes (
iDCliente int primary key,
Empresa varchar (50),
CNPJ char (14),
Qntd_tanques  int ,
Responsável varchar (50),
Tel_contato varchar (14),
Email  varchar (50),
Estado char (2),
Cidade varchar (30), 
CEP char (8) 
);

-- Tabela  Tanques --

create table Tanques(
iDTanque int primary key,
iDCliente int , -- Chave estrangeira
iDSensor int, -- Chave estrangeira
Qntd_peixes int ,
Espécie varchar (50),
Temperatura_ideal varchar (20)
);

-- Tabela  Sensor --

create table Sensor(
iDSensor int primary key,
iDCliente int, -- Chave estrangeira
iDTanque int, -- Chave estrangeira
Variação_temperatura varchar (30) ,
Temperatura_méd varchar (30),
Hora_picos varchar (30),
Funcionamento boolean
);

-- Tabela  SAC -- 

create table SAC (
iDSac int primary key,
iDSensor int, -- chave estrangeira
iDCliente int, -- chave estrangeira
Problema varchar (100),  
Período datetime default now(),
Solucionado boolean 
);

-- dados base Clientes --

insert into clientes values 
(1,"vila belmiro", 25456845874453, 5,"Fernanda", 11941511062, "vila.belmiro@hotmail.com", "SP", "São Paulo", 06773040),
(2,"peixes nautico", 25456845656665, 10,"Pedro", 11958324782, "peixe.nautico@gmail.com", "RJ", "Rio de Janeiro", 8635012),
(3,"mar vida", 25456845122222, 7,"Almir", 11985478632, "mar.vida@hotmail.com", "SP", "São Paulo", 0685743),
(4,"tilápia és", 25456845151212, 8,"Vitor", 11923578487, "tilápia.es@outlook.com", "BA", "Salvador", 07833271),
(5,"caiu narede", 25456844412581, 12,"Renata", 11945118762, "caiu.rede@gmail.com", "RJ", "Rio de Janeiro", 10015768);

select * from clientes;

-- dados base Tanques --

insert into tanques values 
(1,1,01,250,"tilápia","> 10°c"),
(2,2,02,200,"tilápia","> 10°c"),
(3,3,03,80,"tilápia","> 10°c"),
(4,4,04,150,"tilápia","> 10°c"),
(5,5,05,120,"tilápia","> 10°c");

select * from tanques;

-- dados base Sensor --

insert into sensor values 
(01,1,01,null,null,null, true),
(02,2,02,null,null,null, true),
(03,3,03,null,null, null,true),
(04,4,04,null,null, null, true),
(05,5,05,null,null,null, true);

select*from sensor;

-- dados base SAC -- 

insert into SAC values 
(01,1,1,"sensor quebrado",now(),true),
(02,2,2,"software instável",now(),false),
(03,3,3,"software não abre",now(),true),
(04,4,4,"software com malware",now(),false),
(05,5,5,"sensor desregulado",now(),true),
(06,6,6,"Acesso negado ao site",now(),true);

select*from SAC;
