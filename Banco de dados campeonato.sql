create database CampeonatoBrasileiro;
use CampeonatoBrasileiro;

create table Times(
id_times tinyint auto_increment primary key,
shortnome char (3) not null unique,
nome varchar (20) not null,
estadio varchar (30) not null,
pontuacao tinyint default 0
)default charset = utf8;

drop table times;

create table Jogadoras(
id_jogadoras int auto_increment primary key,
cpf char (14) not null unique,
nome varchar (25) not null,
idade tinyint not null,
posicao varchar (15),
amarelo tinyint default 0,
vermelho tinyint default 0,
qualidade char (20),
salario double,
id_times tinyint not null,
foreign key (id_times) references Times (id_times)
)default charset = utf8;

create table ComissaoTecnica(
id_comissaotec int auto_increment primary key,
cpf char (14) not null unique,
nome varchar (25) not null,
idade tinyint not null,	
qualidade char (20),
salario double,
cargo varchar (12) not null,
id_times tinyint not null,
foreign key (id_times) references Times (id_times)
)default charset = utf8;

drop table comissaotecnica;

create table Partidas(
id_partidas int primary key auto_increment not null,
placar1 int default 0,
placar2 int default 0,
rodada int default 1,
id_times1 int not null references Times (id_times),
id_times2 int not null references Times (id_times)
)default charset = utf8;
