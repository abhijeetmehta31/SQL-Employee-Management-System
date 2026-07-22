/*
==============================================================
Project      : SQL Employee Management System
Database     : HRMS Database
Author       : Abhijeet Mehta
File         : 10_triggers.sql

Description:
Practice of SQL Triggers.

==============================================================
*/

-- Create Audit Table
CREATE TABLE employee_log
(
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- AFTER INSERT Trigger
DELIMITER $$

CREATE TRIGGER trg_employee_insert
AFTER INSERT
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action_type)
    VALUES(NEW.employee_id,'INSERT');
END$$

DELIMITER ;

-- AFTER UPDATE Trigger
DELIMITER $$

CREATE TRIGGER trg_employee_update
AFTER UPDATE
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action_type)
    VALUES(NEW.employee_id,'UPDATE');
END$$

DELIMITER ;

-- AFTER DELETE Trigger
DELIMITER $$

CREATE TRIGGER trg_employee_delete
AFTER DELETE
ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log(employee_id, action_type)
    VALUES(OLD.employee_id,'DELETE');
END$$

DELIMITER ;

-- Test
INSERT INTO employees
(first_name,last_name,email,department_id,salary)
VALUES
('Test','User','test.user@hrms.com',1,50000);

UPDATE employees
SET salary = 55000
WHERE email='test.user@hrms.com';

DELETE FROM employees
WHERE email='test.user@hrms.com';

-- View Logs
SELECT * FROM employee_log;