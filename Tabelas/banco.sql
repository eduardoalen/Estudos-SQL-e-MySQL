-- Inserindo dados nas colunas
USE teste_tipo_dados;
CREATE TABLE aniversario (nome VARCHAR(100), data_nascimento DATE);
INSERT INTO aniversario (nome, data_nascimento) VALUES ("Pedro", "2001-09-20");

-- Adicionando mais colunas
CREATE TABLE funcionarios (nome VARCHAR(100));
ALTER TABLE funcionarios ADD COLUMN profissao VARCHAR(100);
INSERT INTO funcionarios (nome, profissao) VALUES ("Jose", "Programador");
SELECT * FROM teste_tipo_dados.funcionarios;

--  Removendo colunas
ALTER TABLE funcionarios DROP COLUMN profissao;
SELECT * FROM funcionarios;

-- Alterando colunas
 ALTER TABLE funcionarios ADD COLUMN data_nascimento VARCHAR(100);
 ALTER TABLE funcionarios MODIFY COLUMN data_nascimento DATE;
 SELECT * FROM funcionarios;