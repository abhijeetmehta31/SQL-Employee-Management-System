/*
=============================================================
Project     : SQL Employee Management System
Database    : HRMS Database
Author      : Abhijeet Mehta
File        : 01_database_setup.sql

Description :
Creates the HRMS database and all required tables.

=============================================================
*/
DROP DATABASE IF EXISTS hrms_db;
CREATE DATABASE hrms_db;
USE hrms_db;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL  UNIQUE,
    location VARCHAR(100)
);

CREATE TABLE employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone VARCHAR(15),
gender ENUM ('male', 'female', 'other'),
date_of_birth DATE,
hire_date DATE,
job_title VARCHAR(100),
salary DECIMAL(10,2),
status ENUM('Active','Inactive') DEFAULT 'Active',
department_id INT, FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE projects (
project_id INT AUTO_INCREMENT PRIMARY KEY,
project_name VARCHAR(100) NOT NULL,
client_name VARCHAR(100) NOT NULL,
start_date DATE,
end_date DATE,
budget DECIMAL(10,2),
project_status ENUM('Active','Inactive') DEFAULT 'Active'
);

CREATE TABLE employee_projects (
employee_project_id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT, FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
project_id INT, FOREIGN KEY (project_id) REFERENCES projects(project_id),
assigned_date DATE,
role VARCHAR(100)
);

CREATE TABLE attendance (
attendance_id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT, FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
attendance_date DATE,
check_in TIME,
check_out TIME,
attendance_status ENUM('Present', 'Absent', 'Late')
);

CREATE TABLE salaries(
salary_id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT, FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
basic_salary DECIMAL(10,2),
bonus DECIMAL(10,2),
deduction DECIMAL(10,2),
net_salary DECIMAL(10,2),
payment_date DATE
);

CREATE TABLE leaves(
leave_id INT AUTO_INCREMENT PRIMARY KEY,
employee_id INT, FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
leave_type ENUM('Sick', 'Casual', 'Earned', 'Maternity', 'Paternity', 'Emergency', 'Unpaid'),
start_date DATE,
end_date DATE,
reason TEXT,
leave_status ENUM('Pending', 'Approved', 'Rejected', 'Cancelled')
);
