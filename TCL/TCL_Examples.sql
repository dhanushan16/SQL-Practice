-- ==========================================
-- TCL (Transaction Control Language)
-- Examples
-- ==========================================



-- ==========================================
-- COMMIT Examples
-- ==========================================

-- Example 1: Permanently save inserted data
INSERT INTO employee (employee_id, name, salary)
VALUES (101, 'Rahul', 50000);

COMMIT;


-- Example 2: Permanently save updated data
UPDATE employee
SET salary = 60000
WHERE employee_id = 101;

COMMIT;


-- Example 3: Permanently save deleted data
DELETE FROM employee
WHERE employee_id = 101;

COMMIT;


-- Example 4: Multiple DML operations followed by COMMIT
INSERT INTO employee
VALUES (102, 'Kiran', 45000);

UPDATE employee
SET salary = 50000
WHERE employee_id = 102;

DELETE FROM employee
WHERE employee_id = 103;

COMMIT;



-- ==========================================
-- ROLLBACK Examples
-- ==========================================

-- Example 1: Rollback INSERT
INSERT INTO employee
VALUES (104, 'Anjali', 55000);

ROLLBACK;


-- Example 2: Rollback UPDATE
UPDATE employee
SET salary = 70000
WHERE employee_id = 102;

ROLLBACK;


-- Example 3: Rollback DELETE
DELETE FROM employee
WHERE employee_id = 102;

ROLLBACK;


-- Example 4: Rollback multiple DML operations
INSERT INTO employee
VALUES (105, 'Ramesh', 48000);

UPDATE employee
SET salary = 52000
WHERE employee_id = 105;

DELETE FROM employee
WHERE employee_id = 101;

ROLLBACK;


-- Example 5: COMMIT followed by ROLLBACK
INSERT INTO employee
VALUES (106, 'Priya', 65000);

COMMIT;

UPDATE employee
SET salary = 70000
WHERE employee_id = 106;

ROLLBACK;

-- Result:
-- INSERT remains because it was committed.
-- UPDATE is rolled back.



-- ==========================================
-- SAVEPOINT Examples
-- ==========================================

-- Example 1: Create a SAVEPOINT
INSERT INTO employee
VALUES (107, 'Arun', 50000);

SAVEPOINT sp1;


-- Example 2: Rollback to SAVEPOINT
INSERT INTO employee
VALUES (108, 'Karthik', 55000);

SAVEPOINT sp2;

UPDATE employee
SET salary = 60000
WHERE employee_id = 108;

ROLLBACK TO sp2;

-- Result:
-- INSERT remains.
-- UPDATE is undone.


-- Example 3: Multiple SAVEPOINTS
INSERT INTO employee
VALUES (109, 'Sneha', 45000);

SAVEPOINT sp1;

UPDATE employee
SET salary = 50000
WHERE employee_id = 109;

SAVEPOINT sp2;

DELETE FROM employee
WHERE employee_id = 109;

ROLLBACK TO sp2;

-- Result:
-- DELETE is undone.
-- UPDATE remains.


-- Example 4: Rollback to first SAVEPOINT
INSERT INTO employee
VALUES (110, 'Asha', 50000);

SAVEPOINT sp1;

UPDATE employee
SET salary = 60000
WHERE employee_id = 110;

SAVEPOINT sp2;

DELETE FROM employee
WHERE employee_id = 110;

ROLLBACK TO sp1;

-- Result:
-- UPDATE is undone.
-- DELETE is undone.
-- INSERT remains.



-- ==========================================
-- COMMIT with SAVEPOINT
-- ==========================================

INSERT INTO employee
VALUES (111, 'Nikhil', 45000);

SAVEPOINT sp1;

UPDATE employee
SET salary = 50000
WHERE employee_id = 111;

COMMIT;

-- Result:
-- INSERT and UPDATE are permanently saved.
-- SAVEPOINT is removed.



-- ==========================================
-- Important Scenario Examples
-- ==========================================

-- Scenario 1: INSERT -> COMMIT -> UPDATE -> ROLLBACK

INSERT INTO employee
VALUES (112, 'Deepa', 55000);

COMMIT;

UPDATE employee
SET salary = 60000
WHERE employee_id = 112;

ROLLBACK;

-- Result:
-- INSERT remains.
-- UPDATE is undone.



-- Scenario 2: INSERT -> SAVEPOINT -> UPDATE -> DELETE -> ROLLBACK TO SAVEPOINT

INSERT INTO employee
VALUES (113, 'Vinay', 50000);

SAVEPOINT sp1;

UPDATE employee
SET salary = 55000
WHERE employee_id = 113;

DELETE FROM employee
WHERE employee_id = 113;

ROLLBACK TO sp1;

-- Result:
-- INSERT remains.
-- UPDATE is undone.
-- DELETE is undone.



-- Scenario 3: INSERT -> UPDATE -> DELETE -> COMMIT -> ROLLBACK

INSERT INTO employee
VALUES (114, 'Meena', 60000);

UPDATE employee
SET salary = 65000
WHERE employee_id = 114;

DELETE FROM employee
WHERE employee_id = 115;

COMMIT;

ROLLBACK;

-- Result:
-- ROLLBACK has no effect because COMMIT already saved the changes.
