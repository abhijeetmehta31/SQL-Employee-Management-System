/*
==============================================================
Project      : SQL Employee Management System
Database     : HRMS Database
Author       : Abhijeet Mehta
File         : 05_subqueries.sql

Description:
Practice of SQL Subqueries using HRMS database.

==============================================================
*/

-- SECTION 1 – Single Row Subqueries

-- Employee with highest salary.
SELECT employee_id, first_name, salary 
FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Employee with lowest salary.
SELECT employee_id, first_name, salary 
FROM employees 
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Employees earning more than average salary.
SELECT employee_id, first_name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Employees earning less than average salary.
SELECT employee_id, first_name, salary 
FROM employees 
WHERE salary < (SELECT AVG(salary) FROM employees);

-- Employees hired after the latest employee of department 2.
SELECT employee_id, first_name, last_name, hire_date, department_id
FROM employees
WHERE hire_date > (
    SELECT MAX(hire_date)
    FROM employees
    WHERE department_id = 2
);

-- Employees working in the department "IT" (using subquery).
SELECT * FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Information Technology'
);

-- Employees whose salary equals the maximum salary.
SELECT * FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees) ;

-- Employees whose salary equals the minimum salary.
SELECT * FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees) ;

-- Employees with the same salary as employee_id = 5.
SELECT  employee_id, first_name, last_name, salary FROM employees
WHERE salary = (SELECT salary FROM employees WHERE employee_id = 5) 
AND employee_id != 5;

-- Employees hired on the same date as employee_id = 3.
SELECT employee_id, first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
    SELECT hire_date 
    FROM employees 
    WHERE employee_id = 3
)
AND employee_id != 3;

-- SECTION 2 – Multiple Row Subqueries
-- Employees working in departments located in Mumbai.
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
WHERE  department_id IN (
        SELECT department_id 
        FROM Departments 
        WHERE location = 'Mumbai'
    );

-- Employees assigned to active projects.
SELECT employee_id,
       CONCAT(first_name,' ',last_name) AS Name
FROM employees
WHERE employee_id IN
(
    SELECT ep.employee_id
    FROM employee_projects ep
    JOIN projects p
    ON ep.project_id = p.project_id
    WHERE p.project_status = 'Active'
);

-- Employees who have applied for leave
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
WHERE employee_id IN (
    SELECT  employee_id 
    FROM leaves
    WHERE leave_status = 'Pending'
);

-- Employees working in HR or Finance.
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS Name FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN ('Human Resources', 'Finance')
);

-- Employees with salaries greater than all employees in HR.
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
WHERE salary > (
                SELECT MAX(salary)
                FROM employees 
                INNER JOIN departments ON departments.department_id = employees.department_id
                WHERE departments.department_name = 'Human Resources'
                );

-- Employees with salaries less than any employee in IT.
SELECT employee_id, CONCAT(first_name, ' ', last_name) AS Name
FROM employees
WHERE salary < (
                SELECT MIN(salary)
                FROM employees 
                INNER JOIN departments ON departments.department_id = employees.department_id
                WHERE departments.department_name = 'Information Technology'
                );

-- SECTION 3 – Correlated Subqueries
-- Employees earning more than the average salary of their department.
SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Highest-paid employee in each department. 
SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Lowest-paid employee in each department.
SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary = (
    SELECT MIN(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Employees whose salary is above their department average.
SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Employees whose salary is below their department average.
SELECT
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS Name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary < (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- SECTION 4 – EXISTS / NOT EXISTS
-- Employees having salary records.
SELECT employee_id,
       CONCAT(first_name, ' ', last_name) AS Full_Name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM salaries s
    WHERE s.employee_id = e.employee_id
);

-- Employees without salary records.
SELECT employee_id,
       CONCAT(first_name, ' ', last_name) AS Full_Name
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM salaries s
    WHERE s.employee_id = e.employee_id
);

-- SECTION 5 – HRMS Reports
-- Highest-paid employee report.
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- Lowest-paid employee report.
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

-- Department-wise highest salary.
SELECT
    d.department_name,
    MAX(e.salary) AS Highest_Salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Department-wise lowest salary.
SELECT
    d.department_name,
    MIN(e.salary) AS Lowest_Salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Employees above company average salary.
SELECT employee_id,
       CONCAT(first_name,' ',last_name) AS Full_Name,
       salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

-- Employees below company average salary.
SELECT employee_id,
       CONCAT(first_name,' ',last_name) AS Full_Name,
       salary
FROM employees
WHERE salary <
(
    SELECT AVG(salary)
    FROM employees
);

-- Employees with multiple projects.
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS Full_Name,
    COUNT(ep.project_id) AS Total_Projects
FROM employees e
JOIN employee_projects ep
ON e.employee_id = ep.employee_id
GROUP BY e.employee_id, e.first_name, e.last_name
HAVING COUNT(ep.project_id) > 1;

-- Employees with no leaves.
SELECT
    employee_id,
    CONCAT(first_name,' ',last_name) AS Full_Name
FROM employees e
WHERE NOT EXISTS
(
    SELECT 1
    FROM leaves l
    WHERE l.employee_id = e.employee_id
);

-- Employees with no attendance.
SELECT
    employee_id,
    CONCAT(first_name,' ',last_name) AS Full_Name
FROM employees e
WHERE NOT EXISTS
(
    SELECT 1
    FROM attendance a
    WHERE a.employee_id = e.employee_id
);

-- Employees eligible for bonus (basic_salary > average basic_salary).
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS Full_Name,
    s.basic_salary
FROM employees e
JOIN salaries s
ON e.employee_id = s.employee_id
WHERE s.basic_salary >
(
    SELECT AVG(basic_salary)
    FROM salaries
);
