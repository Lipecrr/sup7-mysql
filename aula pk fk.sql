create database mercado;
use mercado;

create table categorias (
	id int primary key auto_increment,
    nome varchar (100)
);

insert into categorias (nome) values ('Hortifruti'); -- id gerado 1
insert into categorias (nome) values ('Embutidos'); -- id gerado 2
select * from categorias;

-- PK -> Primary Key (Chave primaria)
-- FK -> Foreign Key (Chave estrangeira) sempre esta relacionada a outra Chave primaria
-- FK tem que estar atrelada a um PK

create table produtos(
	id int primary key auto_increment,
    nome varchar(100),
    id_categoria int,
    
    foreign key (id_categoria) references categorias (id)
);

insert into produtos (nome, id_categoria) values ('Batatinha', 1);
insert into produtos (nome, id_categoria) values ('Calabresa', 2);
insert into produtos (nome, id_categoria) values ('Bacom', 2);
insert into produtos (nome, id_categoria) values ('Toddy', 3);

select * from produtos;

select 
    produtos.nome,
	categorias.nome
    from produtos
    inner join categorias on (produtos.id_categoria = categorias.id);
    