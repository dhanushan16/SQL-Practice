# DDL Interview Questions and Answers

## 1. What is DDL?

**Answer:**

DDL stands for **Data Definition Language**.

It is used to create, modify, and delete the structure of database objects like tables.

DDL commands mainly work on the structure of the database rather than the data inside the table.

The main DDL commands are:

- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME


---

## 2. What are the commands available in DDL?

**Answer:**

The main commands available in DDL are:

1. **CREATE** - Used to create new database objects.
2. **ALTER** - Used to modify the structure of existing database objects.
3. **DROP** - Used to permanently remove database objects.
4. **TRUNCATE** - Used to remove all records from a table while keeping its structure.
5. **RENAME** - Used to change the name of an existing database object.


---

# CREATE Command


## 3. What is the CREATE command?

**Answer:**

CREATE command is used to create new database objects like tables.

It defines the structure of the table by specifying column names, data types, and sizes.

Example:

```sql
CREATE TABLE student (
    student_id NUMBER(5),
    name VARCHAR2(30),
    age NUMBER(2)
);
```


---

## 4. What is the syntax of CREATE TABLE?

**Answer:**

Syntax:

```sql
CREATE TABLE table_name (
    column1 datatype(size),
    column2 datatype(size),
    column3 datatype(size)
);
```


---

## 5. What happens when we create a table?

**Answer:**

When we create a table:

- The table structure is created.
- Columns with their respective data types are defined.
- No data will be stored until records are inserted using INSERT command.


---

# ALTER Command


## 6. What is the ALTER command?

**Answer:**

ALTER command is used to modify the structure of an existing table.

Using ALTER command, we can:

- Add a new column
- Modify an existing column
- Drop a column
- Rename a table or column


---

## 7. What is the syntax of ALTER command?

**Answer:**

Syntax:

```sql
ALTER TABLE table_name action;
```


---

## 8. How do you add a new column using ALTER?

**Answer:**

ADD is used to add a new column to an existing table.

Example:

```sql
ALTER TABLE employee
ADD salary INT;
```


---

## 9. How do you modify an existing column using ALTER?

**Answer:**

MODIFY is used to change the datatype or size of an existing column.

Example:

```sql
ALTER TABLE employee
MODIFY salary VARCHAR2(20);
```


---

## 10. How do you remove a column using ALTER?

**Answer:**

DROP COLUMN is used to remove an existing column from a table.

Example:

```sql
ALTER TABLE employee
DROP COLUMN salary;
```


---

# DROP Command


## 11. What is the DROP command?

**Answer:**

DROP command is used to permanently delete a database object along with its structure and data.

Example:

```sql
DROP TABLE employee;
```


---

## 12. What happens when we use the DROP command?

**Answer:**

When a table is dropped:

- The table structure is removed.
- All data stored in the table is deleted.
- The table cannot be accessed again unless it is created again.


---

# TRUNCATE Command


## 13. What is the TRUNCATE command?

**Answer:**

TRUNCATE command is used to remove all records from a table while keeping the table structure unchanged.

Example:

```sql
TRUNCATE TABLE employee;
```


---

## 14. What is the difference between DROP and TRUNCATE?

**Answer:**

| DROP | TRUNCATE |
|---|---|
| Removes table structure and data | Removes only table data |
| Table no longer exists | Table structure remains |
| Used to permanently delete a table | Used to remove all records quickly |


---

## 15. What is the difference between DELETE and TRUNCATE?

**Answer:**

| DELETE | TRUNCATE |
|---|---|
| DML command | DDL command |
| Can remove selected rows using WHERE condition | Removes all rows from the table |
| Slower compared to TRUNCATE | Faster compared to DELETE |
| Table structure remains | Table structure remains |


---

## 16. Can we rollback TRUNCATE?

**Answer:**

No, TRUNCATE cannot be rolled back because it is a DDL command.

Once the records are removed using TRUNCATE, they cannot be recovered using rollback.


---

# RENAME Command


## 17. What is the RENAME command?

**Answer:**

RENAME command is used to change the name of an existing database object like a table.

Example:

```sql
RENAME employee TO employee_details;
```


---

## 18. What is the syntax of RENAME command?

**Answer:**

Syntax:

```sql
RENAME old_table_name TO new_table_name;
```


---

## 19. What is the difference between ALTER RENAME and RENAME command?

**Answer:**

Both are used to rename database objects.

ALTER RENAME is used with ALTER TABLE command.

Example:

```sql
ALTER TABLE employee
RENAME TO employee_details;
```

RENAME command directly changes the name of the object.

Example:

```sql
RENAME employee TO employee_details;
```


---

## 20. Difference between CREATE, ALTER, DROP, TRUNCATE, and RENAME?

**Answer:**

| Command | Purpose |
|---|---|
| CREATE | Creates a new database object |
| ALTER | Modifies the structure of an existing object |
| DROP | Permanently removes an object |
| TRUNCATE | Removes all records but keeps the structure |
| RENAME | Changes the name of an existing object |
