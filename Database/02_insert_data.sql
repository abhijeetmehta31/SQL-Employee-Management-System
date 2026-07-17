/*
=============================================================
Project     : SQL Employee Management System
Database    : HRMS Database
Author      : Abhijeet Mehta
File        : 02_insert_data.sql

Description :
Inserts sample data into all HRMS tables.

=============================================================
*/

USE hrms_db;

INSERT INTO departments (department_name, location) VALUES
('Human Resources', 'Mumbai'),
('Finance', 'Delhi'),
('Marketing', 'Bengaluru'),
('Sales', 'Pune'),
('Information Technology', 'Hyderabad'),
('Operations', 'Chennai'),
('Data Analytics', 'Noida'),
('Cyber Security', 'Gurugram'),
('Research & Development', 'Ahmedabad'),
('Customer Support', 'Kolkata');


INSERT INTO employees (first_name, last_name, email, phone, gender, date_of_birth, hire_date, job_title, salary, status, department_id) VALUES
('Aarav','Sharma','aarav.sharma@hrms.com','9876543210','male','1998-05-15','2023-01-10','HR Executive',45000.00,'Active',1),
('Vivaan','Verma','vivaan.verma@hrms.com','9876543211','male','1997-09-20','2022-03-18','Accountant',55000.00,'Active',2),
('Ananya','Gupta','ananya.gupta@hrms.com','9876543212','female','1999-01-12','2024-02-05','Marketing Executive',48000.00,'Active',3),
('Diya','Patel','diya.patel@hrms.com','9876543213','female','1998-11-08','2021-07-15','Sales Executive',52000.00,'Active',4),
('Arjun','Mehta','arjun.mehta@hrms.com','9876543214','male','1996-04-25','2020-09-01','Software Engineer',85000.00,'Active',5),
('Kabir','Singh','kabir.singh@hrms.com','9876543215','male','1995-08-17','2019-11-20','Operations Executive',60000.00,'Active',6),
('Ishita','Joshi','ishita.joshi@hrms.com','9876543216','female','1999-06-30','2023-06-12','Data Analyst',70000.00,'Active',7),
('Rohan','Nair','rohan.nair@hrms.com','9876543217','male','1997-12-14','2022-08-22','Cyber Security Analyst',90000.00,'Active',8),
('Meera','Reddy','meera.reddy@hrms.com','9876543218','female','1996-10-05','2021-04-10','Research Engineer',80000.00,'Active',9),
('Aditya','Yadav','aditya.yadav@hrms.com','9876543219','male','1998-03-27','2024-01-08','Customer Support Executive',40000.00,'Active',10);

INSERT INTO employees (
first_name,
last_name,
email,
phone,
gender,
date_of_birth,
hire_date,
job_title,
salary,
status,
department_id
)
VALUES
('Priya','Sharma','priya.sharma@hrms.com','9876543220','female','1997-02-18','2022-05-12','HR Executive',47000.00,'Active',1),

('Rahul','Malhotra','rahul.malhotra@hrms.com','9876543221','male','1995-07-09','2020-08-15','Accountant',62000.00,'Active',2),

('Sneha','Kapoor','sneha.kapoor@hrms.com','9876543222','female','1998-09-22','2023-01-20','Marketing Executive',50000.00,'Active',3),

('Mohit','Jain','mohit.jain@hrms.com','9876543223','male','1996-11-13','2021-06-10','Sales Executive',54000.00,'Active',4),

('Neha','Agarwal','neha.agarwal@hrms.com','9876543224','female','1999-04-17','2024-02-11','Software Engineer',88000.00,'Active',5),

('Akash','Patel','akash.patel@hrms.com','9876543225','male','1994-08-03','2019-09-25','Operations Executive',61000.00,'Active',6),

('Pooja','Verma','pooja.verma@hrms.com','9876543226','female','1998-01-28','2022-10-14','Data Analyst',73000.00,'Active',7),

('Saurabh','Singh','saurabh.singh@hrms.com','9876543227','male','1996-12-05','2021-12-01','Cyber Security Analyst',93000.00,'Active',8),

('Kriti','Mishra','kriti.mishra@hrms.com','9876543228','female','1997-05-30','2023-04-18','Research Engineer',81000.00,'Active',9),

('Nikhil','Yadav','nikhil.yadav@hrms.com','9876543229','male','1995-10-11','2020-03-08','Customer Support Executive',43000.00,'Active',10);

