drop database if exists localizacao;

create database localizacao;
use localizacao;

create table estados (
	id int primary key auto_increment,
    nome varchar(100),
    sigla varchar(5)
);

insert into estados (nome, sigla) values ('Santa Catarina', 'SC'),('São Paulo', 'SP');
select * from estados;

create table cidades (
	id int primary key auto_increment,
    nome varchar(100),
    id_estado int,
    
	foreign key (id_estado) references estados (id)
);

insert into cidades (nome, id_estado) values ('Blumenua', 1), ('Gaspar', 1);
insert into cidades (nome, id_estado) values ('Campinas', 2), ('Osasco', 2);
select * from cidades;

select
	cidades.nome as 'Cidade',
    estados.sigla as 'UF'
    from cidades
    inner join estados on (cidades.id_estado = estados.id);
    

create table bairros (
	id int primary key auto_increment,
    nome varchar(100),
    id_cidade int,
    
	foreign key (id_cidade) references cidades (id)
);

insert into bairros (nome, id_cidade) values ('Gloria', 1), ('Centro', 1);
insert into bairros (nome, id_cidade) values ('Santa Luzia', 2), ('Gaspar Alto', 2);
insert into bairros (nome, id_cidade) values ('Cambuí', 3), ('Taquaral', 3);
insert into bairros (nome, id_cidade) values ('Padroeira', 4), ('Vila Yara', 4);
select * from bairros;

select
	bairros.nome as 'Bairro',
    cidades.nome as 'Cidade',
    estados.sigla as 'Estado'
    from bairros
    inner join cidades on (bairros.id_cidade = cidades.id)
    inner join estados on (cidades.id_estado = estados.id);



create table enderecos (
	id int primary key auto_increment,
    logradouro varchar(100),
    numero int,
	complemento varchar(100),
    id_bairro int,
    
    foreign key (id_bairro) references bairros (id)
);

insert into enderecos (logradouro, numero, complemento, id_bairro) values
('Rua das Flores', 123, 'Apt 45', 1),('Avenida Beira-Rio', 500, 'Sala 10', 2),
('Rua das Palmeiras', 78, 'Casa 2', 3),('Rua do Sol', 210, 'Bloco B', 4),
('Rua Joaquim Egídio', 350, 'Apt 12', 5),('Avenida John Boyd Dunlop', 900, 'Sala 5', 6);
select * from enderecos;

select
	enderecos.logradouro as 'Logradouro',
    enderecos.numero as 'Nº',
    enderecos.complemento as 'Complemento',
    bairros.nome as 'Bairro',
    cidades.nome as 'Cidade',
    estados.sigla as 'Estado'
    from enderecos
    inner join bairros on (enderecos.id_bairro = bairros.id)
    inner join cidades on (bairros.id_cidade = cidades.id)
    inner join estados on (cidades.id_estado = estados.id);

