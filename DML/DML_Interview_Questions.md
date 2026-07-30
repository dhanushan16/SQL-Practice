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
The query will fail because the number of values must match the number of columns when column names are not specified.

---

### 4. Why is it recommended to specify column names in an INSERT statement?

**Answer:**
Specifying column names makes the query more readable, easier to maintain, and less affected by future changes in the table structure.

---

### 5. Can we insert values into only selected columns?

**Answer:**
Yes. By specifying required column names in the INSERT statement, values can be inserted into only those columns.

---

### 6. Can the order of column names be changed in an INSERT statement?

**Answer:**
Yes. The order of column names can be changed because SQL maps the values according to the specified column names.

---

### 7. Can we insert NULL values using the INSERT statement?

**Answer:**
Yes. NULL values can be inserted if the column allows NULL values and does not have a NOT NULL constraint.

---

### 8. Can we insert duplicate records into a table?

**Answer:**
Yes. Duplicate records can be inserted unless constraints like PRIMARY KEY or UNIQUE are applied.

---

### 9. What happens if string values are not enclosed in single quotes?

**Answer:**
The query will fail because string values must be enclosed in single quotes.

---

### 10. Does the INSERT command modify existing records?

**Answer:**
No. The INSERT command only adds new records. It does not modify or delete existing records.

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
The first statement does not specify column names, so values must be provided for all columns in the correct order. The second statement specifies column names, making it more readable and suitable for real-world projects.

---

### 12. What happens if a new column is added to the table and the INSERT statement does not specify column names?

**Answer:**
The query may fail because values must be provided for all columns when column names are not specified.

---

### 13. Can the same column be specified twice in an INSERT statement?

**Answer:**
No. A column cannot be specified more than once in the column list of an INSERT statement.

---

### 14. Can we insert multiple rows using a single INSERT statement in Oracle?

**Answer:**
Yes. Oracle supports inserting multiple rows using the `INSERT ALL` statement. It does not support multiple rows insertion using multiple `VALUES` clauses like some other databases.

---

### 15. What is the difference between INSERT, UPDATE, and DELETE?

**Answer:**

- `INSERT` is used to add new records.
- `UPDATE` is used to modify existing records.
- `DELETE` is used to remove existing records.

---

# UPDATE Command

### 1. What is the UPDATE command?

**Answer:**
The `UPDATE` command is a DML command used to modify or update existing records in an existing table.

---

### 2. Can UPDATE be used to insert new records into a table?

**Answer:**
No. UPDATE cannot insert new records. It only modifies existing records.

---

### 3. What is the purpose of the SET clause in UPDATE?

**Answer:**
The `SET` clause is used to specify the column names and their new values that need to be updated.

---

### 4. What is the purpose of the WHERE clause in an UPDATE statement?

**Answer:**
The `WHERE` clause is used to specify the condition and identify which rows should be updated.

---

### 5. What happens if we execute an UPDATE statement without a WHERE clause?

**Answer:**
All rows in the table will be updated because no condition is specified.

---

### 6. Can we update multiple columns using a single UPDATE statement?

**Answer:**
Yes. Multiple columns can be updated using a single UPDATE statement by specifying multiple column-value pairs in the SET clause.

---

### 7. Can we update multiple rows using an UPDATE statement?

**Answer:**
Yes. If multiple rows satisfy the WHERE condition, all matching rows will be updated.

---

### 8. What happens if the WHERE condition does not match any row?

**Answer:**
No rows will be updated. The query will execute successfully without changing any data.

---

### 9. What happens if the same value is updated for multiple rows?

**Answer:**
All rows satisfying the WHERE condition will be updated with that value.

---

### 10. Can we update a column value to NULL using UPDATE?

**Answer:**
Yes. A column value can be updated to NULL if the column allows NULL values.

---

### 11. What is the difference between UPDATE with WHERE clause and UPDATE without WHERE clause?

**Answer:**

- UPDATE with WHERE clause updates only specific rows.
- UPDATE without WHERE clause updates all rows in the table.

---

### 12. Can UPDATE use existing column values while updating records?

**Answer:**
Yes. Existing column values can be used to calculate new values during an UPDATE operation.

---

### 13. Does UPDATE create a new row in the table?

**Answer:**
No. UPDATE only modifies existing rows. It does not create new rows.

---

### 14. What happens when multiple rows have the same value in the column used in WHERE condition?

**Answer:**
All rows matching the condition will be updated.

---

### 15. What is the difference between INSERT and UPDATE?

**Answer:**

- INSERT adds new records into a table.
- UPDATE modifies existing records in a table.

---

### 16. Why should we use the WHERE clause carefully in UPDATE statements?

**Answer:**
The WHERE clause determines which rows are updated. If it is missing or incorrect, unwanted changes may happen to multiple rows.

---

### 17. Can we update multiple rows using different conditions in separate UPDATE statements?

**Answer:**
Yes. Multiple UPDATE statements can be executed one after another, and each statement updates rows based on its own condition.

---

### 18. What happens if we update a column with the same existing value?

**Answer:**
The UPDATE statement will execute, but the value remains unchanged because the new value is the same as the existing value.

---

# DELETE Command

### 1. What is the DELETE command?

**Answer:**
The `DELETE` command is a DML command used to remove existing records (rows) from an existing table.

---

### 2. Does DELETE remove the entire table structure?

**Answer:**
No. DELETE removes only the data stored in rows. The table structure remains unchanged.

---

### 3. Can DELETE be used to delete specific rows?

**Answer:**
Yes. Specific rows can be deleted using the WHERE clause with a condition.

---

### 4. What happens if we execute DELETE without a WHERE clause?

**Answer:**
All rows in the table will be deleted because no condition is specified. The table structure remains unchanged.

---

### 5. What is the purpose of the WHERE clause in DELETE?

**Answer:**
The WHERE clause specifies the condition and identifies which rows should be deleted.

---

### 6. Can we delete multiple rows using a single DELETE statement?

**Answer:**
Yes. Multiple rows can be deleted using a single DELETE statement if they satisfy the WHERE condition.

---

### 7. What happens if the WHERE condition does not match any row?

**Answer:**
No rows will be deleted. The query will execute successfully without changing any data.

---

### 8. If multiple rows have the same value in the column used in WHERE condition, how many rows will be deleted?

**Answer:**
All rows satisfying the condition will be deleted.

---

### 9. Can DELETE insert new rows into a table?

**Answer:**
No. DELETE only removes existing records. It cannot insert new records.

---

### 10. What is the difference between DELETE and DROP?

**Answer:**

- DELETE removes data from rows of a table.
- DROP removes the entire table including data and structure.

---

### 11. What is the difference between DELETE and TRUNCATE?

**Answer:**

- DELETE can remove specific rows using the WHERE clause.
- TRUNCATE removes all rows and does not support the WHERE clause.
- DELETE is a DML command, whereas TRUNCATE is a DDL command.

---

### 12. Can DELETE remove duplicate records?

**Answer:**
Yes. If duplicate records satisfy the WHERE condition, all matching duplicate records will be deleted.

---

### 13. What happens when DELETE is executed on an empty table?

**Answer:**
No rows will be deleted because there are no records available in the table.

---

### 14. Can we delete rows based on multiple conditions?

**Answer:**
Yes. Multiple conditions can be used with operators like AND and OR to delete required rows.

---

### 15. What is the difference between DELETE with WHERE clause and DELETE without WHERE clause?

**Answer:**

- DELETE with WHERE clause removes only rows satisfying the condition.
- DELETE without WHERE clause removes all rows from the table.

---

### 16. Does DELETE remove the table permanently?

**Answer:**
No. DELETE removes only the data stored in the table. The table structure remains available.

---

### 17. Which command is used to remove all records from a table while keeping the structure?

**Answer:**
`DELETE` without a WHERE clause and `TRUNCATE` can remove all records while keeping the table structure unchanged.
