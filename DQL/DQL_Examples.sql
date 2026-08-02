-- DQL Examples
-- DQL is used to retrieve data from the database.
-- Main DQL command: SELECT


-- Create table example (for reference)

CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);


-- Insert sample data

INSERT INTO employee VALUES (101, 'Rahul', 'IT', 50000, 'Bangalore');
INSERT INTO employee VALUES (102, 'Kiran', 'HR', 45000, 'Mysore');
INSERT INTO employee VALUES (103, 'Priya', 'IT', 60000, 'Bangalore');
INSERT INTO employee VALUES (104, 'Anu', 'Finance', 55000, 'Chennai');
INSERT INTO employee VALUES (105, 'Rahul', 'IT', 50000, 'Bangalore');


--------------------------------------------------
-- SELECT COMMAND EXAMPLES
--------------------------------------------------

-- Selecting all columns using *

SELECT *
FROM employee;


-- Selecting specific columns

SELECT employee_name
FROM employee;


-- Selecting multiple columns

SELECT employee_id, employee_name, salary
FROM employee;


-- Selecting columns in different display order

SELECT salary, employee_name, employee_id
FROM employee;


-- Displaying the same column multiple times

SELECT employee_name, employee_name
FROM employee;



--------------------------------------------------
-- FROM CLAUSE EXAMPLES
--------------------------------------------------

-- FROM specifies the table from which data is retrieved

SELECT employee_name
FROM employee;



--------------------------------------------------
-- DISTINCT EXAMPLES
--------------------------------------------------

-- Display unique department values

SELECT DISTINCT department
FROM employee;


-- Display unique salary values

SELECT DISTINCT salary
FROM employee;


-- DISTINCT with multiple columns

SELECT DISTINCT employee_name, department
FROM employee;


-- DISTINCT with all columns

SELECT DISTINCT *
FROM employee;



--------------------------------------------------
-- WHERE CLAUSE EXAMPLES
--------------------------------------------------

-- Retrieve employees with salary greater than 50000

SELECT *
FROM employee
WHERE salary > 50000;


-- Retrieve employees from IT department

SELECT *
FROM employee
WHERE department = 'IT';


-- Retrieve employee from a specific city

SELECT *
FROM employee
WHERE city = 'Bangalore';



--------------------------------------------------
-- WHERE WITH COMPARISON OPERATORS
--------------------------------------------------

-- Equal to (=)

SELECT *
FROM employee
WHERE department = 'HR';


-- Greater than (>)

SELECT *
FROM employee
WHERE salary > 50000;


-- Less than (<)

SELECT *
FROM employee
WHERE salary < 50000;


-- Greater than or equal to (>=)

SELECT *
FROM employee
WHERE salary >= 50000;


-- Less than or equal to (<=)

SELECT *
FROM employee
WHERE salary <= 50000;


-- Not equal to (!= or <>)

SELECT *
FROM employee
WHERE department <> 'IT';



--------------------------------------------------
-- WHERE WITH LOGICAL OPERATORS
--------------------------------------------------

-- AND operator
-- Both conditions must be true

SELECT *
FROM employee
WHERE department = 'IT'
AND salary > 50000;


-- OR operator
-- Any one condition can be true

SELECT *
FROM employee
WHERE department = 'IT'
OR department = 'HR';


-- NOT operator

SELECT *
FROM employee
WHERE NOT department = 'IT';



--------------------------------------------------
-- WHERE WITH SPECIAL OPERATORS
--------------------------------------------------

-- BETWEEN operator

SELECT *
FROM employee
WHERE salary BETWEEN 40000 AND 60000;


-- IN operator

SELECT *
FROM employee
WHERE department IN ('IT', 'HR');


-- LIKE operator

SELECT *
FROM employee
WHERE employee_name LIKE 'R%';


-- IS NULL operator

SELECT *
FROM employee
WHERE city IS NULL;


-- IS NOT NULL operator

SELECT *
FROM employee
WHERE city IS NOT NULL;



--------------------------------------------------
-- ORDER BY EXAMPLES
--------------------------------------------------

-- Sort salary in ascending order
-- ASC is the default order

SELECT *
FROM employee
ORDER BY salary ASC;


-- Sort salary in descending order

SELECT *
FROM employee
ORDER BY salary DESC;


-- ORDER BY without specifying ASC/DESC
-- Default is ASC

SELECT *
FROM employee
ORDER BY salary;



--------------------------------------------------
-- ORDER BY WITH MULTIPLE COLUMNS
--------------------------------------------------

-- First sort by department
-- Then sort salary within the same department

SELECT *
FROM employee
ORDER BY department ASC, salary DESC;



--------------------------------------------------
-- ORDER BY WITH COLUMN ALIAS
--------------------------------------------------

-- Using alias for sorting

SELECT salary AS income
FROM employee
ORDER BY income;



--------------------------------------------------
-- COMBINING SELECT, DISTINCT, WHERE AND ORDER BY
--------------------------------------------------

-- Display unique departments
-- Where salary is greater than 45000
-- Sort alphabetically

SELECT DISTINCT department
FROM employee
WHERE salary > 45000
ORDER BY department ASC;



-- Display employee details
-- Only IT employees
-- Salary greater than 50000
-- Highest salary first

SELECT *
FROM employee
WHERE department = 'IT'
AND salary > 50000
ORDER BY salary DESC;



--------------------------------------------------
-- IMPORTANT NOTES
--------------------------------------------------

-- SELECT only retrieves data.
-- It does not modify table data.

-- DISTINCT removes duplicate values only from output.

-- WHERE filters rows based on conditions.

-- ORDER BY sorts the output only.

-- SELECT, DISTINCT, WHERE and ORDER BY do not permanently change the table.
