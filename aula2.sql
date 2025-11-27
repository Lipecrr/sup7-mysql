-- Green Field novo projeto
-- Brown Field projeto existente

CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
id INT PRIMARY KEY AUTO_INCREMENT
);

-- Consultar como esta a tabela
DESCRIBE alunos;

-- Adicionar nova coluna na tabela
ALTER TABLE alunos ADD COLUMN nome VARCHAR(50);

-- Adicionar um registro (cad aluno)
INSERT INTO alunos (nome) VALUE ('Pedrinho');
INSERT INTO alunos (nome) VALUE ('Aninha');
INSERT INTO alunos (nome) VALUE ('Mariazinha');
INSERT INTO alunos (nome) VALUE ('Clebinho');
INSERT INTO alunos (nome) VALUE ('Luiza');
INSERT INTO alunos (nome) VALUE ('Fabiana');
INSERT INTO alunos (nome) VALUE ('Thaiz');
INSERT INTO alunos (nome) VALUE ('Du dudu e edu');

-- Consultar o nome dos aluinos em ordem alfabetica
SELECT id,nome FROM alunos ORDER BY nome;

ALTER TABLE alunos ADD COLUMN nota1 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota2 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota3 DOUBLE;

-- Gerar o crate table da tabela
SHOW CREATE TABLE alunos;

-- Consultando o id do aluno que contem tal nome
SELECT id FROM alunos WHERE nome = 'Pedrinho';
UPDATE alunos SET nota1 = 9, nota2 = 8.5, nota3 = 6.5 WHERE id = 1;
UPDATE alunos SET nota1 = 5, nota2 = 8, nota3 = 1.5 WHERE id = 2;
UPDATE alunos SET nota1 = 7.5, nota2 = 8.0, nota3 = 6.5 WHERE id = 4;
UPDATE alunos SET nota1 = 9, nota3 = 9.5 WHERE id = 5;
UPDATE alunos SET nota2 = 7.9, nota3 = 8.8 WHERE id = 6;
UPDATE alunos SET nota1 = 6.8, nota2 = 7.3 WHERE id = 7;
UPDATE alunos SET nota1 = 5.5, nota2 = 6.2, nota3 = 7.1 WHERE id = 8;

SELECT * FROM alunos;

-- Consultar a menor nota1
SELECT MIN(nota1) AS 'Menor Nota' FROM alunos;

-- Consultar a maior das nota1
SELECT MAX(nota1) AS 'Maior Nota' FROM alunos;

-- Consultar a media das nota1
SELECT AVG(nota1) AS 'Media Nota' FROM alunos;

-- Consultar a soma das nota1
SELECT SUM(nota1) AS 'Soma das Notas' FROM alunos;

SELECT id, nome, nota1 FROM alunos WHERE nota1 IS NULL;
UPDATE alunos SET nota1 = 0 WHERE id = 3;
UPDATE alunos SET nota1 = 2.0 WHERE id = 6;

SELECT id, nome, nota2 FROM alunos WHERE nota2 IS NULL;
UPDATE alunos SET nota2 = 1.4 WHERE id = 3;
UPDATE alunos SET nota2 = 10 WHERE id = 5;

SELECT id, nome, nota3 FROM alunos WHERE nota3 IS NULL;
UPDATE alunos SET nota3 = 0 WHERE id = 3;
UPDATE alunos SET nota3 = 6.8 WHERE id = 7;


-- SELECT calcular média
SELECT nome, FORMAT((nota1 + nota2 + nota3) / 3, 2) FROM alunos;

-- Consultar os aprovado acima ou igual a 7
SELECT
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) 
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 >= 7;
    
-- Consultar os em exame acima ou igual a 6
SELECT
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2)
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 >= 6 and (nota1 + nota2 + nota3) / 3 < 7;

-- Consultar os reprovados
SELECT
	nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2)
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 < 6;


CREATE TABLE jogos(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    UNIQUE(nome)
);

INSERT INTO jogos(nome) VALUES
("Medal of Honor"),
("Metal Gear Solid"),
("Twisted Metal"),
("The Riftbreaker: Metal Terror"),
("Metal Slug");

-- Consultar os jogos filtrando por uma busca parcial no começo de "Me"
SELECT * FROM jogos WHERE nome LIKE "Me%";

-- Consultar os jogos que terminam com "Metal"
SELECT * FROM jogos WHERE nome LIKE "%Metal";

-- Consultar os jogos que contem  "Me"
SELECT * FROM jogos WHERE nome LIKE "%Me%";


-- Consultar os jogos em ordem crescente
SELECT id, nome FROM jogos ORDER BY nome ASC;

-- Consultar os jogos em ordem decrescente
SELECT id, nome FROM jogos ORDER BY nome DESC;

-- Adicionar um coluna de data de nascimento na tabela de alunos
ALTER TABLE alunos ADD COLUMN data_nascimento DATE;

-- Definir data de nascimento para Thaiz (id 7)
UPDATE alunos SET data_nascimento = '2000-11-24' WHERE id = 7;
-- DEfinir data de nascimento para CLebinho (id 4)
UPDATE alunos SET data_nascimento = '1994-07-03' WHERE id = 4;
UPDATE alunos SET data_nascimento = '2001-12-7' WHERE id = 1;
UPDATE alunos SET data_nascimento = '1990-08-09' WHERE id = 2;
UPDATE alunos SET data_nascimento = '1980-12-25' WHERE id = 3;
UPDATE alunos SET data_nascimento = '1975-11-30' WHERE id = 5;
UPDATE alunos SET data_nascimento = '2009-2-9' WHERE id = 6;
UPDATE alunos SET data_nascimento = '2001-8-20' WHERE id = 8;

-- Consultar a data de nascimento formatada no padrão pt-br
SELECT id, nome, DATE_FORMAT(data_nascimento, '%d/%m/%Y')
	FROM alunos;
    
-- Consultar mes de uma data
SELECT MONTH(data_nascimento) FROM alunos;

-- Consultar ano de uma data
SELECT YEAR(data_nascimento) FROM alunos;

-- Consultar dia de uma data
SELECT DAY(data_nascimento) FROM alunos;

-- Consultar a hora
SELECT HOUR('2020-12-31 22:59:01');

-- Consultar o minuto
SELECT MINUTE('2020-12-31 22:59:01');

-- Consultar o segundo
SELECT SECOND('2020-12-31 22:59:01');

-- Consultar os alunos da decada de 70 ate 90
SELECT nome, data_nascimento, YEAR(data_nascimento)
	FROM alunos
    WHERE YEAR(data_nascimento) >= 1970 AND YEAR(data_nascimento) <= 1999
    ORDER BY data_nascimento ASC;
    
-- Operadores relacionais
-- Maior				>
-- Maior ou igual		>=
-- Menor				<
-- Menor ou igual		<=
-- Diferente			!=
-- Igual	   			 =

-- Operadores lógicos
-- E 					and
-- Ou					or

-- Consultar o nome dos alunos em maiusculo
SELECT UPPER(nome) FROM alunos;

-- Consultar o nome dos alunos em minusculo
SELECT LOWER(nome) FROM alunos;

-- Tarefinha de casa:
-- Substring
 -- Esta extraindo as 3 primeiras letras do nome dos alunos
SELECT SUBSTRING(nome,1 , 3) FROM alunos;

-- Replace
 -- Esta substintuindo toas as letras 'i' por 'u' no nome dos alunos
SELECT REPLACE(nome, 'i', 'u') FROM alunos;


-- Length

SELECT LENGTH(nome) from alunos;

-- Concat


-- LTrim


-- RTrim


-- Trim



    
    
