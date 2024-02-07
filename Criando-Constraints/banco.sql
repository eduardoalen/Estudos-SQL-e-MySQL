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
 