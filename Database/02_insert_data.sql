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
('Ritika','Sharma','ritika.sharma@hrms.com','9876543230','female','1998-08-15','2022-09-12','HR Executive',48000.00,'Active',1),

('Ankit','Gupta','ankit.gupta@hrms.com','9876543231','male','1996-01-18','2021-02-10','Accountant',64000.00,'Active',2),

('Simran','Kaur','simran.kaur@hrms.com','9876543232','female','1999-07-20','2023-03-18','Marketing Executive',52000.00,'Active',3),

('Harsh','Patel','harsh.patel@hrms.com','9876543233','male','1997-11-28','2022-07-05','Sales Executive',56000.00,'Active',4),

('Aman','Verma','aman.verma@hrms.com','9876543234','male','1995-04-30','2020-05-14','Software Engineer',92000.00,'Active',5),

('Nandini','Rao','nandini.rao@hrms.com','9876543235','female','1998-09-11','2023-06-01','Operations Executive',63000.00,'Active',6),

('Yash','Singh','yash.singh@hrms.com','9876543236','male','1997-02-08','2021-10-09','Data Analyst',76000.00,'Active',7),

('Tanvi','Joshi','tanvi.joshi@hrms.com','9876543237','female','1998-12-16','2022-12-12','Cyber Security Analyst',95000.00,'Active',8),

('Karan','Mishra','karan.mishra@hrms.com','9876543238','male','1996-06-22','2020-11-18','Research Engineer',84000.00,'Active',9),

('Aditi','Nair','aditi.nair@hrms.com','9876543239','female','1999-03-14','2024-01-15','Customer Support Executive',45000.00,'Active',10);

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
('Rohit','Chauhan','rohit.chauhan@hrms.com','9876543240','male','1997-01-12','2021-03-15','HR Executive',49000.00,'Active',1),

('Kavya','Shah','kavya.shah@hrms.com','9876543241','female','1998-04-18','2022-08-20','Accountant',66000.00,'Active',2),

('Arnav','Bansal','arnav.bansal@hrms.com','9876543242','male','1996-09-10','2020-11-25','Marketing Executive',55000.00,'Active',3),

('Isha','Mehta','isha.mehta@hrms.com','9876543243','female','1999-02-14','2023-05-18','Sales Executive',58000.00,'Active',4),

('Dev','Kumar','dev.kumar@hrms.com','9876543244','male','1995-06-22','2019-12-10','Software Engineer',95000.00,'Active',5),

('Sakshi','Arora','sakshi.arora@hrms.com','9876543245','female','1998-11-08','2022-04-11','Operations Executive',65000.00,'Active',6),

('Ayush','Rathore','ayush.rathore@hrms.com','9876543246','male','1997-07-19','2021-09-14','Data Analyst',78000.00,'Active',7),

('Muskan','Saxena','muskan.saxena@hrms.com','9876543247','female','1999-10-05','2023-02-09','Cyber Security Analyst',98000.00,'Active',8),

('Vikas','Pandey','vikas.pandey@hrms.com','9876543248','male','1996-03-27','2020-07-28','Research Engineer',86000.00,'Active',9),

('Shruti','Kulkarni','shruti.kulkarni@hrms.com','9876543249','female','1998-12-30','2024-01-22','Customer Support Executive',46000.00,'Active',10);

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
('Rahul','Khanna','rahul.khanna@hrms.com','9876543250','male','1996-02-14','2020-05-20','HR Executive',50000.00,'Active',1),

('Pallavi','Mishra','pallavi.mishra@hrms.com','9876543251','female','1998-08-25','2022-07-18','Accountant',68000.00,'Active',2),

('Siddharth','Gupta','siddharth.gupta@hrms.com','9876543252','male','1997-03-09','2021-10-15','Marketing Executive',57000.00,'Active',3),

('Nikita','Sharma','nikita.sharma@hrms.com','9876543253','female','1999-01-30','2023-06-05','Sales Executive',60000.00,'Active',4),

('Harshit','Jain','harshit.jain@hrms.com','9876543254','male','1995-12-17','2019-08-28','Software Engineer',98000.00,'Active',5),

('Riya','Patel','riya.patel@hrms.com','9876543255','female','1998-04-11','2022-11-09','Operations Executive',67000.00,'Active',6),

('Manav','Singh','manav.singh@hrms.com','9876543256','male','1997-09-19','2021-04-26','Data Analyst',80000.00,'Active',7),

('Khushi','Verma','khushi.verma@hrms.com','9876543257','female','1999-06-13','2023-09-01','Cyber Security Analyst',100000.00,'Active',8),

('Abhishek','Rao','abhishek.rao@hrms.com','9876543258','male','1996-10-08','2020-02-17','Research Engineer',90000.00,'Active',9),

('Anushka','Iyer','anushka.iyer@hrms.com','9876543259','female','1998-07-21','2024-02-12','Customer Support Executive',48000.00,'Active',10);

INSERT INTO projects (
project_name,
client_name,
start_date,
end_date,
budget,
project_status
)
VALUES
('HR Management System','TCS','2024-01-10','2024-06-30',2500000.00,'Active'),

('Payroll Management System','Infosys','2024-02-01','2024-07-15',1800000.00,'Active'),

('CRM System','Wipro','2024-03-05','2024-09-30',3200000.00,'Active'),

('Inventory Management System','Reliance Retail','2024-01-20','2024-08-10',2100000.00,'Active'),

('Banking Application','HDFC Bank','2024-02-15','2024-12-20',5000000.00,'Active'),

('E-Commerce Platform','Flipkart','2024-04-01','2025-01-15',6500000.00,'Active'),

('Hospital Management System','Apollo Hospitals','2024-03-12','2024-11-30',2800000.00,'Active'),

('AI Chatbot','OpenAI India','2024-05-01','2025-02-28',4000000.00,'Active'),

('Data Warehouse','Accenture','2024-02-10','2024-10-25',3500000.00,'Active'),

('Cyber Security Dashboard','Tech Mahindra','2024-06-01','2025-03-31',4200000.00,'Active'),

('Employee Attendance System','Capgemini','2024-04-20','2024-09-20',1500000.00,'Active'),

('Learning Management System','Cognizant','2024-05-15','2025-01-31',2600000.00,'Active'),

('Food Delivery Platform','Zomato','2024-03-25','2025-02-10',5500000.00,'Active'),

('Online Examination System','Byju''s','2024-06-10','2025-01-20',2300000.00,'Active'),

('Customer Support Portal','Amazon India','2024-07-01','2025-04-15',3000000.00,'Active');

INSERT INTO employee_projects (
employee_id,
project_id,
assigned_date,
role
)
VALUES
(1,1,'2024-01-15','HR Coordinator'),
(2,2,'2024-02-05','Finance Analyst'),
(3,3,'2024-03-10','Marketing Executive'),
(4,4,'2024-01-25','Sales Executive'),
(5,5,'2024-02-20','Software Engineer'),
(6,6,'2024-04-05','Operations Executive'),
(7,7,'2024-03-15','Data Analyst'),
(8,8,'2024-05-05','Cyber Security Analyst'),
(9,9,'2024-02-18','Research Engineer'),
(10,10,'2024-06-05','Customer Support Executive'),

(11,11,'2024-04-25','HR Executive'),
(12,12,'2024-05-20','Accountant'),
(13,13,'2024-03-30','Marketing Specialist'),
(14,14,'2024-06-15','Sales Executive'),
(15,15,'2024-07-05','Software Engineer'),
(16,1,'2024-01-18','Operations Manager'),
(17,2,'2024-02-10','Data Analyst'),
(18,3,'2024-03-12','Cyber Security Engineer'),
(19,4,'2024-01-30','Research Associate'),
(20,5,'2024-02-25','Support Engineer');

INSERT INTO employee_projects (
employee_id,
project_id,
assigned_date,
role
)
VALUES
(21,6,'2024-04-10','Operations Executive'),
(22,7,'2024-03-20','Data Analyst'),
(23,8,'2024-05-10','Cyber Security Analyst'),
(24,9,'2024-02-28','Research Engineer'),
(25,10,'2024-06-10','Support Engineer'),
(26,11,'2024-04-28','HR Executive'),
(27,12,'2024-05-25','Finance Analyst'),
(28,13,'2024-04-02','Marketing Executive'),
(29,14,'2024-06-20','Sales Executive'),
(30,15,'2024-07-10','Software Engineer'),

(31,1,'2024-01-22','HR Coordinator'),
(32,2,'2024-02-12','Accountant'),
(33,3,'2024-03-18','Marketing Specialist'),
(34,4,'2024-02-02','Sales Consultant'),
(35,5,'2024-03-05','Software Engineer'),
(36,6,'2024-04-15','Operations Manager'),
(37,7,'2024-03-25','Data Analyst'),
(38,8,'2024-05-15','Cyber Security Engineer'),
(39,9,'2024-03-02','Research Associate'),
(40,10,'2024-06-15','Customer Support Executive');

INSERT INTO employee_projects (
employee_id,
project_id,
assigned_date,
role
)
VALUES
(41,11,'2024-04-30','HR Executive'),
(42,12,'2024-05-28','Accountant'),
(43,13,'2024-04-05','Marketing Executive'),
(44,14,'2024-06-22','Sales Executive'),
(45,15,'2024-07-12','Software Engineer'),
(46,1,'2024-01-25','Operations Executive'),
(47,2,'2024-02-18','Data Analyst'),
(48,3,'2024-03-22','Cyber Security Analyst'),
(49,4,'2024-02-08','Research Engineer'),
(50,5,'2024-03-12','Customer Support Executive'),

(1,6,'2024-04-20','HR Coordinator'),
(5,8,'2024-05-25','Lead Software Engineer'),
(7,9,'2024-03-28','Senior Data Analyst'),
(8,10,'2024-06-18','Security Consultant'),
(15,11,'2024-04-12','Technical Lead'),
(20,12,'2024-05-30','Support Lead'),
(25,13,'2024-04-18','Software Engineer'),
(30,14,'2024-06-25','Project Coordinator'),
(35,15,'2024-07-18','Senior Software Engineer'),
(40,1,'2024-01-30','Support Manager');

INSERT INTO employee_projects (
employee_id,
project_id,
assigned_date,
role
)
VALUES
(41,6,'2024-04-18','Operations Manager'),
(42,7,'2024-03-21','Senior Accountant'),
(43,8,'2024-05-11','Digital Marketing Specialist'),
(44,9,'2024-02-26','Business Analyst'),
(45,10,'2024-06-19','Senior Software Engineer'),
(46,11,'2024-04-29','HR Manager'),
(47,12,'2024-05-22','Financial Analyst'),
(48,13,'2024-04-08','Marketing Manager'),
(49,14,'2024-06-28','Research Lead'),
(50,15,'2024-07-20','Technical Lead');

INSERT INTO attendance (
employee_id,
attendance_date,
check_in,
check_out,
attendance_status
)
VALUES
(1,'2024-07-01','09:00:00','18:00:00','Present'),
(2,'2024-07-01','09:10:00','18:00:00','Late'),
(3,'2024-07-01','09:00:00','18:00:00','Present'),
(4,'2024-07-01',NULL,NULL,'Absent'),
(5,'2024-07-01','08:55:00','18:05:00','Present'),
(6,'2024-07-01','09:20:00','18:10:00','Late'),
(7,'2024-07-01','09:00:00','18:00:00','Present'),
(8,'2024-07-01','09:05:00','18:00:00','Late'),
(9,'2024-07-01','09:00:00','18:00:00','Present'),
(10,'2024-07-01','09:00:00','18:00:00','Present'),

(11,'2024-07-01','09:00:00','18:00:00','Present'),
(12,'2024-07-01','09:15:00','18:00:00','Late'),
(13,'2024-07-01','09:00:00','18:00:00','Present'),
(14,'2024-07-01',NULL,NULL,'Absent'),
(15,'2024-07-01','08:58:00','18:05:00','Present'),
(16,'2024-07-01','09:08:00','18:02:00','Late'),
(17,'2024-07-01','09:00:00','18:00:00','Present'),
(18,'2024-07-01','09:00:00','18:00:00','Present'),
(19,'2024-07-01','09:12:00','18:05:00','Late'),
(20,'2024-07-01','09:00:00','18:00:00','Present'),

(21,'2024-07-01','09:00:00','18:00:00','Present'),
(22,'2024-07-01',NULL,NULL,'Absent'),
(23,'2024-07-01','09:00:00','18:00:00','Present'),
(24,'2024-07-01','09:25:00','18:10:00','Late'),
(25,'2024-07-01','08:57:00','18:03:00','Present'),
(26,'2024-07-01','09:00:00','18:00:00','Present'),
(27,'2024-07-01','09:07:00','18:00:00','Late'),
(28,'2024-07-01','09:00:00','18:00:00','Present'),
(29,'2024-07-01',NULL,NULL,'Absent'),
(30,'2024-07-01','09:00:00','18:00:00','Present'),

(31,'2024-07-01','09:00:00','18:00:00','Present'),
(32,'2024-07-01','09:18:00','18:05:00','Late'),
(33,'2024-07-01','09:00:00','18:00:00','Present'),
(34,'2024-07-01','09:00:00','18:00:00','Present'),
(35,'2024-07-01',NULL,NULL,'Absent'),
(36,'2024-07-01','09:00:00','18:00:00','Present'),
(37,'2024-07-01','09:06:00','18:01:00','Late'),
(38,'2024-07-01','09:00:00','18:00:00','Present'),
(39,'2024-07-01','09:00:00','18:00:00','Present'),
(40,'2024-07-01','09:14:00','18:02:00','Late'),

(41,'2024-07-01','09:00:00','18:00:00','Present'),
(42,'2024-07-01','09:00:00','18:00:00','Present'),
(43,'2024-07-01',NULL,NULL,'Absent'),
(44,'2024-07-01','09:11:00','18:00:00','Late'),
(45,'2024-07-01','08:56:00','18:06:00','Present'),
(46,'2024-07-01','09:00:00','18:00:00','Present'),
(47,'2024-07-01','09:09:00','18:02:00','Late'),
(48,'2024-07-01','09:00:00','18:00:00','Present'),
(49,'2024-07-01','09:00:00','18:00:00','Present'),
(50,'2024-07-01','09:20:00','18:10:00','Late');

INSERT INTO attendance (
employee_id,
attendance_date,
check_in,
check_out,
attendance_status
)
VALUES
(1,'2024-07-02','09:02:00','18:01:00','Present'),
(2,'2024-07-02','09:00:00','18:00:00','Present'),
(3,'2024-07-02','09:18:00','18:05:00','Late'),
(4,'2024-07-02','09:00:00','18:00:00','Present'),
(5,'2024-07-02',NULL,NULL,'Absent'),
(6,'2024-07-02','09:00:00','18:00:00','Present'),
(7,'2024-07-02','09:10:00','18:00:00','Late'),
(8,'2024-07-02','09:00:00','18:00:00','Present'),
(9,'2024-07-02','08:58:00','18:02:00','Present'),
(10,'2024-07-02','09:22:00','18:10:00','Late'),

(11,'2024-07-02','09:00:00','18:00:00','Present'),
(12,'2024-07-02','09:00:00','18:00:00','Present'),
(13,'2024-07-02',NULL,NULL,'Absent'),
(14,'2024-07-02','09:08:00','18:00:00','Late'),
(15,'2024-07-02','09:00:00','18:00:00','Present'),
(16,'2024-07-02','09:00:00','18:00:00','Present'),
(17,'2024-07-02','09:12:00','18:03:00','Late'),
(18,'2024-07-02','08:55:00','18:05:00','Present'),
(19,'2024-07-02','09:00:00','18:00:00','Present'),
(20,'2024-07-02',NULL,NULL,'Absent'),

(21,'2024-07-02','09:00:00','18:00:00','Present'),
(22,'2024-07-02','09:14:00','18:02:00','Late'),
(23,'2024-07-02','09:00:00','18:00:00','Present'),
(24,'2024-07-02','09:00:00','18:00:00','Present'),
(25,'2024-07-02','09:05:00','18:00:00','Late'),
(26,'2024-07-02','09:00:00','18:00:00','Present'),
(27,'2024-07-02',NULL,NULL,'Absent'),
(28,'2024-07-02','08:57:00','18:04:00','Present'),
(29,'2024-07-02','09:00:00','18:00:00','Present'),
(30,'2024-07-02','09:16:00','18:06:00','Late'),

(31,'2024-07-02','09:00:00','18:00:00','Present'),
(32,'2024-07-02','09:00:00','18:00:00','Present'),
(33,'2024-07-02','09:20:00','18:10:00','Late'),
(34,'2024-07-02',NULL,NULL,'Absent'),
(35,'2024-07-02','09:00:00','18:00:00','Present'),
(36,'2024-07-02','09:00:00','18:00:00','Present'),
(37,'2024-07-02','09:11:00','18:02:00','Late'),
(38,'2024-07-02','08:59:00','18:03:00','Present'),
(39,'2024-07-02','09:00:00','18:00:00','Present'),
(40,'2024-07-02',NULL,NULL,'Absent'),

(41,'2024-07-02','09:00:00','18:00:00','Present'),
(42,'2024-07-02','09:09:00','18:00:00','Late'),
(43,'2024-07-02','09:00:00','18:00:00','Present'),
(44,'2024-07-02','08:56:00','18:05:00','Present'),
(45,'2024-07-02','09:17:00','18:04:00','Late'),
(46,'2024-07-02',NULL,NULL,'Absent'),
(47,'2024-07-02','09:00:00','18:00:00','Present'),
(48,'2024-07-02','09:00:00','18:00:00','Present'),
(49,'2024-07-02','09:13:00','18:01:00','Late'),
(50,'2024-07-02','08:54:00','18:06:00','Present');

INSERT INTO attendance (
employee_id,
attendance_date,
check_in,
check_out,
attendance_status
)
VALUES
(1,'2024-07-03','09:00:00','18:00:00','Present'),
(2,'2024-07-03','09:12:00','18:05:00','Late'),
(3,'2024-07-03',NULL,NULL,'Absent'),
(4,'2024-07-03','09:00:00','18:00:00','Present'),
(5,'2024-07-03','08:57:00','18:04:00','Present'),
(6,'2024-07-03','09:18:00','18:10:00','Late'),
(7,'2024-07-03','09:00:00','18:00:00','Present'),
(8,'2024-07-03','09:00:00','18:00:00','Present'),
(9,'2024-07-03','09:10:00','18:02:00','Late'),
(10,'2024-07-03','09:00:00','18:00:00','Present'),

(11,'2024-07-03','09:00:00','18:00:00','Present'),
(12,'2024-07-03',NULL,NULL,'Absent'),
(13,'2024-07-03','09:00:00','18:00:00','Present'),
(14,'2024-07-03','09:14:00','18:03:00','Late'),
(15,'2024-07-03','08:56:00','18:06:00','Present'),
(16,'2024-07-03','09:00:00','18:00:00','Present'),
(17,'2024-07-03','09:07:00','18:01:00','Late'),
(18,'2024-07-03','09:00:00','18:00:00','Present'),
(19,'2024-07-03',NULL,NULL,'Absent'),
(20,'2024-07-03','09:00:00','18:00:00','Present'),

(21,'2024-07-03','09:00:00','18:00:00','Present'),
(22,'2024-07-03','09:09:00','18:02:00','Late'),
(23,'2024-07-03','08:58:00','18:03:00','Present'),
(24,'2024-07-03','09:00:00','18:00:00','Present'),
(25,'2024-07-03',NULL,NULL,'Absent'),
(26,'2024-07-03','09:00:00','18:00:00','Present'),
(27,'2024-07-03','09:16:00','18:05:00','Late'),
(28,'2024-07-03','09:00:00','18:00:00','Present'),
(29,'2024-07-03','09:00:00','18:00:00','Present'),
(30,'2024-07-03','09:11:00','18:01:00','Late'),

(31,'2024-07-03','09:00:00','18:00:00','Present'),
(32,'2024-07-03','08:55:00','18:05:00','Present'),
(33,'2024-07-03','09:19:00','18:09:00','Late'),
(34,'2024-07-03','09:00:00','18:00:00','Present'),
(35,'2024-07-03',NULL,NULL,'Absent'),
(36,'2024-07-03','09:00:00','18:00:00','Present'),
(37,'2024-07-03','09:13:00','18:03:00','Late'),
(38,'2024-07-03','09:00:00','18:00:00','Present'),
(39,'2024-07-03','08:59:00','18:02:00','Present'),
(40,'2024-07-03','09:17:00','18:07:00','Late'),

(41,'2024-07-03','09:00:00','18:00:00','Present'),
(42,'2024-07-03',NULL,NULL,'Absent'),
(43,'2024-07-03','09:00:00','18:00:00','Present'),
(44,'2024-07-03','09:08:00','18:00:00','Late'),
(45,'2024-07-03','08:57:00','18:04:00','Present'),
(46,'2024-07-03','09:00:00','18:00:00','Present'),
(47,'2024-07-03','09:15:00','18:05:00','Late'),
(48,'2024-07-03','09:00:00','18:00:00','Present'),
(49,'2024-07-03','09:00:00','18:00:00','Present'),
(50,'2024-07-03',NULL,NULL,'Absent');

INSERT INTO attendance (
employee_id,
attendance_date,
check_in,
check_out,
attendance_status
)
VALUES
(1,'2024-07-04','09:00:00','18:00:00','Present'),
(2,'2024-07-04','09:15:00','18:05:00','Late'),
(3,'2024-07-04','09:00:00','18:00:00','Present'),
(4,'2024-07-04','08:58:00','18:02:00','Present'),
(5,'2024-07-04',NULL,NULL,'Absent'),
(6,'2024-07-04','09:00:00','18:00:00','Present'),
(7,'2024-07-04','09:09:00','18:01:00','Late'),
(8,'2024-07-04','09:00:00','18:00:00','Present'),
(9,'2024-07-04','09:00:00','18:00:00','Present'),
(10,'2024-07-04','09:20:00','18:10:00','Late'),

(11,'2024-07-04','09:00:00','18:00:00','Present'),
(12,'2024-07-04','09:00:00','18:00:00','Present'),
(13,'2024-07-04','09:12:00','18:03:00','Late'),
(14,'2024-07-04',NULL,NULL,'Absent'),
(15,'2024-07-04','08:56:00','18:05:00','Present'),
(16,'2024-07-04','09:00:00','18:00:00','Present'),
(17,'2024-07-04','09:08:00','18:00:00','Late'),
(18,'2024-07-04','09:00:00','18:00:00','Present'),
(19,'2024-07-04','09:00:00','18:00:00','Present'),
(20,'2024-07-04',NULL,NULL,'Absent'),

(21,'2024-07-04','09:00:00','18:00:00','Present'),
(22,'2024-07-04','09:17:00','18:06:00','Late'),
(23,'2024-07-04','08:57:00','18:04:00','Present'),
(24,'2024-07-04','09:00:00','18:00:00','Present'),
(25,'2024-07-04','09:11:00','18:02:00','Late'),
(26,'2024-07-04','09:00:00','18:00:00','Present'),
(27,'2024-07-04',NULL,NULL,'Absent'),
(28,'2024-07-04','09:00:00','18:00:00','Present'),
(29,'2024-07-04','09:00:00','18:00:00','Present'),
(30,'2024-07-04','09:13:00','18:03:00','Late'),

(31,'2024-07-04','09:00:00','18:00:00','Present'),
(32,'2024-07-04','08:59:00','18:02:00','Present'),
(33,'2024-07-04','09:18:00','18:08:00','Late'),
(34,'2024-07-04','09:00:00','18:00:00','Present'),
(35,'2024-07-04',NULL,NULL,'Absent'),
(36,'2024-07-04','09:00:00','18:00:00','Present'),
(37,'2024-07-04','09:07:00','18:01:00','Late'),
(38,'2024-07-04','09:00:00','18:00:00','Present'),
(39,'2024-07-04','08:55:00','18:05:00','Present'),
(40,'2024-07-04','09:16:00','18:06:00','Late'),

(41,'2024-07-04','09:00:00','18:00:00','Present'),
(42,'2024-07-04','09:00:00','18:00:00','Present'),
(43,'2024-07-04',NULL,NULL,'Absent'),
(44,'2024-07-04','09:10:00','18:00:00','Late'),
(45,'2024-07-04','08:58:00','18:03:00','Present'),
(46,'2024-07-04','09:00:00','18:00:00','Present'),
(47,'2024-07-04','09:14:00','18:04:00','Late'),
(48,'2024-07-04','09:00:00','18:00:00','Present'),
(49,'2024-07-04','09:00:00','18:00:00','Present'),
(50,'2024-07-04','09:19:00','18:08:00','Late');

INSERT INTO salaries
(employee_id,basic_salary,bonus,deduction,net_salary,payment_date)
VALUES
(1,45000,5000,2000,48000,'2024-07-31'),
(2,52000,4000,1500,54500,'2024-07-31'),
(3,48000,3500,1000,50500,'2024-07-31'),
(4,50000,4500,2000,52500,'2024-07-31'),
(5,90000,10000,3000,97000,'2024-07-31'),
(6,62000,5000,2000,65000,'2024-07-31'),
(7,75000,7000,2500,79500,'2024-07-31'),
(8,95000,12000,3500,103500,'2024-07-31'),
(9,82000,8000,2500,87500,'2024-07-31'),
(10,42000,3000,1000,44000,'2024-07-31'),

(11,47000,4000,1500,49500,'2024-07-31'),
(12,60000,5000,2000,63000,'2024-07-31'),
(13,53000,4000,1500,55500,'2024-07-31'),
(14,56000,4500,1500,59000,'2024-07-31'),
(15,88000,9000,3000,94000,'2024-07-31'),
(16,64000,5000,2000,67000,'2024-07-31'),
(17,77000,7000,2500,81500,'2024-07-31'),
(18,92000,10000,3000,99000,'2024-07-31'),
(19,81000,7000,2500,85500,'2024-07-31'),
(20,43000,3000,1000,45000,'2024-07-31'),

(21,48000,4000,1500,50500,'2024-07-31'),
(22,61000,5000,2000,64000,'2024-07-31'),
(23,54000,4500,1500,57000,'2024-07-31'),
(24,57000,5000,2000,60000,'2024-07-31'),
(25,91000,10000,3500,97500,'2024-07-31'),
(26,65000,5500,2000,68500,'2024-07-31'),
(27,78000,7000,2500,82500,'2024-07-31'),
(28,96000,12000,3500,104500,'2024-07-31'),
(29,83000,8000,2500,88500,'2024-07-31'),
(30,44000,3000,1000,46000,'2024-07-31'),

(31,49000,4500,1500,52000,'2024-07-31'),
(32,62000,5500,2000,65500,'2024-07-31'),
(33,55000,4500,1500,58000,'2024-07-31'),
(34,58000,5000,2000,61000,'2024-07-31'),
(35,93000,10000,3000,100000,'2024-07-31'),
(36,66000,6000,2500,69500,'2024-07-31'),
(37,79000,7500,2500,84000,'2024-07-31'),
(38,98000,12000,3500,106500,'2024-07-31'),
(39,85000,8500,2500,91000,'2024-07-31'),
(40,45000,3500,1000,47500,'2024-07-31'),

(41,50000,4500,1500,53000,'2024-07-31'),
(42,63000,5500,2000,66500,'2024-07-31'),
(43,56000,5000,1500,59500,'2024-07-31'),
(44,59000,5000,2000,62000,'2024-07-31'),
(45,95000,11000,3500,102500,'2024-07-31'),
(46,67000,6000,2500,70500,'2024-07-31'),
(47,80000,8000,2500,85500,'2024-07-31'),
(48,100000,13000,4000,109000,'2024-07-31'),
(49,87000,9000,3000,93000,'2024-07-31'),
(50,46000,3500,1000,48500,'2024-07-31');

INSERT INTO leaves (
employee_id,
leave_type,
start_date,
end_date,
reason,
leave_status
)
VALUES
(1,'Sick','2024-07-05','2024-07-06','Fever','Approved'),
(2,'Casual','2024-07-10','2024-07-10','Personal Work','Approved'),
(3,'Earned','2024-07-15','2024-07-17','Family Trip','Approved'),
(4,'Emergency','2024-07-08','2024-07-09','Medical Emergency','Approved'),
(5,'Unpaid','2024-07-20','2024-07-21','Personal Reason','Pending'),
(6,'Sick','2024-07-12','2024-07-13','Viral Infection','Approved'),
(7,'Casual','2024-07-18','2024-07-18','Festival','Approved'),
(8,'Earned','2024-07-22','2024-07-24','Vacation','Approved'),
(9,'Emergency','2024-07-14','2024-07-15','Family Emergency','Approved'),
(10,'Sick','2024-07-25','2024-07-26','Food Poisoning','Approved'),

(11,'Casual','2024-07-05','2024-07-05','Personal Work','Approved'),
(12,'Earned','2024-07-16','2024-07-18','Travel','Approved'),
(13,'Sick','2024-07-19','2024-07-20','Fever','Approved'),
(14,'Emergency','2024-07-09','2024-07-10','Accident','Approved'),
(15,'Unpaid','2024-07-28','2024-07-30','Personal Reason','Pending'),
(16,'Casual','2024-07-11','2024-07-11','Family Function','Approved'),
(17,'Earned','2024-07-21','2024-07-23','Holiday','Approved'),
(18,'Sick','2024-07-24','2024-07-25','Cold & Cough','Approved'),
(19,'Emergency','2024-07-13','2024-07-14','Medical Issue','Approved'),
(20,'Casual','2024-07-29','2024-07-29','Bank Work','Approved'),

(21,'Sick','2024-07-06','2024-07-07','Fever','Approved'),
(22,'Earned','2024-07-17','2024-07-19','Vacation','Approved'),
(23,'Casual','2024-07-26','2024-07-26','Personal Work','Approved'),
(24,'Emergency','2024-07-02','2024-07-03','Family Emergency','Approved'),
(25,'Unpaid','2024-07-27','2024-07-28','Personal Reason','Rejected'),
(26,'Sick','2024-07-08','2024-07-09','Health Issue','Approved'),
(27,'Earned','2024-07-20','2024-07-22','Trip','Approved'),
(28,'Casual','2024-07-23','2024-07-23','Festival','Approved'),
(29,'Emergency','2024-07-30','2024-07-31','Emergency','Pending'),
(30,'Sick','2024-07-12','2024-07-13','Viral Fever','Approved');

