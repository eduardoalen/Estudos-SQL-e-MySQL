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