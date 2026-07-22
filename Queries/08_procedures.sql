/*
==============================================================
Project      : SQL Employee Management System
Database     : HRMS Database
Author       : Abhijeet Mehta
File         : 08_procedures.sql

Description:
Practice of SQL Stored Procedures using HRMS database.
==============================================================
*/

-- Show all employees
DELIMITER $$

CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employees;
END $$

DELIMITER ;

CALL GetAllEmployees();


-- Employees by department
DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepartment(IN dept_id INT)
BEGIN
    SELECT *
    FROM employees
    WHERE department_id = dept_id;
END $$

DELIMITER ;

CALL GetEmployeesByDepartment(1);


-- Employees by status
DELIMITER $$

CREATE PROCEDURE GetEmployeesByStatus(IN emp_status VARCHAR(20))
BEGIN
    SELECT *
    FROM employees
    WHERE status = emp_status;
END $$

DELIMITER ;

CALL GetEmployeesByStatus('Active');


-- Employee Count
DELIMITER $$

CREATE PROCEDURE GetEmployeeCount()
BEGIN
    SELECT COUNT(*) AS Total_Employees
    FROM employees;
END $$

DELIMITER ;

CALL GetEmployeeCount();


-- Average Salary
DELIMITER $$

CREATE PROCEDURE GetAverageSalary()
BEGIN
    SELECT AVG(salary) AS Average_Salary
    FROM employees;
END $$

DELIMITER ;

CALL GetAverageSalary();