-- DDL Examples
-- CREATE, ALTER, DROP, TRUNCATE Commands


/* =========================
   1. CREATE COMMAND
   ========================= */

-- Syntax:
-- CREATE TABLE table_name (
--     column1 datatype(size),
--     column2 datatype(size),
--     column3 datatype(size)
-- );


-- Example 1: Create Student Table

CREATE TABLE student (
    student_id NUMBER(5),
    name VARCHAR2(30),
    age NUMBER(2),
    city VARCHAR2(20)
);


-- Example 2: Create Employee Table with Constraints

CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    salary NUMBER(8,2),
    department VARCHAR2(20)
);


-- Example 3: Create Table Using Existing Table Data

CREATE TABLE employee_backup AS 
SELECT * FROM employee;


-- Example 4: Create View

CREATE VIEW employee_view AS
SELECT employee_id, name
FROM employee;


-- Example 5: Create Index

CREATE INDEX index_name
ON employee(name);



/* =========================
   2. ALTER COMMAND
   ========================= */

-- Syntax:
-- ALTER TABLE table_name action;


-- Example 1: Add Column

ALTER TABLE employee
ADD salary INT;


-- Example 2: Modify Column

ALTER TABLE employee
MODIFY salary VARCHAR2(20);


-- Example 3: Drop Column

ALTER TABLE employee
DROP COLUMN salary;


-- Example 4: Rename Column

ALTER TABLE employee
RENAME COLUMN employee_name TO employee_name;


-- Example 5: Add Column with Default Value

ALTER TABLE employee
ADD salary INT DEFAULT 25000;


-- Example 6: Add Department Column

ALTER TABLE employee
ADD department VARCHAR2(30);


-- Example 7: Rename Table

ALTER TABLE employee
RENAME TO employee_details;



/* =========================
   3. DROP COMMAND
   ========================= */

-- Syntax:
-- DROP TABLE table_name;

--Example 1:
DROP TABLE employee;
--Example 2:
DROP TABLE student;
--Example 3:
DROP TABLE customers;



/* =========================
   4. TRUNCATE COMMAND
   ========================= */

-- Syntax:
-- TRUNCATE TABLE table_name;

--Example 1:
TRUNCATE TABLE employee;
--Example 2:
TRUNCATE TABLE student;
--Example 3:
TRUNCATE TABLE customer;
