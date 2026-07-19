-- SELECT
SELECT * FROM employees;
SELECT first_name, last_name FROM employees;
SELECT salary, job_title FROM employees;
SELECT DISTINCT department_id FROM employees;
SELECT DISTINCT job_title FROM employees;

-- WHERE
SELECT * FROM employees WHERE salary > 60000;
SELECT * FROM employees WHERE salary < 50000;
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 80000;
SELECT * FROM employees WHERE department_id = 5;
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE gender = 'female';
SELECT * FROM employees WHERE hire_date > 2022-01-01;

-- LIKE
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT * FROM employees WHERE last_name LIKE '%a';
SELECT * FROM employees WHERE email LIKE '%gmail%';
SELECT * FROM employees WHERE first_name LIKE '%an%';

-- ORDER BY 

SELECT * FROM employees 
ORDER BY salary ASC;

SELECT * FROM employees 
ORDER BY salary DESC;

SELECT * FROM employees 
ORDER BY first_name ASC;

SELECT * FROM employees 
ORDER BY hire_date DESC;

-- LIMIT
SELECT * FROM employees 
ORDER BY salary DESC 
LIMIT 5;

SELECT * FROM employees 
LIMIT 10;

SELECT * FROM employees 
ORDER BY salary ASC 
LIMIT 5;

-- AGGREGATE FUNCTIONS
SELECT COUNT(*) AS total_employees FROM employees;
SELECT AVG(salary) AS avg_salary FROM employees;
SELECT MAX(salary) AS max_salary FROM employees;
SELECT MIN(salary) AS min_salary FROM employees;
SELECT SUM(salary) AS total_salary FROM employees;

-- GROUP BY
SELECT department_id, COUNT(*) AS employee_count FROM employees
GROUP BY department_id
ORDER BY employee_count DESC;

SELECT  department_id, AVG(salary) AS avg_salary FROM employees
GROUP BY department_id;

SELECT  department_id, MAX(salary) AS max_salary FROM employees
GROUP BY department_id;

SELECT  department_id, MIN(salary) AS min_salary FROM employees
GROUP BY department_id;

SELECT gender, COUNT(*) AS employee_count FROM employees
GROUP BY gender;

-- HAVING 
SELECT department_id, COUNT(*) AS employee_count FROM employees
GROUP BY department_id
HAVING COUNT(*) > 4;

SELECT department_id, AVG(salary) AS avg_salary FROM employees
GROUP BY department_id
HAVING AVG(salary) > 70000;

-- STRING FUNCTIONS
SELECT UPPER(first_name) FROM employees;
SELECT LOWER(last_name) FROM employees;
SELECT CONCAT(first_name,' ', last_name) AS full_name FROM employees;
SELECT email, LENGTH(email) AS email_length FROM employees;

-- DATE FUNCTIONS
SELECT CURDATE();
SELECT NOW();
SELECT first_name, YEAR(hire_date) AS hire_year FROM employees;
SELECT first_name, MONTH(hire_date) AS hire_month FROM employees;

-- MATH FUNCTION
SELECT salary, ROUND(salary) AS rounded,
               CEIL(salary) AS ceiled,
			   FLOOR(salary) AS floored
FROM employees;

SELECT employee_id, MOD(employee_id, 2) AS remainder FROM employees;
