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
