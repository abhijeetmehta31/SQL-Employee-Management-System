-- Create Index
-- creating a single column index
CREATE INDEX idx_email ON employees(email);

SELECT * FROM employees WHERE email = 'ishita.joshi@hrms.com'; 

-- creating multi column index
CREATE INDEX idx_gender_salary ON employees(gender,salary);
 SELECT * FROM employees 
 WHERE gender = 'Female' AND salary > 80000;
 
-- Create Unique Index
CREATE UNIQUE INDEX idx_name
ON employees(first_name,last_name);

-- Show Indexes
SHOW INDEX FROM employees;

-- Drop Index
DROP INDEX idx_name ON employees;