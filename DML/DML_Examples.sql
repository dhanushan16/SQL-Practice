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
