-- Selecionar colunas especificas na tabela
SELECT nome, cpf FROM pessoas;

-- Inserindo dados nas colunas das tabelas
INSERT INTO pessoas VALUES ("Ana Lima", "8457773", "0000000009", 1000); 
-- OU 
INSERT INTO pessoas (nome, rg, cpf, limite) VALUES ("Ana Lima", "8457773", "0000000009", 1000);

-- Selecionar os dados filtrando de algum valor especifico da coluna
SELECT * FROM pessoas WHERE nome = "Maicon Silva";

-- Atualizar os dados de alguma coluna
UPDATE pessoas SET limite = 10000 WHERE nome = "Maicon Silva";
-- ou
UPDATE pessoas SET rg = "1234", cpf = "321" WHERE nome = "Julia Menezez"


-- Deletar determinado dado da coluna
DELETE FROM pessoas WHERE nome = "Felicia Paz"
-- ou
DELETE FROM pessoas WHERE limite < 900;

