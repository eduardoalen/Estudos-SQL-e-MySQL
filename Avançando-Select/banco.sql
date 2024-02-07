SELECT * FROM salaries WHERE salary >= 155000;

SELECT * FROM titles WHERE emp_no >= 11500;


SELECT DISTINCT gender FROM employees;

SELECT DISTINCT title FROM titles;

SELECT * FROM salaries WHERE salary > 150000 AND from_date > "1991-12-12" AND emp_no > 50000;

SELECT * FROM titles WHERE title = "Senior Enginner" || title = "Staff";

SELECT * FROM titles WHERE NOT title = "Staff" AND NOT title = "Senior Engineer";

SELECT * FROM salaries ORDER BY salary DESC;

SELECT * FROM salaries ORDER BY from_date DESC;

SELECT * FROM titles ORDER BY title DESC;

SELECT * FROM salaries ORDER BY salary DESC LIMIT 10;

SELECT * FROM employees ORDER BY hire_date DESC LIMIT 10;

SELECT * FROM employees WHERE gender = "F" ORDER BY hire_date DESC LIMIT 5;

SELECT * FROM departments ORDER BY dept_name ASC LIMIT 5;

SELECT * FROM titles ORDER BY title ASC LIMIT 5;

SELECT MIN(salary) AS maior_salario FROM salaries;

SELECT MAX(salary) AS maior_salario FROM salaries;

SELECT COUNT(*) AS qtd_salarios FROM salaries WHERE salary > 100000;

SELECT COUNT(*) AS num_dept FROM employees.departments;

SELECT salary FROM salaries;

SELECT AVG(salary) FROM salaries;

SELECT AVG(salary) AS media FROM salaries WHERE salary > 100000;


SELECT SUM(salary) FROM salaries;

SELECT SUM(salary) AS soma_salario FROM salaries WHERE salary > 100000;



SELECT * FROM employees;

SELECT * FROM employees WHERE first_name LIKE "%ber%";

SELECT * FROM employees WHERE last_name LIKE "%ber" AND gender='F';


USE employees;

SELECT * FROM titles;

SELECT * FROM titles WHERE title LIKE "%Engineer%";


SELECT * FROM dept_emp WHERE dept_no IN ('d004', 'd005', 'd006');

SELECT * FROM dept_emp WHERE dept_no IN ('d004', 'd005', 'd006') ORDER BY dept_no DESC;

SELECT * FROM departments WHERE dept_name IN ('Development', 'Marketing');


SELECT * FROM employees.employees;

SELECT * FROM employees WHERE last_name IN ('Facello', 'Peac') AND gender = 'M';


SELECT * FROM dept_emp;

SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd003' AND 'd005';

SELECT * FROM dept_emp WHERE dept_no BETWEEN 'd003' AND 'd005' ORDER BY dept_no DESC;


SELECT * FROM salaries;

SELECT * FROM salaries WHERE salary BETWEEN '125000' AND '175000' ORDER BY salary DESC;


SELECT dept_no AS "Numero da coluna", dept_name AS "Nome da Coluna" FROM departments;