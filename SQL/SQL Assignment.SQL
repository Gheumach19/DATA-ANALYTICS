-- Create the employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert 5 rows into the employees table
INSERT INTO employees (id, first_name, last_name, email, position, salary) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 'Software Engineer', 75000.00),
(2, 'Bob', 'Smith', 'bob.smith@example.com', 'Project Manager', 85000.00),
(3, 'Carol', 'Davis', 'carol.davis@example.com', 'UX Designer', 68000.00),
(4, 'David', 'Lee', 'david.lee@example.com', 'Data Analyst', 72000.00),
(5, 'Eva', 'Martinez', 'eva.martinez@example.com', 'HR Specialist', 65000.00);


-- a) Select all columns from the employees table.
    SELECT  *
    FROM Employees;


-- b) Select only the name and salary of all employees.
   SELECT first_name,salary
   FROM Employees;

-- c) Retrieve a list of unique job positions.
   SELECT DISTINCT position 
   FROM Employees;
  

-- d) Rename name as "Full Name" and position as "Role" in the result.
   SELECT first_name AS "Full Name", position AS "Role"
   FROM Employees;

-- e) Concatenate name and position as "Employee Details".
   SELECT CONCAT(first_name," ",position) AS "Employee Details"
   FROM Employees;
   
   