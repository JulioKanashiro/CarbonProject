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

create table votos(
	idvotos INT PRIMARY KEY AUTO_INCREMENT,
	nomeVoto varchar(45),
    fkusuario int,
    foreign key (fkusuario) references usuario(idusuario),
    fktotal int,
    foreign key (fktotal) references votos(idvotos));


-- trazer total de votos
 select count(idvotos) from votos;       
  
-- trazer o campeao parcial 
    SELECT  nomevoto,
             COUNT(nomevoto) AS 'maior ocorrencia' 
    FROM  votos
    GROUP BY nomevoto
    ORDER BY COUNT(nomevoto) DESC
          limit 1;
          
-- trazer quantidade de votos do LeBron James
select nomevoto, count(idvotos) as votos from votos where nomevoto = "lebron" group by nomevoto;

-- trazer quantidade de votos do Stephan Curry
select nomevoto, count(idvotos) as votos from votos where nomevoto = "curry" group by nomevoto;

-- trazer quantidade de votos do Karim Benzema
select nomevoto, count(idvotos) as votos from votos where nomevoto = "benzema" group by nomevoto;

-- trazer quantidade de votos do vinicius Jr
select nomevoto, count(idvotos) as votos from votos where nomevoto = "vinijr" group by nomevoto;