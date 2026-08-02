# DQL Interview Questions and Answers

# SELECT

## 1. What is DQL?

**Answer:**

DQL stands for **Data Query Language**.

It is used to retrieve or fetch data from the database.

The main command in DQL is **SELECT**.

---

## 2. What is the SELECT command?

**Answer:**

SELECT is a DQL command used to retrieve or fetch existing data from one or more tables based on the user's requirement.

It only displays data and does not modify it.

---

## 3. Why is SELECT called a DQL command?

**Answer:**

SELECT is called a DQL command because it is used to query and retrieve data from the database.

It only reads the data and displays the required output.

---

## 4. What is the syntax of the SELECT statement?

**Answer:**

```sql
SELECT column_name
FROM table_name;
```

Example:

```sql
SELECT employee_name
FROM employee;
```

---

## 5. Does the SELECT statement modify data in the table?

**Answer:**

No.

SELECT only retrieves and displays data.

It does not modify the data or the table structure.

---

## 6. What is the difference between SELECT * and SELECT column_name?

**Answer:**

| SELECT * | SELECT column_name |
|-----------|--------------------|
| Retrieves all columns from the table. | Retrieves only the specified column(s). |
| Used when all columns are required. | Used when only required columns are needed. |

Example:

```sql
SELECT *
FROM employee;
```

```sql
SELECT employee_name
FROM employee;
```

---

## 7. Can we retrieve multiple columns using a single SELECT statement?

**Answer:**

Yes.

We can retrieve multiple columns by separating the column names with commas.

Example:

```sql
SELECT employee_id, employee_name, salary
FROM employee;
```

---

## 8. Is it mandatory to use * in every SELECT statement?

**Answer:**

No.

`*` is used only when all columns are required.

If only specific columns are required, we specify their names.

---

## 9. What is the purpose of the FROM clause?

**Answer:**

The FROM clause specifies the table from which the data has to be retrieved.

Example:

```sql
SELECT employee_name
FROM employee;
```

---

## 10. Can we use SELECT without the FROM clause?

**Answer:**

Normally, FROM is required when retrieving data from a table.

However, some databases allow SELECT without FROM when selecting constants, expressions or functions.

Example:

```sql
SELECT 10+20;
```

---

## 11. Can we display the same column multiple times in a SELECT statement?

**Answer:**

Yes.

The same column can be displayed multiple times.

Example:

```sql
SELECT employee_name, employee_name
FROM employee;
```

---

## 12. Can we change the display order of columns in the output?

**Answer:**

Yes.

The display order depends on the order in which columns are mentioned in the SELECT statement.

Example:

```sql
SELECT salary, employee_name
FROM employee;
```

---

## 13. Does changing the order of columns in SELECT change the table structure?

**Answer:**

No.

It only changes the display order in the output.

The actual table structure remains unchanged.

---

## 14. What happens if we do not specify the FROM clause while retrieving table data?

**Answer:**

The query will not work because SQL does not know from which table the data should be retrieved.

---

## 15. Does the SELECT statement permanently change the table?

**Answer:**

No.

SELECT only retrieves data.

No permanent changes are made to the table.

---

# DISTINCT

## 16. What is the DISTINCT keyword?

**Answer:**

DISTINCT is a keyword used with SELECT to display only unique values by removing duplicate values from the output.

---

## 17. Why do we use DISTINCT?

**Answer:**

DISTINCT is used to retrieve only unique values from a column by eliminating duplicate values from the output.

---

## 18. Does DISTINCT remove duplicate records from the table?

**Answer:**

No.

DISTINCT removes duplicate values only from the output.

The original table remains unchanged.

---

## 19. Does DISTINCT permanently modify the data?

**Answer:**

No.

DISTINCT only changes the displayed output.

It does not modify the database.

---

## 20. Can DISTINCT be used with numeric columns?

**Answer:**

Yes.

DISTINCT can be used with numeric columns.

Example:

```sql
SELECT DISTINCT salary
FROM employee;
```

---

## 21. Can DISTINCT be used with character columns?

**Answer:**

Yes.

DISTINCT can be used with character columns.

Example:

```sql
SELECT DISTINCT department
FROM employee;
```

---

## 22. Can DISTINCT be used with multiple columns?

**Answer:**

Yes.

DISTINCT can be used with multiple columns.

Example:

```sql
SELECT DISTINCT employee_name, department
FROM employee;
```

---

## 23. How does DISTINCT work when multiple columns are used?

**Answer:**

DISTINCT checks the complete combination of all selected columns.

If the combination is repeated, only one row is displayed.

---

## 24. Can DISTINCT be used with SELECT *?

**Answer:**

Yes.

DISTINCT can be used with SELECT *.

Example:

```sql
SELECT DISTINCT *
FROM employee;
```

It removes completely duplicate rows from the output.

---

## 25. Can DISTINCT be used without the SELECT statement?

**Answer:**

No.

DISTINCT is a keyword.

It works only with the SELECT statement.

Incorrect:

```sql
DISTINCT department;
```

Correct:

```sql
SELECT DISTINCT department
FROM employee;
```

---

## 26. Does DISTINCT automatically sort the output?

**Answer:**

No.

DISTINCT only removes duplicate values.

Sorting is done using ORDER BY.

---

## 27. What is the difference between DISTINCT and ORDER BY?

**Answer:**

| DISTINCT | ORDER BY |
|-----------|----------|
| Removes duplicate values from the output. | Sorts the output. |
| Does not sort the data. | Does not remove duplicates. |
| Does not modify table data. | Does not modify table data. |

---

# WHERE

## 28. What is the WHERE clause?

**Answer:**

WHERE is a clause used to specify conditions and filter records based on the given condition.

Only rows satisfying the condition are displayed.

---

## 29. Why is the WHERE clause used?

**Answer:**

WHERE is used to retrieve only those records which satisfy the specified condition instead of displaying the entire table.

---

## 30. What is the syntax of the WHERE clause?

**Answer:**

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

Example:

```sql
SELECT *
FROM employee
WHERE salary > 50000;
```

Only employees whose salary is greater than 50000 are displayed.


# WHERE Clause

## 31. Can WHERE be used without the SELECT statement?

**Answer:**

Yes.

WHERE can be used without SELECT when it is used with DML commands like UPDATE and DELETE.

Example:

```sql
UPDATE employee
SET salary = 60000
WHERE employee_id = 101;
```

```sql
DELETE FROM employee
WHERE employee_id = 101;
```

---

## 32. Can WHERE be used with UPDATE?

**Answer:**

Yes.

WHERE is used with UPDATE to specify which rows should be updated.

Example:

```sql
UPDATE employee
SET salary = 50000
WHERE employee_id = 101;
```

Only employee 101 will be updated.

---

## 33. Can WHERE be used with DELETE?

**Answer:**

Yes.

WHERE is used with DELETE to specify which rows should be deleted.

Example:

```sql
DELETE FROM employee
WHERE employee_id = 101;
```

Only employee 101 will be deleted.

---

## 34. What happens if the WHERE clause is omitted in a SELECT statement?

**Answer:**

If WHERE is omitted, all rows from the table are retrieved.

Example:

```sql
SELECT *
FROM employee;
```

---

## 35. What happens if the WHERE clause is omitted in an UPDATE statement?

**Answer:**

If WHERE is omitted, all rows in the table will be updated.

Example:

```sql
UPDATE employee
SET salary = 60000;
```

---

## 36. What happens if the WHERE clause is omitted in a DELETE statement?

**Answer:**

If WHERE is omitted, all rows in the table will be deleted.

Example:

```sql
DELETE FROM employee;
```

---

## 37. Can multiple conditions be used in a WHERE clause?

**Answer:**

Yes.

Multiple conditions can be used by using logical operators like:

- AND
- OR
- NOT

Example:

```sql
SELECT *
FROM employee
WHERE department='IT'
AND salary>50000;
```

---

## 38. Which logical operators can be used with WHERE?

**Answer:**

The logical operators used with WHERE are:

- AND
- OR
- NOT

These operators are used to combine multiple conditions.

---

## 39. Which comparison operators can be used with WHERE?

**Answer:**

Comparison operators used with WHERE are:

- =
- >
- <
- >=
- <=
- !=
- <>

Example:

```sql
SELECT *
FROM employee
WHERE salary >= 50000;
```

---

## 40. Which special operators can be used with WHERE?

**Answer:**

Special operators include:

- BETWEEN
- IN
- LIKE
- IS NULL
- IS NOT NULL

---

## 41. Can arithmetic operators be used in the WHERE clause?

**Answer:**

Yes.

Arithmetic operators can be used as part of expressions inside the WHERE clause.

Example:

```sql
SELECT *
FROM employee
WHERE salary + 5000 > 60000;
```

---

## 42. What is the difference between WHERE and HAVING?

**Answer:**

Not covered yet.

HAVING will be learned later along with GROUP BY.

---

# ORDER BY

## 43. What is the ORDER BY clause?

**Answer:**

ORDER BY is a clause used to sort the retrieved data based on one or more columns.

It changes only the display order of the output.

---

## 44. Why is ORDER BY used?

**Answer:**

ORDER BY is used to display data in a required sorted order.

It can sort data in ascending or descending order.

---

## 45. Does ORDER BY permanently change the order of data stored in the table?

**Answer:**

No.

ORDER BY only sorts the displayed output.

It does not permanently change the stored data.

---

## 46. What is the default sorting order in ORDER BY?

**Answer:**

The default sorting order is **ASC (Ascending)**.

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

## 47. What is the difference between ASC and DESC?

**Answer:**

| ASC | DESC |
|------|------|
| Sorts data in ascending order. | Sorts data in descending order. |
| Smallest to largest. | Largest to smallest. |
| A to Z. | Z to A. |

---

## 48. Can ORDER BY be used with multiple columns?

**Answer:**

Yes.

Multiple columns can be used in ORDER BY.

Example:

```sql
SELECT *
FROM employee
ORDER BY department, salary;
```

---

## 49. How does ORDER BY work with multiple columns?

**Answer:**

SQL first sorts based on the first column.

If multiple rows have the same value in the first column, then SQL sorts them based on the second column.

Example:

```sql
SELECT *
FROM employee
ORDER BY department ASC, salary DESC;
```

---

## 50. Can different sorting orders be used for different columns?

**Answer:**

Yes.

Different sorting orders can be specified for different columns.

Example:

```sql
SELECT *
FROM employee
ORDER BY department ASC, salary DESC;
```

---

## 51. Can ORDER BY be used with a column that is not present in the SELECT statement?

**Answer:**

Yes.

ORDER BY can sort using a column that is not displayed in the output.

Example:

```sql
SELECT employee_name
FROM employee
ORDER BY salary;
```

The output displays only employee_name, but sorting is done using salary.

---

## 52. Can ORDER BY be used without the SELECT statement?

**Answer:**

No.

ORDER BY cannot be used independently.

It must be used with a statement that retrieves data.

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

## 53. What happens if ORDER BY is not specified in a SELECT statement?

**Answer:**

The output order is not guaranteed.

The database may display rows in any order.

If a specific order is required, ORDER BY should be used.

---

## 54. Can ORDER BY be used with column aliases?

**Answer:**

Yes.

ORDER BY can use column aliases.

Example:

```sql
SELECT salary AS income
FROM employee
ORDER BY income;
```

---

## 55. Does ORDER BY modify the table data?

**Answer:**

No.

ORDER BY only changes the display order of the retrieved data.

The original table remains unchanged.

---

## 56. Can ORDER BY be used with DISTINCT?

**Answer:**

Yes.

DISTINCT removes duplicate values, and ORDER BY sorts the output.

Example:

```sql
SELECT DISTINCT department
FROM employee
ORDER BY department;
```

---

## 57. Can WHERE and ORDER BY be used together?

**Answer:**

Yes.

WHERE filters the rows first, and ORDER BY sorts the filtered result.

Example:

```sql
SELECT *
FROM employee
WHERE salary > 50000
ORDER BY salary DESC;
```

---

## 58. Which clause is executed first: WHERE or ORDER BY?

**Answer:**

WHERE is executed first to filter the records.

ORDER BY is executed after filtering to sort the result.

---

## 59. Which clause removes duplicate values?

**Answer:**

DISTINCT removes duplicate values from the output.

---

## 60. Which clause sorts the retrieved data?

**Answer:**

ORDER BY sorts the retrieved data in ascending or descending order.



## 61. How will you display all records from the employee table?

**Answer:**

```sql
SELECT *
FROM employee;
```

---

## 62. How will you display only employee names?

**Answer:**

```sql
SELECT employee_name
FROM employee;
```

---

## 63. How will you display employee_id, employee_name and salary?

**Answer:**

```sql
SELECT employee_id, employee_name, salary
FROM employee;
```

---

## 64. How will you display only unique department names?

**Answer:**

```sql
SELECT DISTINCT department
FROM employee;
```

---

## 65. How will you display employees whose salary is greater than 50000?

**Answer:**

```sql
SELECT *
FROM employee
WHERE salary > 50000;
```

---

## 66. How will you display employees belonging to the IT department?

**Answer:**

```sql
SELECT *
FROM employee
WHERE department = 'IT';
```

---

## 67. How will you display employees whose salary is between 40000 and 60000?

**Answer:**

```sql
SELECT *
FROM employee
WHERE salary BETWEEN 40000 AND 60000;
```

---

## 68. How will you display employees belonging to IT or HR departments?

**Answer:**

```sql
SELECT *
FROM employee
WHERE department IN ('IT', 'HR');
```

OR

```sql
SELECT *
FROM employee
WHERE department='IT'
OR department='HR';
```

---

## 69. How will you display employee names starting with the letter 'R'?

**Answer:**

```sql
SELECT *
FROM employee
WHERE employee_name LIKE 'R%';
```

---

## 70. How will you display employees whose city value is NULL?

**Answer:**

```sql
SELECT *
FROM employee
WHERE city IS NULL;
```

---

## 71. How will you sort employees based on salary in ascending order?

**Answer:**

```sql
SELECT *
FROM employee
ORDER BY salary ASC;
```

---

## 72. How will you sort employees based on salary in descending order?

**Answer:**

```sql
SELECT *
FROM employee
ORDER BY salary DESC;
```

---

## 73. How will you sort employees first by department and then by salary?

**Answer:**

```sql
SELECT *
FROM employee
ORDER BY department ASC, salary DESC;
```

---

## 74. How will you display unique departments in alphabetical order?

**Answer:**

```sql
SELECT DISTINCT department
FROM employee
ORDER BY department ASC;
```

---

## 75. What is the difference between retrieving data and modifying data?

**Answer:**

Retrieving data means displaying existing records from the table.

Modifying data means inserting, updating or deleting records in the table.

Example:

Retrieving:

```sql
SELECT *
FROM employee;
```

Modifying:

```sql
UPDATE employee
SET salary = 60000
WHERE employee_id = 101;
```

## 76. Is SELECT faster than SELECT *?

**Answer:**

Yes, when only required columns are selected.

Selecting specific columns reduces unnecessary data retrieval and improves performance.

Example:

```sql
SELECT employee_name
FROM employee;
```

is generally preferred over

```sql
SELECT *
FROM employee;
```

---

## 77. Why is specifying column names preferred over SELECT *?

**Answer:**

Because:

- Retrieves only required columns.
- Improves performance.
- Reduces unnecessary data transfer.
- Makes the query easier to understand.

---

## 78. Can SELECT retrieve data from multiple tables?

**Answer:**

Yes.

Using JOINs, SELECT can retrieve data from multiple tables.

Example:

```sql
SELECT e.employee_name,
       d.department_name
FROM employee e
JOIN department d
ON e.department_id = d.department_id;
```

*(JOINs are covered later.)*

---

## 79. Can WHERE and ORDER BY be used together?

**Answer:**

Yes.

WHERE filters the records first.

ORDER BY sorts the filtered output.

Example:

```sql
SELECT *
FROM employee
WHERE salary > 50000
ORDER BY salary DESC;
```

---

## 80. Can DISTINCT and ORDER BY be used together?

**Answer:**

Yes.

DISTINCT removes duplicate values.

ORDER BY sorts the remaining output.

Example:

```sql
SELECT DISTINCT department
FROM employee
ORDER BY department;
```

---

## 81. Which clause removes duplicate values?

**Answer:**

DISTINCT removes duplicate values.

---

## 82. Which clause filters rows?

**Answer:**

WHERE clause filters rows based on conditions.

---

## 83. Which clause sorts rows?

**Answer:**

ORDER BY sorts the retrieved rows.

---

## 84. Which clause specifies the source table?

**Answer:**

FROM clause specifies the table from which data is retrieved.

---

## 85. What is the correct order of clauses in a SELECT query?

**Answer:**

```sql
SELECT
FROM
WHERE
ORDER BY
```

General Syntax:

```sql
SELECT column_name
FROM table_name
WHERE condition
ORDER BY column_name;
```

---

## 86. What are the basic clauses used with the SELECT statement?

**Answer:**

The basic clauses used with SELECT are:

- FROM
- WHERE
- ORDER BY

The basic keyword used with SELECT is:

- DISTINCT

---

## 87. Which DQL command have you learned?

**Answer:**

The DQL command learned is:

- SELECT

The clauses and keyword learned with SELECT are:

- FROM
- DISTINCT
- WHERE
- ORDER BY

---

## 88. Explain the complete flow of a SELECT statement with an example.

**Answer:**

Example:

```sql
SELECT DISTINCT department
FROM employee
WHERE salary > 50000
ORDER BY department ASC;
```

Flow:

1. FROM selects the source table.
2. WHERE filters the required records.
3. SELECT retrieves the required column(s).
4. DISTINCT removes duplicate values.
5. ORDER BY sorts the final output.

---

# Quick Interview Revision

| Keyword / Clause | Purpose |
|------------------|---------|
| SELECT | Retrieves data |
| FROM | Specifies the source table |
| DISTINCT | Removes duplicate values from output |
| WHERE | Filters rows based on conditions |
| ORDER BY | Sorts the output |
