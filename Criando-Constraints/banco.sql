CREATE TABLE pessoas (
	nome VARCHAR(100) NOT NULL,
    idade INT
);

INSERT INTO pessoas (nome, idade) VALUES ("Eduardo", 21);
INSERT INTO pessoas (nome, idade) VALUES (NULL, 25); -- Vai dar erro 

SELECT * FROM pessoas;


CREATE TABLE pessoas2 (
	nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL
);

INSERT INTO pessoas2 (nome, idade) VALUES ("Eduardo", 21);
INSERT INTO pessoas2 (nome, idade) VALUES (NULL, 25); -- erro
INSERT INTO pessoas2 (nome) VALUES ("Pedro");-- erro
SELECT * FROM pessoas2;


ALTER TABLE pessoas ADD COLUMN email VARCHAR(255) UNIQUE;

INSERT INTO pessoas VALUES ("Maria", 23, "maria@gmail.com");
INSERT INTO pessoas VALUES ("Maria Clara", 23, "maria@gmail.com"); -- erro
SELECT * FROM pessoas;
 

CREATE TABLE PRODUTOS (
	id INT NOT NULL,
    nome VARCHAR(255),
    sku VARCHAR(10),
    PRIMARY KEY (id)
);

 INSERT INTO produtos VALUES (1, "Batedeira", "123ads");

INSERT INTO produtos VALUES (1, "Fogão", "184jdi"); -- ERRO
INSERT INTO produtos VALUES (NULL, "Fogão", "184jdi"); -- ERRO

INSERT INTO produtos VALUES (2, "Fogão", "184jdi");


CREATE TABLE frutas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);
INSERT INTO frutas (nome) VALUES ("Mamão");
INSERT INTO frutas (nome) VALUES ("Banana");
UPDATE frutas SET nome = "Maça" WHERE id = 3;
SELECT * FROM frutas;



CREATE TABLE pessoas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT
);

CREATE TABLE enderecos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    rua VARCHAR(100),
    numero VARCHAR(10),
    pessoa_id INT NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoas(id)
);

INSERT INTO pessoas (nome, idade) VALUES ('Jorge', 35);

INSERT INTO enderecos (rua, numero, pessoa_id) VALUES ("Rua teste", "123", 1);


CREATE INDEX index_nome
ON pessoas(nome);

DROP INDEX index_nome
ON pessoas;


CREATE TABLE contas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    saldo INT,
    data_nascimento DATE
);

SELECT * FROM contas;

CREATE DATABASE banco;

CREATE TABLE contas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    saldo INT,
    data_nascimento DATE
);

CREATE INDEX conta_index
ON contas(saldo);

INSERT INTO contas (nome, sobrenome, saldo, data_nascimento) VALUES ("Mariana", "Sousa", 2000, "1999-03-20");
INSERT INTO contas (nome, sobrenome, saldo, data_nascimento) VALUES ("Pedro", "Pinto", 500, "2006-01-05");
INSERT INTO contas (nome, sobrenome, saldo, data_nascimento) VALUES ("Rosana", "Melo", 7000, "1975-11-02");

SELECT * FROM contas;