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


-- JOIN
SELECT employees.first_name, employees.last_name, salaries.salary 
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT employees.first_name, employees.last_name, salaries.salary AS salario 
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000;

SELECT employees.first_name, employees.last_name, salaries.salary AS salario 
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary >= 120000 
ORDER BY salaries.salary DESC;

SELECT employees.first_name AS nome, employees.gender AS genero, titles.title AS cargo
FROM employees INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE titles.title = 'Senior Engineer';


-- LEFT JOIN
SELECT pessoas.nome, enderecos.rua
FROM pessoas
LEFT JOIN enderecos
ON pessoas.id = enderecos.pessoa_id;

-- RIGHT JOIN
SELECT enderecos.rua, pessoas.nome
FROM enderecos
RIGHT JOIN pessoas
ON pessoas.id = enderecos.pessoa_id;


-- UTILIZAR MAIS DE DOIS JOINS
SELECT employees.first_name, salaries.salary, titles.title
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE salaries.salary > 125000;

-- JUNTAR 2 SELECTs EM 1 (UNION) / não duplica os valores
SELECT dept_no FROM departments
UNION SELECT dept_no FROM dept_emp;

SELECT dept_no FROM departments;
SELECT dept_no FROM dept_emp ORDER BY dept_no DESC;

INSERT INTO departments VALUES ('d010', 'SEO');
SELECT * FROM departments;

-- JUNTAR 2 SELECTs EM 1 (UNION) / duplica os valores
SELECT dept_no FROM departments
UNION ALL SELECT dept_no FROM dept_emp;

-- AGRUPAR COLUNAS E CHECAR A QUANTIDADE DELAS
SELECT gender, COUNT(gender) AS 'Qtd por gênero'
FROM employees
GROUP BY gender;
-- EXEMPLO DE GROUP BY
SELECT hire_date AS 'Data contratação', COUNT(hire_date) AS 'Qtd de contratados'
FROM employees
GROUP BY hire_date
ORDER BY COUNT(hire_date) DESC;

-- UTILIZANDO HAVING
SELECT hire_date AS 'Data contratação', COUNT(hire_date) AS 'Qtd de contratados'
FROM employees
GROUP BY hire_date
HAVING COUNT(hire_date) > 100
ORDER BY COUNT(hire_date) DESC;

SELECT title, COUNT(title) AS 'titulos'
FROM titles
GROUP BY title
HAVING COUNT(title) > 100000;


-- UTILIZANDO SUBQUERY
SELECT * FROM salaries;

SELECT emp_no, first_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
ORDER BY emp_no DESC;



-- Utilizando o EXISTS
USE employees;

SELECT emp_no, first_name, last_name, (
	SELECT SUM(salary)
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
) AS soma_salario
FROM employees
WHERE EXISTS (
	SELECT salary
    FROM salaries
    WHERE employees.emp_no = salaries.emp_no
    GROUP BY salary
    HAVING SUM(salary) > 100000
);


-- Utilizando o ANY
SELECT first_name
FROM employees
WHERE emp_no = ANY (
	SELECT emp_no
    FROM salaries
    WHERE salary > 150000
);