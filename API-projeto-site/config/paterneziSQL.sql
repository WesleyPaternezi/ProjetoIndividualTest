/* para workbench - local - desenvolvimento */
create database enviaDados;

use enviaDados;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	login VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE publicacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
	fkUsuario INT,
    foreign key (fkUsuario) references usuario (id)
);

select * from usuario;
desc publicacao;

select * from usuario 
inner join publicacao
on fkUsuario = id;

select u.nome, p.descricao 
from usuario as u
inner join publicacao as p
on fkUsuario = u.id;