-- ==========================================
-- INSERT Command Examples
-- ==========================================

-- Example 1: Insert without specifying column names
INSERT INTO student
VALUES (101, 'Rahul', 20);

-- Example 2: Insert into all columns by specifying column names
INSERT INTO employee (employee_id, name, salary)
VALUES (101, 'Rahul', 50000);

-- Example 3: Insert into selected columns
INSERT INTO employee (employee_id, name)
VALUES (102, 'Kiran');

-- Example 4: Insert values in a different column order
INSERT INTO employee (salary, employee_id, name)
VALUES (60000, 103, 'Anjali');

-- Example 5: Insert a NULL value
INSERT INTO employee (employee_id, name, salary)
VALUES (104, 'Ramesh', NULL);

-- Example 6: Insert duplicate records
INSERT INTO employee (employee_id, name, salary)
VALUES (105, 'Priya', 45000);

INSERT INTO employee (employee_id, name, salary)
VALUES (105, 'Priya', 45000);



-- ==========================================
-- UPDATE Command Examples
-- ==========================================

-- Syntax:
UPDATE table_name
SET column_name = value
WHERE condition;


-- Example 1: Update a single column for a specific row
UPDATE employee
SET salary = 70000
WHERE employee_id = 101;


-- Example 2: Update multiple columns in a single statement
UPDATE employee
SET salary = 80000,
    name = 'Ravi'
WHERE employee_id = 101;


-- Example 3: Update all rows by omitting WHERE clause
UPDATE employee
SET salary = 50000;


-- Example 4: Update multiple rows based on a condition
UPDATE employee
SET salary = 90000
WHERE name = 'Rahul';


-- Example 5: Increase existing value using UPDATE
UPDATE employee
SET salary = salary + 5000;


-- Example 6: Update column value to NULL
UPDATE employee
SET salary = NULL
WHERE employee_id = 101;


-- Example 7: Update using multiple conditions
UPDATE employee
SET salary = 60000
WHERE employee_id = 101
AND name = 'Rahul';
