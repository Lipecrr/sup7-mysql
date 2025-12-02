drop database if exists financeiro;

create database financeiro;
use financeiro;

create table categorias (
	id int primary key auto_increment,
    nome varchar(100)
);

insert into categorias (nome) values ('Receitas');
insert into categorias (nome) values ('Despesas Operacionais');
insert into categorias (nome) values ('Despesas Administrativas');
insert into categorias (nome) values ('Investimentos');
insert into categorias (nome) values ('Tributos e Impostos');
insert into categorias (nome) values ('Folha de Pagamento / RH');
insert into categorias (nome) values ('Custos Fixos');
insert into categorias (nome) values ('Custos Variáveis');
insert into categorias (nome) values ('Transferências / Movimentações Internas');
insert into categorias (nome) values ('Provisões e Contingências');

select * from categorias;

create table entradas (
	id int primary key auto_increment,
    nome varchar(100),
    valor double,
    id_categoria int,
    
	foreign key (id_categoria) references categorias (id)
);

insert into entradas (nome, valor, id_categoria) values ('Venda de Produtos Online', 15000.00, 1);
insert into entradas (nome, valor, id_categoria) values ('Reembolso de Despesas Operacionais', 2500.00, 2);
insert into entradas (nome, valor, id_categoria) values ('Incentivo Fiscal Recebido', 3000.00, 5);
insert into entradas (nome, valor, id_categoria) values ('Retorno de Investimento em Ações', 5000.00, 4);

select * from entradas;

select
	entradas.nome,
    entradas.valor,
    categorias.nome
    from entradas
    inner join categorias on (entradas.id_categoria = categorias.id);

create table saidas (
	id int primary key auto_increment,
    nome varchar(100),
    valor double,
    data_vencimento date,
    status varchar(30),
    id_categoria int,
    
	foreign key (id_categoria) references categorias (id)
);

insert into saidas (nome, valor, data_vencimento, status, id_categoria) values ('Pagamento de Aluguel', 3500.00, '2025-12-05', 'Pendente', 7);
insert into saidas (nome, valor, data_vencimento, status, id_categoria) values ('Conta de Energia Elétrica', 1200.00, '2025-12-10', 'Pago', 8);
insert into saidas (nome, valor, data_vencimento, status, id_categoria) values ('Salário Funcionários', 18000.00, '2025-12-30', 'Pendente', 6);
insert into saidas (nome, valor, data_vencimento, status, id_categoria) values ('Compra de Materiais de Escritório', 800.00, '2025-12-15', 'Pago', 3);
insert into saidas (nome, valor, data_vencimento, status, id_categoria) values ('Pagamento de Tributos Municipais', 2200.00, '2025-12-20', 'Pendente', 5);

select * from saidas;

select
	saidas.nome,
    saidas.valor,
    saidas.data_vencimento,
    saidas.status,
    categorias.nome
    from saidas
    inner join categorias on (saidas.id_categoria = categorias.id);