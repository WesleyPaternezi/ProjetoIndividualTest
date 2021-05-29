/* para workbench - local - desenvolvimento */

create database enviaDados;

use enviaDados;

CREATE TABLE leitura (
	id INT PRIMARY KEY AUTO_INCREMENT,
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fkcaminhao INT
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	login VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE publicacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
	fkUsuario INT
);