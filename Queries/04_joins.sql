/*
==============================================================
Project      : SQL Employee Management System
Database     : HRMS Database
Author       : Abhijeet Mehta
File         : 04_joins.sql

Description:
Practice of SQL JOIN operations using HRMS database.

==============================================================
*/

-- SECTION 1 – INNER JOIN
-- Employee Name + Department Name
SELECT CONCAT(first_name, ' ', last_name) AS Name, departments.department_name AS Department
FROM employees
INNER JOIN departments ON departments.department_id = employees.department_id;

-- Employee Name + Department Location
SELECT CONCAT(first_name, ' ', last_name) AS Name, departments.location AS Department_location
FROM employees
INNER JOIN departments ON departments.department_id = employees.department_id;

-- Employee Name + Project Name
SELECT CONCAT(first_name, ' ', last_name) AS Name, projects.project_name AS Project_Name
FROM employees
INNER JOIN employee_projects ON employees.employee_id = employee_projects.employee_id
JOIN projects ON employee_projects.project_id = projects.project_id;

-- Employee Name + Project Name + Role
SELECT CONCAT(first_name, ' ', last_name) AS Name, projects.project_name AS Project_Name, employees.job_title AS Role
FROM employees
INNER JOIN employee_projects ON employees.employee_id = employee_projects.employee_id
JOIN projects ON employee_projects.project_id = projects.project_id;

-- Employee Name + Attendance Status + Attendance Date
SELECT CONCAT(first_name, ' ', last_name) AS Name, attendance.attendance_status, attendance.attendance_date
FROM employees
INNER JOIN attendance ON attendance.employee_id = employees.employee_id;

-- Employee Name + Salary Details
SELECT CONCAT(first_name, ' ', last_name) AS Name, salaries.basic_salary, bonus, deduction, net_salary, payment_date
FROM employees
INNER JOIN salaries ON salaries.employee_id = employees.employee_id;

-- Employee Name + Leave Details
SELECT CONCAT(first_name, ' ', last_name) AS Name, leaves.leave_type, start_date, end_date, reason, leave_status
FROM employees
INNER JOIN leaves ON leaves.employee_id = employees.employee_id;

-- Department Name + Employee Count
SELECT departments.department_name, COUNT(employees.employee_id) AS Employee_Count
FROM departments
INNER JOIN employees ON employees.department_id = departments.department_id
GROUP BY  departments.department_name
ORDER BY Employee_count DESC;

-- Department Name + Average Salary
SELECT departments.department_name, AVG(salaries.basic_salary) AS avg_salary
FROM departments
JOIN employees ON departments.department_id = employees.department_id
JOIN salaries ON employees.employee_id = salaries.employee_id
GROUP BY  departments.department_name
ORDER BY avg_salary DESC;

-- Employee + Department + Project (3-table JOIN)
SELECT CONCAT(first_name, ' ', last_name) AS Name, departments.department_name AS Department, projects.project_name AS Project
FROM employees
INNER JOIN departments ON departments.department_id = employees.department_id
JOIN employee_projects ON employees.employee_id = employee_projects.employee_id
JOIN projects ON projects.project_id = employee_projects.project_id;

-- SECTION 2 – LEFT JOIN 
-- All employees with department (even if department is NULL)
SELECT employees.employee_id , CONCAT(first_name, ' ', last_name) AS Name , departments.department_name
FROM employees
LEFT JOIN departments ON departments.department_id = employees.department_id;

-- All departments with employees
SELECT 
    departments.department_id,
    departments.department_name,
    employees.employee_id,
    employees.first_name
FROM departments 
LEFT JOIN employees
    ON departments.department_id = employees.department_id;

-- Employees without projects
SELECT 
    employees.employee_id, 
    employees.first_name
FROM employees
LEFT JOIN employee_projects ON employees.employee_id = employee_projects.employee_id
WHERE employee_projects.project_id IS NULL;

-- Absent Employees
SELECT 
    employees.employee_id, 
    employees.first_name,
    attendance.attendance_status
FROM 
    employees
LEFT JOIN 
    attendance ON employees.employee_id = attendance.employee_id
WHERE 
    attendance.attendance_status = 'Absent';

-- Employees without leaves
SELECT 
    employees.employee_id, 
    employees.first_name
FROM 
    employees
LEFT JOIN leaves ON employees.employee_id = leaves.employee_id
WHERE leaves.leave_id IS NULL;
    
-- SECTION 3 – RIGHT JOIN 
-- All departments even if no employee
SELECT 
    departments.department_id, 
    departments.department_name, 
    employees.employee_id, 
    employees.first_name
FROM employees
RIGHT JOIN departments
    ON employees.department_id = departments.department_id;

-- All projects even if no employee assigned
SELECT
    projects.project_id,
    projects.project_name,
    employee_projects.employee_id
FROM employee_projects
RIGHT JOIN projects
ON employee_projects.project_id = projects.project_id;

-- All employees with salary records
SELECT CONCAT(first_name, ' ', last_name) AS Name, salaries.basic_salary, deduction, net_salary, payment_date
FROM employees
RIGHT JOIN salaries ON employees.employee_id = salaries.employee_id;

-- SECTION 4 – CROSS JOIN 
-- Employee × Department combinations
SELECT CONCAT(first_name, ' ', last_name) AS Name, departments.department_name
FROM Employees
CROSS JOIN departments;

-- Employee × Project combinations
SELECT CONCAT(first_name, ' ', last_name) AS Name, projects.project_name
FROM Employees
CROSS JOIN projects;

-- SECTION 5 – SELF JOIN
-- Employee self join using employee_id (only for syntax)
-- "Self Join is generally used with manager_id."

-- SELECT employees.first_name AS Employee_Name, employees.last_name AS Manager_Name
-- FROM employees AS emp
-- LEFT JOIN employees AS mgr ON emp.manager_id = mgr.employee_id;
-- Self Join Example
-- This project currently doesn't contain manager_id.
-- Self Join will be implemented in future.

-- SECTION 6 – HRMS REPORTS
-- Employee Directory Report

SELECT 
employee_id AS 'Employee id',
CONCAT(first_name, ' ', last_name) AS 'Full Name',
departments.department_name AS'Department',
job_title AS'Job Title',
salary AS 'Salary',
status AS'Status'
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- Attendance Report
SELECT 
employees.employee_id AS Employee_id,
CONCAT(first_name, ' ', last_name) AS Full_Name,
attendance_date AS Attendance_Date,
check_in  AS Check_In,
check_out AS Check_Out,
status AS Status
FROM employees
INNER JOIN attendance ON employees.employee_id = attendance.employee_id;


-- Salary Report
SELECT
employees.employee_id AS Employee_id,
CONCAT(first_name, ' ', last_name) AS Full_Name,
departments.department_name AS Department,
basic_salary AS 'Basic Salary',
bonus AS Bonus,
deduction AS Deduction,
 net_salary AS 'Net Salary'
FROM employees
INNER JOIN departments ON departments.department_id = employees.department_id
JOIN salaries ON salaries.employee_id = employees.employee_id;

-- Leave Report
SELECT
employees.employee_id AS Employee_id,
CONCAT(first_name, ' ', last_name) AS Full_Name,
leaves.leave_type AS 'Leave Type',
start_date AS 'Start Date',
end_date AS 'End Date',
leave_status AS 'Leave Status'
FROM employees
INNER JOIN leaves ON leaves.employee_id = employees.employee_id;


-- Project Assignment Report
SELECT
employees.employee_id AS Employee_id,
CONCAT(first_name, ' ', last_name) AS Full_Name,
project_name AS Project,
job_title AS Role,
assigned_date AS Assigned_date
FROM employees
INNER JOIN employee_projects ON employee_projects.employee_id = employees.employee_id
JOIN projects ON projects.project_id = employee_projects.project_id;

-- Department Summary
SELECT
    departments.department_name, 
    COUNT(employee_id) AS Total_Employees, 
    AVG(salary) AS Average_Salary
FROM employees
INNER JOIN departments ON departments.department_id = employees.department_id
GROUP BY  departments.department_name;

-- Top 5 Highest Paid Employees with Department
SELECT  employees.employee_id AS Employee_id,
CONCAT(first_name, ' ', last_name) AS Full_Name,
salary,
departments.department_name
FROM employees
INNER JOIN  departments ON departments.department_id = employees.department_id
ORDER BY salary DESC LIMIT 5;

-- Active Employees with Department
SELECT employees.employee_id , CONCAT(first_name, ' ', last_name) AS Name , departments.department_name, status
FROM employees
LEFT JOIN departments ON departments.department_id = employees.department_id
WHERE status = 'Active';
    
-- End of 04_joins.sql
