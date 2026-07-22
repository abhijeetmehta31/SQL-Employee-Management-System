/*
==============================================================
Project      : SQL Employee Management System
Database     : HRMS Database
Author       : Abhijeet Mehta
File         : 09_functions.sql

Description:
Practice of SQL Functions.

==============================================================
*/

-- Total Employees
SELECT COUNT(*) AS Total_Employees
FROM employees;

-- Average Salary
SELECT AVG(salary) AS Average_Salary
FROM employees;

-- Highest Salary
SELECT MAX(salary) AS Highest_Salary
FROM employees;

-- Lowest Salary
SELECT MIN(salary) AS Lowest_Salary
FROM employees;

-- Total Salary
SELECT SUM(salary) AS Total_Salary
FROM employees;

-- Employee Full Name
SELECT
employee_id,
CONCAT(first_name,' ',last_name) AS Full_Name
FROM employees;

-- Upper Case Names
SELECT UPPER(first_name) AS First_Name
FROM employees;

-- Lower Case Email
SELECT LOWER(email) AS Email
FROM employees;

-- Email Length
SELECT email,
LENGTH(email) AS Email_Length
FROM employees;

-- Current Date & Time
SELECT CURDATE(), NOW();

-- Hire Year
SELECT
employee_id,
YEAR(hire_date) AS Hire_Year
FROM employees;

-- Salary Rounding
SELECT
salary,
ROUND(salary) AS Rounded_Salary
FROM employees;