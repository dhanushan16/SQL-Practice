# DQL (Data Query Language)

## What is DQL?

DQL stands for **Data Query Language**.

DQL is used to **retrieve or fetch existing data from the database**.

The main command used in DQL is:

- SELECT

Unlike DML commands, DQL only retrieves data. It does not permanently modify the data stored in the database.

---

# SELECT Command

## Definition

`SELECT` is a DQL command used to **retrieve or fetch existing data from one or more tables based on the user's requirement**.

It displays only the required data.

SELECT does **not**:

- Insert records
- Update records
- Delete records
- Modify table structure

---

## Why is SELECT called a DQL Command?

SELECT is called a DQL command because it is used to **query and retrieve data from the database**.

It only reads the data and displays the result.

---

## Syntax

```sql
SELECT column_name
FROM table_name;
```

---

# Selecting All Columns Using *

The `*` symbol is used when we want to retrieve **all columns** from a table.

## Syntax

```sql
SELECT *
FROM table_name;
```

## Example

```sql
SELECT *
FROM employee;
```

### Output

Displays all columns and all records from the employee table.

---

# Selecting Specific Columns

Instead of retrieving all columns, we can retrieve only the required columns.

## Syntax

```sql
SELECT column1, column2
FROM table_name;
```

## Example

```sql
SELECT employee_id, employee_name
FROM employee;
```

### Output

Only the specified columns are displayed.

---

# Difference Between SELECT * and SELECT Column_Name

## SELECT *

- Retrieves all columns from the table.
- Used when all columns are required.

Example:

```sql
SELECT *
FROM employee;
```

---

## SELECT column_name

- Retrieves only the specified column(s).
- Used when only required columns are needed.

Example:

```sql
SELECT employee_name
FROM employee;
```

---

# Retrieving Multiple Columns

Multiple columns can be retrieved using a single SELECT statement.

Column names should be separated using commas.

## Syntax

```sql
SELECT column1, column2, column3
FROM table_name;
```

## Example

```sql
SELECT employee_id, employee_name, salary
FROM employee;
```

---

# Displaying Same Column Multiple Times

The same column can be displayed multiple times in a SELECT statement.

## Example

```sql
SELECT employee_name, employee_name
FROM employee;
```

### Output

The same column appears twice in the output.

---

# Changing Column Display Order

The order of columns displayed in the output can be changed by changing the order of columns in the SELECT statement.

## Example

```sql
SELECT salary, employee_name, employee_id
FROM employee;
```

### Output Order

1. Salary
2. Employee Name
3. Employee ID

### Important Points

- Only the output order changes.
- Table structure remains unchanged.
- Data stored in the table is not affected.

---

# FROM Clause

## Definition

The `FROM` clause specifies the table from which the data has to be retrieved.

Without the FROM clause, SQL does not know which table should be used.

---

## Syntax

```sql
SELECT column_name
FROM table_name;
```

---

## Example

```sql
SELECT employee_name
FROM employee;
```

Here,

- SELECT → Retrieves required data.
- FROM → Specifies the source table.

---

# Importance of FROM Clause

The FROM clause tells SQL:

- Which table to retrieve data from.
- Which table contains the required columns.

---

# Can SELECT Work Without FROM Clause?

Normally, **No**.

When retrieving data from a table, the FROM clause is mandatory.

Example:

```sql
SELECT employee_name
FROM employee;
```

However, some database systems allow SELECT without FROM when retrieving:

- Constant values
- Expressions
- Functions

Example:

```sql
SELECT 10 + 20;
```

Output

```
30
```

---

# Can SELECT Modify Data?

No.

SELECT only retrieves data.

It never:

- Inserts records
- Updates records
- Deletes records
- Changes table structure

Example:

```sql
SELECT *
FROM employee;
```

After execution:

- No rows are modified.
- No records are deleted.
- No table structure changes.
- Database remains exactly the same.

---

# Important Interview Points on SELECT

### 1. SELECT is a DQL command.

Because it retrieves data from the database.

---

### 2. SELECT does not modify data.

It only displays the requested records.

---

### 3. SELECT * retrieves all columns.

Example:

```sql
SELECT *
FROM employee;
```

---

### 4. SELECT column_name retrieves only required columns.

Example:

```sql
SELECT employee_name
FROM employee;
```

---

### 5. Multiple columns can be retrieved.

Example:

```sql
SELECT employee_id, employee_name, salary
FROM employee;
```

---

### 6. Same column can be displayed multiple times.

Example:

```sql
SELECT employee_name, employee_name
FROM employee;
```

---

### 7. Column display order can be changed.

Example:

```sql
SELECT salary, employee_name
FROM employee;
```

---

### 8. Changing display order does not change table structure.

Only the output changes.

---

### 9. FROM clause specifies the source table.

Example:

```sql
SELECT employee_name
FROM employee;
```

---

### 10. FROM clause is mandatory when retrieving data from a table.

---

### 11. SELECT never permanently changes the database.

It only reads data.

# DISTINCT Keyword

## Definition

`DISTINCT` is a keyword used with the SELECT statement to display **only unique values** by removing duplicate values from the output.

It removes duplicate values **only while displaying the result**.

It **does not remove duplicate records from the table**.

---

## Why do we use DISTINCT?

DISTINCT is used when we want to:

- Display only unique values.
- Remove duplicate values from the output.
- Avoid repeated values in the result.

---

## Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

## Example

Table: Employee

| Employee_ID | Employee_Name | Department |
|------------:|---------------|------------|
| 101 | Rahul | IT |
| 102 | Kiran | HR |
| 103 | Priya | IT |
| 104 | Anu | Finance |
| 105 | Rahul | IT |

Query:

```sql
SELECT DISTINCT department
FROM employee;
```

Output:

| Department |
|------------|
| IT |
| HR |
| Finance |

Duplicate department values are removed only from the output.

---

# Important Points About DISTINCT

## 1. DISTINCT removes duplicate values only from the output.

It does not delete duplicate records from the table.

Original table remains unchanged.

---

## 2. DISTINCT does not permanently save changes.

DISTINCT only changes the displayed result.

Database data remains unchanged.

---

## 3. DISTINCT can be used with numeric columns.

Example:

```sql
SELECT DISTINCT salary
FROM employee;
```

Duplicate salary values will be removed.

---

## 4. DISTINCT can be used with character columns.

Example:

```sql
SELECT DISTINCT department
FROM employee;
```

Duplicate department names will be removed.

---

## 5. DISTINCT can be used with multiple columns.

Syntax:

```sql
SELECT DISTINCT column1, column2
FROM table_name;
```

Example:

```sql
SELECT DISTINCT employee_name, department
FROM employee;
```

Here SQL checks the **combination** of Employee_Name and Department.

Only duplicate combinations are removed.

---

## Example

| Employee_Name | Department |
|---------------|------------|
| Rahul | IT |
| Rahul | IT |
| Rahul | HR |

Output:

| Employee_Name | Department |
|---------------|------------|
| Rahul | IT |
| Rahul | HR |

Only the repeated combination is removed.

---

## 6. DISTINCT can be used with SELECT *

Example:

```sql
SELECT DISTINCT *
FROM employee;
```

It removes only completely duplicate rows.

---

## 7. DISTINCT cannot be used without SELECT.

Incorrect:

```sql
DISTINCT department;
```

Correct:

```sql
SELECT DISTINCT department
FROM employee;
```

DISTINCT is a keyword that works only with SELECT.

---

## 8. DISTINCT does not automatically sort the output.

DISTINCT only removes duplicate values.

Sorting is done using ORDER BY.

Example:

```sql
SELECT DISTINCT department
FROM employee;
```

Output order is not guaranteed.

To sort:

```sql
SELECT DISTINCT department
FROM employee
ORDER BY department;
```

---

## 9. If there are no duplicate values, DISTINCT does not change the output.

Example:

Table:

| Department |
|------------|
| IT |
| HR |
| Finance |

Query:

```sql
SELECT DISTINCT department
FROM employee;
```

Output remains the same because all values are already unique.

---

# DISTINCT vs Normal SELECT

## SELECT

Displays all records including duplicates.

Example:

```sql
SELECT department
FROM employee;
```

Output:

IT

HR

IT

Finance

IT

---

## SELECT DISTINCT

Displays only unique values.

Example:

```sql
SELECT DISTINCT department
FROM employee;
```

Output:

IT

HR

Finance

---

# Important Interview Points About DISTINCT

### 1. DISTINCT is used to remove duplicate values from the output.

---

### 2. DISTINCT does not remove duplicate records from the table.

---

### 3. DISTINCT does not permanently modify database data.

---

### 4. DISTINCT works with numeric columns.

---

### 5. DISTINCT works with character columns.

---

### 6. DISTINCT can be used with multiple columns.

---

### 7. DISTINCT can be used with SELECT *.

---

### 8. DISTINCT cannot be used without SELECT.

---

### 9. DISTINCT does not automatically sort data.

Sorting requires ORDER BY.

---

### 10. If no duplicate values exist, DISTINCT produces the same output as SELECT.

# WHERE Clause

## Definition

The `WHERE` clause is used to **specify a condition** and retrieve only those records that satisfy the given condition.

It filters rows from a table based on the condition provided.

---

## Why do we use WHERE?

The WHERE clause is used to:

- Retrieve only required records.
- Filter rows based on conditions.
- Avoid displaying unnecessary data.

---

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

---

## Example

```sql
SELECT *
FROM employee
WHERE salary > 50000;
```

Output:

Only employees whose salary is greater than 50000 are displayed.

---

# Can WHERE be used without SELECT?

No.

WHERE cannot be used independently.

It must be used with SQL statements such as:

- SELECT
- UPDATE
- DELETE

Incorrect:

```sql
WHERE salary > 50000;
```

Correct:

```sql
SELECT *
FROM employee
WHERE salary > 50000;
```

---

# WHERE with SELECT

Example:

```sql
SELECT employee_name
FROM employee
WHERE department = 'IT';
```

Only employees from the IT department are displayed.

---

# WHERE with UPDATE

WHERE is used to specify which rows should be updated.

Example:

```sql
UPDATE employee
SET salary = 60000
WHERE employee_id = 101;
```

Only employee 101's salary is updated.

---

# WHERE with DELETE

WHERE is used to specify which rows should be deleted.

Example:

```sql
DELETE FROM employee
WHERE employee_id = 101;
```

Only employee 101's record is deleted.

---

# What happens if WHERE is omitted?

## SELECT without WHERE

All rows from the table are displayed.

Example:

```sql
SELECT *
FROM employee;
```

---

## UPDATE without WHERE

All rows in the table are updated.

Example:

```sql
UPDATE employee
SET salary = 50000;
```

Every employee's salary becomes 50000.

---

## DELETE without WHERE

All rows from the table are deleted.

Example:

```sql
DELETE FROM employee;
```

The table becomes empty.

---

# Multiple Conditions in WHERE

Multiple conditions can be specified using logical operators.

Logical operators:

- AND
- OR
- NOT

---

## AND Operator

Returns records only if **all conditions are true**.

Example:

```sql
SELECT *
FROM employee
WHERE department = 'IT'
AND salary > 50000;
```

Only IT employees whose salary is greater than 50000 are displayed.

---

## OR Operator

Returns records if **any one condition is true**.

Example:

```sql
SELECT *
FROM employee
WHERE department = 'IT'
OR department = 'HR';
```

Employees belonging to either IT or HR departments are displayed.

---

## NOT Operator

Returns records that do **not** satisfy the condition.

Example:

```sql
SELECT *
FROM employee
WHERE NOT department = 'IT';
```

Employees who are not in the IT department are displayed.

---

# Operators Used with WHERE

## Comparison Operators

Used to compare values.

| Operator | Meaning |
|----------|---------|
| = | Equal To |
| > | Greater Than |
| < | Less Than |
| >= | Greater Than or Equal To |
| <= | Less Than or Equal To |
| != | Not Equal To |
| <> | Not Equal To |

Example:

```sql
SELECT *
FROM employee
WHERE salary >= 50000;
```

---

## Logical Operators

Used to combine multiple conditions.

- AND
- OR
- NOT

---

## Special Operators

Special operators commonly used with WHERE:

- BETWEEN
- IN
- LIKE
- IS NULL
- IS NOT NULL

---

### BETWEEN

Used to retrieve values within a specified range.

Example:

```sql
SELECT *
FROM employee
WHERE salary BETWEEN 30000 AND 60000;
```

---

### IN

Used to compare multiple values.

Example:

```sql
SELECT *
FROM employee
WHERE department IN ('IT','HR');
```

---

### LIKE

Used for pattern matching.

Example:

```sql
SELECT *
FROM employee
WHERE employee_name LIKE 'R%';
```

Displays names starting with 'R'.

---

### IS NULL

Displays records having NULL values.

Example:

```sql
SELECT *
FROM employee
WHERE manager_id IS NULL;
```

---

### IS NOT NULL

Displays records whose values are not NULL.

Example:

```sql
SELECT *
FROM employee
WHERE manager_id IS NOT NULL;
```

---

# Can arithmetic operators be used with WHERE?

Yes.

Arithmetic expressions can be used inside the WHERE condition.

Example:

```sql
SELECT *
FROM employee
WHERE salary + 5000 > 60000;
```

---

# Does WHERE modify data?

No.

WHERE only filters records.

It does not modify:

- Table data
- Table structure

When used with UPDATE or DELETE, WHERE only specifies **which rows** should be affected.

---

# Important Interview Points About WHERE

### 1. WHERE is used to filter rows based on a condition.

---

### 2. WHERE can be used with:

- SELECT
- UPDATE
- DELETE

---

### 3. WHERE cannot be used independently.

---

### 4. SELECT without WHERE displays all rows.

---

### 5. UPDATE without WHERE updates all rows.

---

### 6. DELETE without WHERE deletes all rows.

---

### 7. Multiple conditions can be used with WHERE.

---

### 8. Logical operators used with WHERE:

- AND
- OR
- NOT

---

### 9. Comparison operators:

- =
- >
- <
- >=
- <=
- !=
- <>

---

### 10. Special operators:

- BETWEEN
- IN
- LIKE
- IS NULL
- IS NOT NULL

---

### 11. WHERE only filters records.

It never modifies data by itself.


# ORDER BY Clause

## Definition

The `ORDER BY` clause is used to **sort the retrieved data** based on one or more columns.

It changes only the **display order of the output** and does **not** permanently change the order of data stored in the table.

---

## Why do we use ORDER BY?

ORDER BY is used to:

- Sort the output in ascending or descending order.
- Display records in an organized manner.
- Improve readability of the retrieved data.

---

## Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

---

## Example

```sql
SELECT *
FROM employee
ORDER BY salary;
```

The output is sorted based on the salary column.

---

# ASC (Ascending Order)

ASC sorts data in ascending order.

For numeric values:

- Smallest → Largest

For character values:

- A → Z

ASC is the **default sorting order**.

---

## Syntax

```sql
SELECT *
FROM employee
ORDER BY salary ASC;
```

---

## Example

```sql
SELECT *
FROM employee
ORDER BY employee_name ASC;
```

Names are displayed from A to Z.

---

# DESC (Descending Order)

DESC sorts data in descending order.

For numeric values:

- Largest → Smallest

For character values:

- Z → A

---

## Syntax

```sql
SELECT *
FROM employee
ORDER BY salary DESC;
```

---

## Example

```sql
SELECT *
FROM employee
ORDER BY employee_name DESC;
```

Names are displayed from Z to A.

---

# Default Sorting Order

If neither ASC nor DESC is specified, SQL automatically uses ASC.

Example:

```sql
SELECT *
FROM employee
ORDER BY salary;
```

This is the same as:

```sql
SELECT *
FROM employee
ORDER BY salary ASC;
```

---

# Can ORDER BY Permanently Change Data?

No.

ORDER BY only changes the display order of the output.

It never changes:

- Table data
- Table structure
- Physical storage order

---

# ORDER BY with Multiple Columns

ORDER BY can sort data using multiple columns.

SQL first sorts using the first column.

If values in the first column are the same, SQL sorts those records using the second column.

---

## Syntax

```sql
SELECT *
FROM table_name
ORDER BY column1, column2;
```

---

## Example

```sql
SELECT *
FROM employee
ORDER BY department ASC, salary DESC;
```

Working:

1. Sort by department in ascending order.
2. Within the same department, sort salary in descending order.

---

# Different Sorting Order for Different Columns

Different sorting orders can be used for different columns.

Example:

```sql
SELECT *
FROM employee
ORDER BY department ASC,
salary DESC;
```

Department:

A → Z

Salary:

Highest → Lowest

---

# ORDER BY with Column Alias

ORDER BY can use column aliases.

Example:

```sql
SELECT salary AS income
FROM employee
ORDER BY income;
```

Here,

Actual column name:

salary

Alias:

income

ORDER BY sorts using the alias.

---

# ORDER BY Without SELECT

ORDER BY cannot be used independently.

It must always be used with a statement that retrieves data.

Incorrect:

```sql
ORDER BY salary;
```

Correct:

```sql
SELECT *
FROM employee
ORDER BY salary;
```

---

# Can ORDER BY be used without displaying the sorting column?

Yes.

ORDER BY can sort data using a column that is not displayed in the SELECT list.

Example:

```sql
SELECT employee_name
FROM employee
ORDER BY salary;
```

The output displays only employee names.

However, sorting is performed using salary.

---

# What happens if ORDER BY is omitted?

If ORDER BY is not used, SQL does **not guarantee** the order of the output.

The database may display records in:

- Storage order
- Index order
- Execution plan order

Therefore, if a specific order is required, ORDER BY should always be used.

---

# Important Interview Points About ORDER BY

### 1. ORDER BY is used to sort the retrieved data.

---

### 2. ORDER BY does not permanently change table data.

---

### 3. ORDER BY changes only the display order.

---

### 4. ASC sorts data:

- Smallest → Largest
- A → Z

---

### 5. DESC sorts data:

- Largest → Smallest
- Z → A

---

### 6. ASC is the default sorting order.

---

### 7. Multiple columns can be used with ORDER BY.

---

### 8. Different sorting orders can be used for different columns.

---

### 9. ORDER BY can use column aliases.

---

### 10. ORDER BY cannot be used without SELECT.

---

### 11. ORDER BY can sort using columns that are not displayed in the output.

---

### 12. Without ORDER BY, output order is not guaranteed.

---

# Summary of DQL

## SELECT

- Retrieves data from the database.
- Does not modify data.

---

## DISTINCT

- Removes duplicate values from the output.
- Does not modify table data.

---

## WHERE

- Filters records based on conditions.
- Can be used with SELECT, UPDATE, and DELETE.

---

## ORDER BY

- Sorts the retrieved output.
- Does not permanently change the stored data.

---

# Note:

1. DQL stands for Data Query Language.

2. SELECT is the primary DQL command.

3. SELECT retrieves data but never modifies data.

4. SELECT * retrieves all columns.

5. FROM specifies the source table.

6. DISTINCT removes duplicate values only from the output.

7. WHERE filters records based on conditions.

8. UPDATE without WHERE updates all rows.

9. DELETE without WHERE deletes all rows.

10. ORDER BY sorts only the output.

11. ASC is the default sorting order.

12. ORDER BY never changes table data permanently.

13. Without ORDER BY, output order is not guaranteed.

14. SELECT, DISTINCT, WHERE, and ORDER BY do not permanently modify database data.
