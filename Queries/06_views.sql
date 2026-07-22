-- Employee Directory View
CREATE VIEW employee_directory AS
SELECT
e.employee_id,
CONCAT(e.first_name,' ',e.last_name) AS Full_Name,
d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT * FROM employee_directory;

-- Salary View
CREATE VIEW salary_view AS
SELECT
employees.employee_id, CONCAT(first_name, ' ', last_name) AS Name, salaries.basic_salary, bonus, deduction, net_salary, payment_date
FROM employees
JOIN salaries 
ON salaries.employee_id = employees.employee_id;

SELECT * FROM salary_view;

-- Attendance View
CREATE VIEW attendance_view AS
SELECT 
employees.employee_id, CONCAT(first_name, ' ', last_name) AS Name, attendance.attendance_status, attendance.attendance_date
FROM employees
INNER JOIN attendance ON attendance.employee_id = employees.employee_id;

SELECT * FROM attendance_view;

-- Active Employees View
CREATE VIEW status_view AS
SELECT 
employees.employee_id, CONCAT(first_name, ' ', last_name) AS Name, status
FROM employees ;

SELECT * FROM status_view;

-- Department Summary View
CREATE VIEW department_view AS
SELECT departments.department_name, COUNT(employees.employee_id) AS Employee_Count
FROM departments
INNER JOIN employees ON employees.department_id = departments.department_id
GROUP BY  departments.department_name
ORDER BY Employee_count DESC;

SELECT * FROM department_view;