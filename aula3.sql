CREATE DATABASE assistencia_tecnica;
USE assistencia_tecnica;

CREATE TABLE pecas_reposicao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

INSERT INTO pecas_reposicao (nome) VALUES
("Processador Ryzen 5 5600X"),
("Intel Core i5-12400F"),
("GeForce RTX 4060"),
("Radeon RX 6600"),
("SSD NVMe 1TB"),
("Memória RAM 16GB 3200MHz"),
("Placa-mãe B550M"),
("Fonte 650W 80 Plus Bronze"),
("Gabinete Mid Tower"),
("Cooler Air Tower 120mm");

SELECT * FROM pecas_reposicao;

SELECT * FROM pecas_reposicao ORDER BY nome ASC;

SELECT * FROM pecas_reposicao ORDER BY nome DESC;

SELECT * FROM pecas_reposicao LIMIT 5;

SELECT * FROM pecas_reposicao WHERE id > 3;

SELECT * FROM pecas_reposicao WHERE nome LIKE "%Memória%";

SELECT * FROM pecas_reposicao WHERE nome LIKE "%HD";

SELECT * FROM pecas_reposicao WHERE nome LIKE "%Placa%";

SELECT * FROM pecas_reposicao WHERE id > 2 AND id < 7;

-- Consulta o total de registros
SELECT COUNT(*) FROM pecas_reposicao;

-- Consulta se tem um ou outro
SELECT * FROM pecas_reposicao WHERE nome LIKE '%HD%' OR nome LIKE '%SSD%';

SELECT nome FROM pecas_reposicao;

-- Consulta apenas palavras com mais de 10 caracteris
SELECT * FROM pecas_reposicao WHERE LENGTH(nome) > 10;

SELECT id, UPPER(nome) FROM pecas_reposicao;

SELECT id, REPLACE(nome, " ", "-") FROM pecas_reposicao;

SELECT id, SUBSTRING(nome,1 , 3) FROM pecas_reposicao;

SELECT * FROM pecas_reposicao WHERE nome NOT LIKE '%Placa%';

SELECT id, LOWER(nome) FROM pecas_reposicao;

SELECT * FROM pecas_reposicao WHERE id != 5;

SELECT * FROM pecas_reposicao ORDER BY LENGTH(nome);

ALTER TABLE pecas_reposicao ADD COLUMN tipo VARCHAR(50);

UPDATE pecas_reposicao
SET tipo = 'Processador'
WHERE id = 1;

UPDATE pecas_reposicao
SET tipo = 'Processador'
WHERE id = 2;

UPDATE pecas_reposicao
SET tipo = 'Placa de Vídeo'
WHERE id = 3;

UPDATE pecas_reposicao
SET tipo = 'Placa de Vídeo'
WHERE id = 4;

UPDATE pecas_reposicao
SET tipo = 'SSD'
WHERE id = 5;

UPDATE pecas_reposicao
SET tipo = 'Memória'
WHERE id = 6;

UPDATE pecas_reposicao
SET tipo = 'Placa Mãe'
WHERE id = 7;

UPDATE pecas_reposicao
SET tipo = 'Fonte'
WHERE id = 8;

UPDATE pecas_reposicao
SET tipo = 'Gabinete'
WHERE id = 9;

UPDATE pecas_reposicao
SET tipo = 'Cooler'
WHERE id = 10;

-- -----------------

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Memória';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Processador';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Placa de Vídeo';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'SSD';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Fonte';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Placa Mãe';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Gabinete';

SELECT *
FROM pecas_reposicao
WHERE tipo = 'Cooler';

-- --------------------------

ALTER TABLE pecas_reposicao ADD COLUMN quantidade INT;

UPDATE pecas_reposicao SET quantidade = 10;

SELECT * FROM pecas_reposicao WHERE quantidade > 10;

UPDATE pecas_reposicao SET quantidade = 5 WHERE id = 1;
UPDATE pecas_reposicao SET quantidade = 20 WHERE id = 2;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 3;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 4;
UPDATE pecas_reposicao SET quantidade = 24 WHERE id = 5;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 6;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 7;
UPDATE pecas_reposicao SET quantidade = 34 WHERE id = 8;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 9;
UPDATE pecas_reposicao SET quantidade = 0 WHERE id = 10;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 11;
-- ---------------------------------------------------------

SELECT * FROM pecas_reposicao WHERE nome LIKE '%e%';

SELECT * FROM pecas_reposicao WHERE nome LIKE '%a%';

-- -------------------------------------------------------

ALTER TABLE pecas_reposicao ADD COLUMN preco DOUBLE;

UPDATE pecas_reposicao SET preco = 13.39 WHERE id = 1;
UPDATE pecas_reposicao SET preco = 24.99 WHERE id = 2;
UPDATE pecas_reposicao SET preco = 12.99 WHERE id = 3;
UPDATE pecas_reposicao SET preco = 19.99 WHERE id = 4;
UPDATE pecas_reposicao SET preco = 29.99 WHERE id = 5;
UPDATE pecas_reposicao SET preco = 39.99 WHERE id = 6;
UPDATE pecas_reposicao SET preco = 49.99 WHERE id = 7;
UPDATE pecas_reposicao SET preco = 59.99 WHERE id = 8;
UPDATE pecas_reposicao SET preco = 69.99 WHERE id = 9;
UPDATE pecas_reposicao SET preco = 79.99 WHERE id = 10;
UPDATE pecas_reposicao SET preco = 89.99 WHERE id = 11;
-- --------------------------------------------------------

SELECT SUM(preco) FROM pecas_reposicao;

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Memória';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Processador';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Placa de Vídeo';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'SSD';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Fonte';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Placa Mãe';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Gabinete';

SELECT SUM(preco * quantidade)
FROM pecas_reposicao
WHERE tipo = 'Cooler';
-- --------------------------------------------------------------

SELECT MIN(preco) FROM pecas_reposicao;

SELECT MAX(preco) FROM pecas_reposicao;

SELECT AVG(preco) FROM pecas_reposicao;
-- -----------------------------------------------------------

ALTER TABLE pecas_reposicao ADD COLUMN data_pedido DATE;

INSERT INTO pecas_reposicao (nome, tipo, quantidade, preco, data_pedido) 
VALUES ("Processador Intel Core i7", "Processador", 10, 19.99, "2023-01-01");

UPDATE pecas_reposicao SET data_pedido = '2025-11-01' WHERE id = 1;
UPDATE pecas_reposicao SET data_pedido = '2025-10-28' WHERE id = 2;
UPDATE pecas_reposicao SET data_pedido = '2025-09-15' WHERE id = 3;
UPDATE pecas_reposicao SET data_pedido = '2025-08-22' WHERE id = 4;
UPDATE pecas_reposicao SET data_pedido = '2025-07-29' WHERE id = 5;
UPDATE pecas_reposicao SET data_pedido = '2025-06-06' WHERE id = 6;
UPDATE pecas_reposicao SET data_pedido = '2025-05-04' WHERE id = 7;
UPDATE pecas_reposicao SET data_pedido = '2025-04-05' WHERE id = 8;
UPDATE pecas_reposicao SET data_pedido = '2025-03-07' WHERE id = 9;
UPDATE pecas_reposicao SET data_pedido = '2025-02-04' WHERE id = 10;
UPDATE pecas_reposicao SET data_pedido = '2025-01-07' WHERE id = 11;

SELECT id, nome, tipo, quantidade, preco, data_pedido 
FROM pecas_reposicao 
ORDER BY preco ASC;

-- -------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);
-- ----
INSERT INTO clientes (nome) VALUES
("Ana Paula Silva"), 
("João Carlos Santos"),
("Maria Oliveira"),
("Pedro Henrique Costa"),
("Juliana Alves"),
("Roberto Ferreira"),
("Carla Souza"),
("Lucas Rodrigues"),
("Fernanda Lima"),
("Marcos Antônio Pereira");
-- ------
SELECT * FROM clientes;
-- -----
SELECT * FROM clientes ORDER BY nome ASC;
-- ----
SELECT * FROM clientes ORDER BY nome DESC;
-- -----
SELECT * FROM clientes LIMIT 3;
-- ----
SELECT * FROM clientes WHERE id > 5;
-- -----
SELECT * FROM clientes WHERE nome LIKE "A%";
-- ----
SELECT * FROM clientes WHERE nome LIKE "%a";
-- ----
SELECT * FROM clientes WHERE nome LIKE "%Silva%";
-- ---
SELECT * FROM clientes WHERE id > 3 and id < 8;
-- ----
SELECT COUNT(*) FROM clientes;
-- ----
SELECT * FROM clientes WHERE nome LIKE "%Maria%" OR nome LIKE "%João%";
-- ----
SELECT nome FROM clientes;
-- ----
SELECT * FROM clientes WHERE LENGTH(nome) > 15;
-- ----
SELECT id, UPPER(nome) FROM clientes;
-- ---
SELECT id, REPLACE(nome, " ", "-")  FROM clientes;
-- ---
SELECT id, SUBSTRING(nome,1 , 5) FROM clientes;
-- ----
SELECT * FROM clientes WHERE nome NOT LIKE "%Santos%";
-- ---
SELECT id, LOWER(nome) FROM clientes;
-- ---
SELECT * FROM clientes WHERE id != 7;
-- ----
SELECT * FROM clientes ORDER BY LENGTH(nome) ASC;
-- ---
ALTER TABLE clientes ADD COLUMN telefone VARCHAR(20);
-- ---
UPDATE clientes SET telefone = "(11) 98765-4321" WHERE id = 1;
UPDATE clientes SET telefone = "(21) 91234-5678" WHERE id = 2;
UPDATE clientes SET telefone = "(31) 99876-5432" WHERE id = 3;
UPDATE clientes SET telefone = "(41) 92345-6789" WHERE id = 4;
UPDATE clientes SET telefone = "(51) 93456-7890" WHERE id = 5;
UPDATE clientes SET telefone = "(61) 94567-8901" WHERE id = 6;
UPDATE clientes SET telefone = "(71) 95678-9012" WHERE id = 7;
UPDATE clientes SET telefone = "(81) 96789-0123" WHERE id = 8;
UPDATE clientes SET telefone = "(91) 97890-1234" WHERE id = 9;
UPDATE clientes SET telefone = "(11) 98901-2345" WHERE id = 10;
-- ----
SELECT * FROM clientes WHERE telefone LIKE "(11)%";
-- ---
SELECT * FROM clientes WHERE telefone LIKE "%9876%";
-- ---
ALTER TABLE clientes ADD COLUMN email VARCHAR(50);
-- ---
UPDATE clientes SET email = "ana.silva@gmail.com" WHERE id = 1;
UPDATE clientes SET email = "joao.santos@hotmail.com" WHERE id = 2;
UPDATE clientes SET email = "maria.oliveira@yahoo.com.br" WHERE id = 3;
UPDATE clientes SET email = "pedro.costa@gmail.com" WHERE id = 4;
UPDATE clientes SET email = "juliana.alves@outlook.com" WHERE id = 5;
UPDATE clientes SET email = "roberto.ferreira@gmail.com" WHERE id = 6;
UPDATE clientes SET email = "carla.souza@hotmail.com" WHERE id = 7;
UPDATE clientes SET email = "lucas.rodrigues@gmail.com" WHERE id = 8;
UPDATE clientes SET email = "fernanda.lima@yahoo.com.br" WHERE id = 9;
UPDATE clientes SET email = "marcos.pereira@outlook.com" WHERE id = 10;
-- ---
SELECT * FROM clientes WHERE email LIKE "%@gmail.com%";
-- --
SELECT * FROM clientes WHERE email LIKE "%.com.br";
-- ---
ALTER TABLE clientes ADD COLUMN cidade VARCHAR(50);
-- ---
UPDATE clientes SET cidade = "São Paulo" WHERE id = 1;
UPDATE clientes SET cidade = "Rio de Janeiro" WHERE id = 2;
UPDATE clientes SET cidade = "Belo Horizonte" WHERE id = 3;
UPDATE clientes SET cidade = "Curitiba" WHERE id = 4;
UPDATE clientes SET cidade = "Porto Alegre" WHERE id = 5;
UPDATE clientes SET cidade = "Brasília" WHERE id = 6;
UPDATE clientes SET cidade = "Salvador" WHERE id = 7;
UPDATE clientes SET cidade = "Recife" WHERE id = 8;
UPDATE clientes SET cidade = "Belém" WHERE id = 9;
UPDATE clientes SET cidade = "São Paulo" WHERE id = 10;
-- ---
SELECT * FROM clientes WHERE cidade = "São Paulo";
-- ---
ALTER TABLE clientes ADD COLUMN data_cadastro DATE;
-- ---
UPDATE clientes SET data_cadastro = '2024-11-15' WHERE id = 1;
UPDATE clientes SET data_cadastro = '2024-10-20' WHERE id = 2;
UPDATE clientes SET data_cadastro = '2024-09-10' WHERE id = 3;
UPDATE clientes SET data_cadastro = '2024-08-25' WHERE id = 4;
UPDATE clientes SET data_cadastro = '2024-07-30' WHERE id = 5;
UPDATE clientes SET data_cadastro = '2024-06-12' WHERE id = 6;
UPDATE clientes SET data_cadastro = '2024-05-18' WHERE id = 7;
UPDATE clientes SET data_cadastro = '2024-04-22' WHERE id = 8;
UPDATE clientes SET data_cadastro = '2024-03-14' WHERE id = 9;
UPDATE clientes SET data_cadastro = '2024-02-28' WHERE id = 10;
-- ---
SELECT * FROM clientes WHERE MONTH(data_cadastro) = "11";
-- ---
SELECT * FROM clientes WHERE data_cadastro BETWEEN '2024-03-01' AND '2024-06-30';
-- ---
SELECT * FROM clientes ORDER BY data_cadastro ASC;
-- ---
SELECT YEAR(data_cadastro) FROM clientes;
-- ---
SELECT MONTH(data_cadastro) FROM clientes;
-- ---
SELECT DAY(data_cadastro) FROM clientes;
-- ---
SET lc_time_names = 'pt_BR';
SELECT id, nome, DATE_FORMAT(data_cadastro, '%M') FROM clientes;
-- ---
SELECT id, nome, DATE_FORMAT(data_cadastro, '%W') FROM clientes;
-- ---
SELECT id, nome, DATE_FORMAT(data_cadastro, '%d/%m/%Y') FROM clientes;
-- ---
-- Consultar quantos dias se passaram desde o cadastro de cada cliente (usar DATEDIFF com data atual)
SELECT nome, data_cadastro, DATEDIFF(CURDATE(), data_cadastro) FROM clientes;
-- ---
-- Consultar os clientes cadastrados há mais de 180 dias
SELECT nome, data_cadastro, DATEDIFF(CURDATE(), data_cadastro) FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) > 180;
-- ---
-- Consultar os clientes cadastrados há menos de 90 dias
SELECT nome, data_cadastro, DATEDIFF(CURDATE(), data_cadastro) FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) < 90;
-- ---
-- Consultar a data de cadastro adicionando 30 dias (usar DATE_ADD)
SELECT id, nome, data_cadastro, DATE_ADD(data_cadastro, INTERVAL 30 DAY) FROM clientes;
-- ---
-- Consultar a data de cadastro subtraindo 15 dias (usar DATE_SUB)
SELECT id, nome, data_cadastro, DATE_SUB(data_cadastro, INTERVAL 15 DAY) FROM clientes;
-- ---
-- Consultar os clientes que se cadastraram em dias pares do mês
SELECT id, nome, data_cadastro FROM clientes WHERE MOD(DAY(data_cadastro), 2) = 0;
-- ---
-- Consultar os clientes que se cadastraram em dias ímpares do mês
SELECT id, nome, data_cadastro FROM clientes WHERE MOD(DAY(data_cadastro), 2) != 0;
-- ---
-- Consultar os clientes formatando a data como "Mês Ano" exemplo: "Novembro 2024" (usar DATE_FORMAT)
SELECT id, nome, DATE_FORMAT(data_cadastro, '%M %Y') FROM clientes;
-- ---
ALTER TABLE clientes ADD COLUMN status VARCHAR(50);
-- ---
UPDATE clientes SET status = "Ativo" WHERE id = 1;
UPDATE clientes SET status = "Ativo" WHERE id = 2;
UPDATE clientes SET status = "Pendente" WHERE id = 3;
UPDATE clientes SET status = "Ativo" WHERE id = 4;
UPDATE clientes SET status = "Inativo" WHERE id = 5;
UPDATE clientes SET status = "Ativo" WHERE id = 6;
UPDATE clientes SET status = "Ativo" WHERE id = 7;
UPDATE clientes SET status = "Pendente" WHERE id = 8;
UPDATE clientes SET status = "Ativo" WHERE id = 9;
UPDATE clientes SET status = "Inativo" WHERE id = 10;
-- ---
SELECT * FROM clientes WHERE status = "Ativo";
-- ---
SELECT * FROM clientes WHERE status = "Inativo" OR status = "Pendente";
-- ---
ALTER TABLE clientes ADD COLUMN cpf VARCHAR(14);
-- ---
UPDATE clientes SET cpf = "123.456.789-01" WHERE id = 1;
UPDATE clientes SET cpf = "234.567.890-12" WHERE id = 2;
UPDATE clientes SET cpf = "345.678.901-23" WHERE id = 3;
UPDATE clientes SET cpf = "456.789.012-34" WHERE id = 4;
UPDATE clientes SET cpf = "567.890.123-45" WHERE id = 5;
UPDATE clientes SET cpf = "678.901.234-56" WHERE id = 6;
UPDATE clientes SET cpf = "789.012.345-67" WHERE id = 7;
UPDATE clientes SET cpf = "890.123.456-78" WHERE id = 8;
UPDATE clientes SET cpf = "901.234.567-89" WHERE id = 9;
UPDATE clientes SET cpf = "012.345.678-90" WHERE id = 10;
-- ---
SELECT * FROM clientes WHERE cpf LIKE "123%";
-- ---
SELECT * FROM clientes WHERE cpf LIKE "%456%";
-- ---
ALTER TABLE clientes ADD COLUMN total_gasto DOUBLE;
-- ---
UPDATE clientes SET total_gasto = 1250.00 WHERE id = 1;
UPDATE clientes SET total_gasto = 890.50 WHERE id = 2;
UPDATE clientes SET total_gasto = 2340.00 WHERE id = 3;
UPDATE clientes SET total_gasto = 560.00 WHERE id = 4;
UPDATE clientes SET total_gasto = 3120.75 WHERE id = 5;
UPDATE clientes SET total_gasto = 780.00 WHERE id = 6;
UPDATE clientes SET total_gasto = 1890.00 WHERE id = 7;
UPDATE clientes SET total_gasto = 450.00 WHERE id = 8;
UPDATE clientes SET total_gasto = 2670.00 WHERE id = 9;
UPDATE clientes SET total_gasto = 1100.00 WHERE id = 10;
-- ---
SELECT SUM(total_gasto) FROM clientes;
-- ---
SELECT MIN(total_gasto) FROM clientes;
-- ---
SELECT MAX(total_gasto) FROM clientes;
-- ---
SELECT AVG(total_gasto) FROM clientes;
-- ---
SELECT * FROM clientes WHERE total_gasto > 1000.00;
-- ---
SELECT * FROM clientes WHERE total_gasto < 1000.00;
-- ---
SELECT * FROM clientes ORDER BY total_gasto ASC;
-- ---
SELECT * FROM clientes ORDER BY total_gasto DESC LIMIT 5;
-- ---
ALTER TABLE clientes ADD COLUMN data_ultima_compra DATE;
-- ---
UPDATE clientes SET data_ultima_compra = '2024-11-10' WHERE id = 1;
UPDATE clientes SET data_ultima_compra = '2024-11-15' WHERE id = 2;
UPDATE clientes SET data_ultima_compra = '2024-10-20' WHERE id = 3;
UPDATE clientes SET data_ultima_compra = '2024-09-05' WHERE id = 4;
UPDATE clientes SET data_ultima_compra = '2024-08-18' WHERE id = 5;
UPDATE clientes SET data_ultima_compra = '2024-07-22' WHERE id = 6;
UPDATE clientes SET data_ultima_compra = '2024-06-30' WHERE id = 7;
UPDATE clientes SET data_ultima_compra = '2024-05-12' WHERE id = 8;
UPDATE clientes SET data_ultima_compra = '2024-04-08' WHERE id = 9;
UPDATE clientes SET data_ultima_compra = '2024-03-25' WHERE id = 10;













