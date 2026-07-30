# DML Interview Questions

## INSERT Command

### 1. What is the INSERT command?
**Answer:**
The `INSERT` command is a DML (Data Manipulation Language) command used to insert new records (rows) into an existing table.

---

### 2. Can we insert data into a table without specifying column names?
**Answer:**
Yes. We can insert data without specifying column names only if values are provided for all columns in the same order as they are defined in the table.

---

### 3. What happens if the number of values does not match the number of columns?
**Answer:**
The query will fail because the number of values must exactly match the number of columns when column names are not specified.

---

### 4. Why is it recommended to specify column names in an INSERT statement?
**Answer:**
Specifying column names makes the query more readable, easier to maintain, and less affected by changes in the table structure.

---

### 5. Can we insert values into only selected columns?
**Answer:**
Yes. By specifying the required column names in the INSERT statement, values can be inserted into only those columns.

---

### 6. Can the order of column names be changed in an INSERT statement?
**Answer:**
Yes. SQL maps the values to the specified column names, so the order of the columns can be changed.

---

### 7. Can we insert NULL values using the INSERT statement?
**Answer:**
Yes. NULL values can be inserted if the column allows NULL values (i.e., it does not have a NOT NULL constraint).

---

### 8. Can we insert duplicate records into a table?
**Answer:**
Yes. Duplicate records can be inserted unless constraints like PRIMARY KEY or UNIQUE are present.

---

### 9. What happens if string values are not enclosed in single quotes?
**Answer:**
The query will fail because string values must be enclosed in single quotes.

---

### 10. Does the INSERT command modify existing records?
**Answer:**
No. The INSERT command only adds new rows. It does not modify or delete existing records.

---

### 11. What is the difference between these two INSERT statements?

```sql
INSERT INTO employee
VALUES (101, 'Rahul', 50000);
```

```sql
INSERT INTO employee (employee_id, name, salary)
VALUES (101, 'Rahul', 50000);
```

**Answer:**
The first statement does not specify column names, so values must be provided for all columns in the correct order. The second statement explicitly specifies the column names, making it more readable, maintainable, and suitable for real-world projects.

---

### 12. What happens if a new column is added to the table and the INSERT statement does not specify column names?

**Answer:**
The query may fail because SQL expects a value for every column in the table when column names are not specified.

---

### 13. Can the same column be specified twice in an INSERT statement?

**Answer:**
No. A column can be specified only once in the column list of an INSERT statement.

---

### 14. Can we insert multiple rows using a single INSERT statement in Oracle?

**Answer:**
No. Oracle does not support inserting multiple rows using multiple `VALUES` clauses in a single INSERT statement. Oracle provides `INSERT ALL` for inserting multiple rows.

---

### 15. What is the difference between INSERT, UPDATE, and DELETE?

**Answer:**
- `INSERT` adds new rows.
- `UPDATE` modifies existing rows.
- `DELETE` removes existing rows.


# UPDATE Command

### 1. What is the UPDATE command?
**Answer:**
The `UPDATE` command is a DML (Data Manipulation Language) command used to modify or update existing records in an existing table.

---

### 2. Can UPDATE be used to insert new records into a table?
**Answer:**
No. The `UPDATE` command cannot insert new records. It only modifies the values of existing records. To insert new records, we use the `INSERT` command.

---

### 3. What is the purpose of the SET clause in UPDATE?

**Answer:**
The `SET` clause is used to specify the column name and the new value that needs to be updated.

---

### 4. What is the purpose of the WHERE clause in an UPDATE statement?

**Answer:**
The `WHERE` clause is used to specify the condition and identify which rows need to be updated.

---

### 5. What happens if we execute an UPDATE statement without a WHERE clause?

**Answer:**
If the `WHERE` clause is omitted, the UPDATE statement will affect all rows in the table.

---

### 6. Can we update multiple columns using a single UPDATE statement?

**Answer:**
Yes. Multiple columns can be updated using a single UPDATE statement by specifying each column and its new value in the SET clause, separated by commas.

---

### 7. Can we update multiple rows using an UPDATE statement?

**Answer:**
Yes. If multiple rows satisfy the condition given in the WHERE clause, all matching rows will be updated.

---

### 8. What happens if the WHERE condition does not match any row?

**Answer:**
If no row satisfies the WHERE condition, no rows will be updated. The query will execute successfully without modifying any records.

---

### 9. What happens if the same value is updated for multiple rows?

**Answer:**
All rows that satisfy the WHERE condition will be updated with the specified value.

---

### 10. Can we update a column value to NULL using UPDATE?

**Answer:**
Yes. A column value can be updated to NULL if the column allows NULL values.

---

### 11. What is the difference between UPDATE with WHERE clause and UPDATE without WHERE clause?

**Answer:**

- UPDATE with WHERE clause updates only specific rows that satisfy the condition.
- UPDATE without WHERE clause updates all rows in the table.

---

### 12. Can UPDATE use existing column values while updating records?

**Answer:**
Yes. Existing column values can be used to calculate the new value during an UPDATE operation.

---

### 13. Does UPDATE create a new row in the table?

**Answer:**
No. UPDATE only modifies existing records. It does not create new rows.

---

### 14. What happens when multiple rows have the same value in the column used in WHERE condition?

**Answer:**
All rows matching the condition will be updated.

---

### 15. What is the difference between INSERT and UPDATE?

**Answer:**

- `INSERT` is used to add new records into a table.
- `UPDATE` is used to modify existing records in a table.

---

### 16. Why should we use the WHERE clause carefully in UPDATE statements?

**Answer:**
The WHERE clause determines which rows are updated. If it is missing or incorrect, unwanted changes can happen to multiple rows in the table.

---

### 17. Can we update multiple rows using different conditions in separate UPDATE statements?

**Answer:**
Yes. Multiple UPDATE statements can be executed one after another, and each statement updates the rows that satisfy its own condition.


# DELETE Command

### 1. What is the DELETE command?

**Answer:**
The `DELETE` command is a DML (Data Manipulation Language) command used to remove existing records (rows) from an existing table.

---

### 2. Does DELETE remove the entire table structure?

**Answer:**
No. The `DELETE` command only removes data from rows. The table structure, columns, and definition remain unchanged.

---

### 3. Can DELETE be used to delete specific rows?

**Answer:**
Yes. Specific rows can be deleted by using the `WHERE` clause with a condition.

---

### 4. What happens if we execute DELETE without a WHERE clause?

**Answer:**
If the `WHERE` clause is omitted, all rows in the table will be deleted. The table structure will remain unchanged.

---

### 5. What is the purpose of the WHERE clause in DELETE?

**Answer:**
The `WHERE` clause is used to specify the condition and identify which rows should be deleted.

---

### 6. Can we delete multiple rows using a single DELETE statement?

**Answer:**
Yes. Multiple rows can be deleted using a single DELETE statement if multiple rows satisfy the condition specified in the WHERE clause.

---

### 7. What happens if the WHERE condition does not match any row?

**Answer:**
No rows will be deleted. The query will execute successfully without modifying any data.

---

### 8. If multiple rows have the same value in the column used in WHERE condition, how many rows will be deleted?

**Answer:**
All rows that satisfy the condition will be deleted. DELETE removes every matching row, not only the first matching row.

---

### 9. Can DELETE insert new rows into a table?

**Answer:**
No. DELETE only removes existing records. It cannot insert new records.

---

### 10. What is the difference between DELETE and DROP?

**Answer:**

- `DELETE` removes data from rows of a table.
- `DROP` removes the entire table including data and structure.

---

### 11. What is the difference between DELETE and TRUNCATE?

**Answer:**

- `DELETE` can remove specific rows using the WHERE clause.
- `TRUNCATE` removes all rows and does not support the WHERE clause.
- `DELETE` is a DML command, whereas `TRUNCATE` is a DDL command.

---

### 12. Can DELETE remove duplicate records?

**Answer:**

Yes. If duplicate records satisfy the WHERE condition, all matching duplicate records will be deleted.

---

### 13. What happens when DELETE is executed on an empty table?

**Answer:**

No rows will be deleted because there are no records available in the table. The query will execute successfully.

---

### 14. Can we delete rows based on multiple conditions?

**Answer:**

Yes. Multiple conditions can be used with operators like `AND` or `OR` to delete required rows.

---

### 15. What is the difference between DELETE with WHERE clause and DELETE without WHERE clause?

**Answer:**

- DELETE with WHERE clause removes only rows that satisfy the condition.
- DELETE without WHERE clause removes all rows from the table.

---

### 16. Does DELETE remove the table permanently?

**Answer:**

No. DELETE removes only the data stored in the table. The table remains available for future operations.

---

### 17. Which command is used to remove all records from a table while keeping the structure?

**Answer:**

`DELETE` without a WHERE clause or `TRUNCATE` can remove all records while keeping the table structure.
