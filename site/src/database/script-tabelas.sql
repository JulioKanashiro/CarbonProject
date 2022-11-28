-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE carbon;

USE carbon;


CREATE TABLE usuario (
	idusuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);


CREATE TABLE votos(
	idvotos INT PRIMARY KEY AUTO_INCREMENT,
	curry varchar(50),
	lebron varchar(50),
	vinijr varchar(50),
	benzema varchar(50),
    fkusuario int,
    foreign key (fkusuario) references usuario(id));



