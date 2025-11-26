-- Criar o banco de dados

CREATE DATABASE locadora;

-- Selecionar o banco de dados
USE locadora;

-- Consultar tabelas
SHOW TABLES;

-- Criar tabela
CREATE TABLE usuarios(
	id INT,
    nome varchar(30) -- nome pode conter no maximo ate 30 caracteres
);

-- Inserir registro
INSERT INTO usuarios(id, nome) VALUE (1, "Carlos");

-- Consultar registros
SELECT id, nome FROM usuarios;

INSERT INTO usuarios(id, nome) VALUE (2, "Leidiane");

INSERT INTO usuarios(id, nome) VALUE (3, "Vand");
INSERT INTO usuarios(id, nome) VALUE (4, "João Vitor");
INSERT INTO usuarios(id, nome) VALUE (5, "Felipe");
INSERT INTO usuarios(id, nome) VALUE (6, "John");
INSERT INTO usuarios(id, nome) VALUE (7, "Vitor");
INSERT INTO usuarios(id, nome) VALUE (8, "Joshua");
INSERT INTO usuarios(id, nome) VALUE (9, "Gustavo");

-- Apagar o registro
DELETE FROM usuarios WHERE id = 9;

-- Consultar registros
SELECT id, nome FROM usuarios;

-- Alterar o nome de um registro
UPDATE usuarios SET nome = "Carlos da Silva" WHERE id = 1;

-- --------------------------------------------------------

CREATE TABLE filmes(
	id INT,
    titulo VARCHAR(50),
	autor VARCHAR(50),
    classificacao INT,
    genero VARCHAR(30)
);

INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (1, "A lagoa azul", "Randal Kleiser", 16, "Drama");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (2, "Exterminador do Futuro", "James Cameron", 18, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (3, "Vingadores: Ultimato", "Anthony e Joe Russo", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (4, "Homem de Ferro", "Jon Favreau", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (5, "Pantera Negra", "Ryan Coogler", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (6, "Capitão América: o Soldado Invernal", "Anthony e Joe Russo", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (7, "Liga da Justiça", "Zack Snyder", 14, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (8, "Mulher-Maravilha", "Patty Jenkins", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (9, "Batman: O Cavaleiro das Trevas", "Christopher Nola", 14, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (10, "Aquaman", "James Wan", 12, "Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (11, "Shazam!", "David F. Sandberg", 12, "Comédia/Ação");
INSERT INTO filmes(id, titulo, autor, classificacao, genero) VALUE (12, "Thor: Ragnarok", "Taika Waititi", 12, "Ação");

SELECT id, titulo, autor, classificacao, genero FROM filmes;

-- --------------------------------------------------------

CREATE TABLE jogos (
    id INT,
    nome VARCHAR(50),
    faturamento DOUBLE,
    preco_unitario DOUBLE,
    data_lancamento DATE,
    produtora VARCHAR(50),
    distribuidora VARCHAR(50),
    xbox BIT,
    ps BIT,
    pc BIT,
    switch BIT
);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (1, 'The Witcher 3', 500000000, 199.90, '2015-05-19', 'CD Projekt Red', 'CD Projekt', 1, 1, 1, 1);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (2, 'Minecraft', 3800000000, 99.90, '2011-11-18', 'Mojang Studios', 'Mojang/Microsoft', 1, 1, 1, 1);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (3, 'GTA V', 8000000000, 199.90, '2013-09-17', 'Rockstar North', 'Rockstar Games', 1, 1, 1, 0);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (4, 'The Legend of Zelda: BOTW', 1900000000, 299.90, '2017-03-03', 'Nintendo', 'Nintendo', 0, 0, 0, 1);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (5, 'Elden Ring', 1200000000, 299.90, '2022-02-25', 'FromSoftware', 'Bandai Namco', 1, 1, 1, 0);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (6, 'Halo Infinite', 500000000, 249.90, '2021-12-08', '343 Industries', 'Xbox Game Studios', 1, 0, 1, 0);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (7, 'God of War', 1100000000, 199.90, '2018-04-20', 'Santa Monica Studio', 'Sony', 0, 1, 1, 0);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (8, 'Red Dead Redemption 2', 3200000000, 299.90, '2018-10-26', 'Rockstar Studios', 'Rockstar Games', 1, 1, 1, 0);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (9, 'Mario Kart 8 Deluxe', 3000000000, 299.90, '2017-04-28', 'Nintendo', 'Nintendo', 0, 0, 0, 1);

INSERT INTO jogos (id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch)
VALUES (10, 'Cyberpunk 2077', 1000000000, 249.90, '2020-12-10', 'CD Projekt Red', 'CD Projekt', 1, 1, 1, 0);

SELECT id, nome, faturamento, preco_unitario, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch FROM jogos;

-- -----------------------------------------------------------------------------------------------------------------------------

CREATE TABLE cds (
    id INT,
    nome VARCHAR(255),
    banda VARCHAR(255),
    duracao VARCHAR(50),
    quantidade_musicas INT,
    ano_lancamento VARCHAR(10),
    genero VARCHAR(100)
);

SELECT id, nome, banda, duracao, quantidade_musicas, ano_lancamento, genero FROM cds;

INSERT INTO cds VALUES (1, 'Sundowning', 'Sleep T0ken', '52:31', 12, 2019, 'Alternativ');
INSERT INTO cds VALUES (2, 'Take Me Back To Eden', 'Sleep Token', '', 12, '2023', 'Alt Metal');
INSERT INTO cds VALUES (3, 'Eternal Blue', 'Sleep Token', 'not sure', NULL, '202?', 'Metal');

INSERT INTO cds VALUES (4, 'Meteora', 'Linkin Prak', '36:43', 13, 2003, 'N-U metal');
INSERT INTO cds VALUES (5, 'Hbrid Theory', 'Linkin Park', '37:??', 12, 2000, 'Nu-metal');
INSERT INTO cds VALUES (6, 'Minutes to Midnite', 'Lincon Park', '44:34', NULL, 2007, '');

INSERT INTO cds VALUES (7, 'Holy Hell', 'Architects', '50:05', 11, '2018', 'Metalcore');
INSERT INTO cds VALUES (8, 'For Those That Wish to Exist', 'Architectts', NULL, 15, '2021', 'Metal core');
INSERT INTO cds VALUES (9, 'Lost Forever // Lost Togther', 'Architecs', '42:14', 10, '20X4', 'Metalcroe');

INSERT INTO cds VALUES (10, 'Paranoid', 'Black Sabath', '42:06', 8, 1970, 'Heavy Metal');
INSERT INTO cds VALUES (11, 'Black Sabbath', 'Black Sabbath', '38??', NULL, 1970, '');
INSERT INTO cds VALUES (12, 'Master of Reality', 'Blk Sabbath', '', 8, '1971', 'Metal');

INSERT INTO cds VALUES (13, 'The Death of Peace of Mind', 'Bad Omens', '53:44', 15, 2022, 'Metalcor');
INSERT INTO cds VALUES (14, 'Finding God Before God Finds Me', 'Bad Omens', NULL, 10, '2019', 'Meta core');
INSERT INTO cds VALUES (15, 'B A D O M E N S', 'Bad Omns', '??:??', 10, '2016', 'Rock?');

INSERT INTO cds VALUES (16, 'Inhuman Rampage', 'Dragon Force', '55:??', 8, 2005, 'Power metal');
INSERT INTO cds VALUES (17, 'Ultra Beatdown', 'DragonForce', '59:30', NULL, '', 'Power-Metal');
INSERT INTO cds VALUES (18, 'Valley of the Damed', 'Dragon F0rce', '40:12', 8, 2003, 'Powr metal');

INSERT INTO cds VALUES (19, 'The Black Parade', 'My Chemical Romnace', '51:53', 14, 2006, 'Emo rock');
INSERT INTO cds VALUES (20, 'Three Cheers for Sweet Revenge', 'My Chemicl Romance', '', NULL, 2004, 'Punk/Emo');
INSERT INTO cds VALUES (21, 'Danger Days', 'My Chemical Romance', '53min', 15, '2010', '');

INSERT INTO cds VALUES (22, 'By the Way', 'Restart', '40:15', 10, 2010, 'Pop Rock');
INSERT INTO cds VALUES (23, 'R(e)start', 'Restar', NULL, 12, '2011', 'P0p rock');
INSERT INTO cds VALUES (24, 'Renascer', 'Restart', '??', 9, '', 'Pop');

INSERT INTO cds VALUES (25, 'Millenial Rhapsody', 'Oliver Malcom', NULL, NULL, '20??', 'Alt Pop');

-- Corrigindo erros
UPDATE cds SET banda = 'Sleep Token' WHERE id = 1;

UPDATE cds SET duracao = '63:26' WHERE id = 2;

UPDATE cds SET ano_lancamento = '2021' WHERE id = 3;
UPDATE cds SET duracao = '83:45' WHERE id = 3;

UPDATE cds SET banda = 'Linkin Park' WHERE id = 4;

UPDATE cds SET nome = 'Hybrid Theory' WHERE id = 5;
UPDATE cds SET duracao = '37:45' WHERE id = 5;

UPDATE cds SET banda = 'Linkin Park' WHERE id = 6;
UPDATE cds SET quantidade_musicas = 30 WHERE id = 6;
UPDATE cds SET genero = 'Rock' WHERE id = 6;
UPDATE cds SET nome = 'Minutes to Midnight' WHERE id = 6;

UPDATE cds SET banda = 'Architects' WHERE id = 8;
UPDATE cds SET duracao = '70:20' WHERE id = 8;
UPDATE cds SET genero = 'Metalcore' WHERE id = 8;

UPDATE cds SET nome = 'Lost Forever // Lost Together' WHERE id = 9;
UPDATE cds SET banda = 'Architects' WHERE id = 9;
UPDATE cds SET ano_lancamento = '2024' WHERE id = 9;
UPDATE cds SET genero = 'Metalcore' WHERE id = 9;

UPDATE cds SET banda = 'Black Sabbath' WHERE id = 10;

UPDATE cds SET duracao = '104:20' WHERE id = 11;
UPDATE cds SET genero = 'Metal' WHERE id = 11;

UPDATE cds SET banda = 'Black Sabbath' WHERE id = 12;
UPDATE cds SET duracao = '97:24' WHERE id = 12;

UPDATE cds SET genero = 'Metalcore' WHERE id = 13;

UPDATE cds SET duracao = '78:34' WHERE id = 14;
UPDATE cds SET genero = 'Metalcore' WHERE id = 14;

UPDATE cds SET banda = 'Bad Omens' WHERE id = 15;
UPDATE cds SET duracao = '100:43' WHERE id = 15;

UPDATE cds SET duracao = '55:87' WHERE id = 16;

UPDATE cds SET quantidade_musicas = 12 WHERE id = 17;
UPDATE cds SET ano_lancamento = '2013' WHERE id = 17;

UPDATE cds SET banda = 'DragonForce' WHERE id = 18;
UPDATE cds SET nome = 'Valley of the Damned' WHERE id = 18;
UPDATE cds SET genero = 'Power metal' WHERE id = 18;

UPDATE cds SET banda = 'My Chemical Romance' WHERE id = 19;

UPDATE cds SET duracao = '93:34' WHERE id = 20;
UPDATE cds SET quantidade_musicas = 15 WHERE id = 20;
UPDATE cds SET banda = 'My Chemical Romance' WHERE id = 20;

UPDATE cds SET genero = 'Rock' WHERE id = 21;

UPDATE cds SET banda = 'Restart' WHERE id = 23;
UPDATE cds SET duracao = '69:44' WHERE id = 23;
UPDATE cds SET genero = 'Pop rock' WHERE id = 23;

UPDATE cds SET ano_lancamento = '2001' WHERE id = 24;
UPDATE cds SET duracao = '78:45' WHERE id = 24;

UPDATE cds SET banda = 'Oliver Malcolm' WHERE id = 25;
UPDATE cds SET duracao = '43:67' WHERE id = 25;
UPDATE cds SET quantidade_musicas = 19 WHERE id = 25;
UPDATE cds SET ano_lancamento = '2010' WHERE id = 25;
