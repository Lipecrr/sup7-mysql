drop database if exists financeiro;

create database futebol;
use futebol;

create table times_futebol (
	id int primary key auto_increment,
    nome varchar (100),
    faturamento_anual double
);

insert into times_futebol (nome, faturamento_anual) values ('Flamengo', 1334400.00);
insert into times_futebol (nome, faturamento_anual) values ('Palmeiras', 1274100.00);
insert into times_futebol (nome, faturamento_anual) values ('Corinthians', 1114900.00);
insert into times_futebol (nome, faturamento_anual) values ('São Paulo FC', 731900.00);
insert into times_futebol (nome, faturamento_anual) values ('Fluminense FC', 684200.00);


create table jogadores (
	id int primary key auto_increment,
    nome varchar (100),
    id_time_futebol int,
    
	foreign key (id_time_futebol) references times_futebol (id)
);

insert into jogadores (nome, id_time_futebol) values ('Felipe', 1);
insert into jogadores (nome, id_time_futebol) values ('João', 1);

insert into jogadores (nome, id_time_futebol) values ('Lucas', 2);
insert into jogadores (nome, id_time_futebol) values ('Vanderlei', 2);

insert into jogadores (nome, id_time_futebol) values ('Pedro', 3);
insert into jogadores (nome, id_time_futebol) values ('Arthur', 3);

insert into jogadores (nome, id_time_futebol) values ('Francisco', 4);
insert into jogadores (nome, id_time_futebol) values ('José', 4);

insert into jogadores (nome, id_time_futebol) values ('Frederico', 5);
insert into jogadores (nome, id_time_futebol) values ('Otavio', 5);

select * from jogadores;

select
	jogadores.nome,
    times_futebol.nome
    from jogadores
    inner join times_futebol on (jogadores.id_time_futebol = times_futebol.id);




