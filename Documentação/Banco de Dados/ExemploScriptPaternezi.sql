create database Paternezi;

use Paternezi;

create table Motorista(
idMotorista INT primary key auto_increment,
nomeMotorista varchar(45),
veiculo varchar(45),
statos char(1),
check (statos = 1 or statos = 0)
);

insert into Motorista values
(null, 'Rogerio Paternezi', 'Corolla','1'),
(null, 'Sandra Paternezi', 'Ideia', '0'),
(null, 'Silton Paternezi', 'Corolla', '1'),
(null, 'Willian Paternezi', 'Livina', '0');


create table Usuario(
idUsuario int primary key auto_increment,
nomeUsuario varchar(45),
loginUsuario varchar(45),
senhaUsuario varchar(45),
fkMotorista INT,
foreign key (fkMotorista) references Motorista (idMotorista)
);

insert into Usuario values 
(null, 'Tania Marcela', 'Tania', 'tania123', 1);

insert into Usuario values 
(null, 'Marcela Gonzaga', 'Marcela', 'marcela123', 4),
(null, 'Gonzalves Pedro', 'Pedro', 'pedro123', 3),
(null, 'Rodrigo Marquez', 'Rodrigo', 'rodrigo123', 1),
(null, 'Aurea Monteiro', 'Aurea', 'aurea123', 2);


select * from usuario 
inner join Motorista
on idMotorista = fkMotorista;


create table Agendamento(
idCorrida int primary key auto_increment,
valor float,
partida varchar(45),
destino varchar(45),
Dia DATE,
fkUsuario int,
fkMotorista int,
foreign key (fkUsuario) references Usuario (idUsuario),
foreign key (fkMotorista) references Motorista (idMotorista)
);

insert into Agendamento values
(null, 50, 'São Paulo', 'ABC', '2021-06-01', 1, 1),
(null, 200, 'São Paulo', 'São Paulo', '2021-05-30', 2, 4),
(null, 25, 'ABC', 'ABC', '2021-04-22', 3, 3),
(null, 55, 'ABC', 'Santo André', '2021-05-31', 4, 1),
(null, 35, 'São Caetano do Sul', 'São Paulo', '2021-05-31', 5, 2);

select * from Agendamento;

create table publicacao(
idPublicacao int primary key auto_increment,
nota char(1),
descricao varchar(100),
fkUsuario int,
fkMotorista int,
foreign key (fkUsuario) references Usuario (idUsuario),
foreign key (fkMotorista) references Motorista (idMotorista)
);

insert into publicacao values
(null, 5, 'Gostei Muito legal', 1, 1),
(null, 4, 'Nao tinha agua', 2, 4),
(null, 5, 'Excelente Motorista', 3, 3),
(null, 5, 'Muito Confortavel', 4, 1),
(null, 3, 'Muito transito hoje estava estressante', 5, 2);

select * from Usuario;
select * from Motorista;
select * from Agendamento;
select * from publicacao;

-- SELECT DADOS DA CORRIDA
select nomeUsuario as 'Cliente', nomeMotorista as 'Motorista', valor, partida, destino 
from Usuario
inner join Motorista
on idMotorista = fkMotorista
inner join Agendamento
on idUsuario = fkUsuario;

-- SELECT Publicação
select nomeUsuario as 'Cliente', nota, descricao, nomeMotorista as 'Motorista'
from Usuario 
inner join Motorista
on idMotorista = fkMotorista
inner join Publicacao
on idUsuario = fkUsuario;

-- lucro total
select sum(valor) from Agendamento;

-- media do lucro
select avg(valor) from Agendamento;