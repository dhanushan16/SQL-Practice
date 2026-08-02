-- ============================================
-- DCL (Data Control Language) Examples
-- Commands Covered:
-- 1. GRANT
-- 2. REVOKE
-- ============================================


------------------------------------------------
-- Sample Table (Reference)
------------------------------------------------

CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


------------------------------------------------
-- GRANT COMMAND EXAMPLES
------------------------------------------------

-- Grant SELECT privilege

GRANT SELECT
ON employee
TO john;


------------------------------------------------

-- Grant INSERT privilege

GRANT INSERT
ON employee
TO john;


------------------------------------------------

-- Grant UPDATE privilege

GRANT UPDATE
ON employee
TO john;


------------------------------------------------

-- Grant DELETE privilege

GRANT DELETE
ON employee
TO john;


------------------------------------------------

-- Grant multiple privileges

GRANT SELECT, INSERT
ON employee
TO john;


------------------------------------------------

-- Grant SELECT, INSERT and UPDATE privileges

GRANT SELECT, INSERT, UPDATE
ON employee
TO john;


------------------------------------------------

-- Grant all privileges

GRANT ALL
ON employee
TO john;


------------------------------------------------
-- REVOKE COMMAND EXAMPLES
------------------------------------------------

-- Revoke SELECT privilege

REVOKE SELECT
ON employee
FROM john;


------------------------------------------------

-- Revoke INSERT privilege

REVOKE INSERT
ON employee
FROM john;


------------------------------------------------

-- Revoke UPDATE privilege

REVOKE UPDATE
ON employee
FROM john;


------------------------------------------------

-- Revoke DELETE privilege

REVOKE DELETE
ON employee
FROM john;


------------------------------------------------

-- Revoke multiple privileges

REVOKE SELECT, INSERT
ON employee
FROM john;


------------------------------------------------

-- Revoke SELECT, INSERT and UPDATE privileges

REVOKE SELECT, INSERT, UPDATE
ON employee
FROM john;


------------------------------------------------

-- Revoke all privileges

REVOKE ALL
ON employee
FROM john;


------------------------------------------------
-- Notes
------------------------------------------------

-- GRANT is used to give privileges to users.
-- REVOKE is used to remove privileges from users.
-- Common privileges:
-- SELECT
-- INSERT
-- UPDATE
-- DELETE
-- ALL

-- GRANT uses the TO keyword.
-- REVOKE uses the FROM keyword.

-- These commands are generally executed by the
-- Database Administrator (DBA), the database owner,
-- or a user with administrative privileges.
