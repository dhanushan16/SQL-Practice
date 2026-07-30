# DML (Data Manipulation Language)

## INSERT Command

### Definition
- `INSERT` is a **DML (Data Manipulation Language)** command.
- It is used to **insert new records (rows) into an existing table**.
- It does **not** modify or delete existing records; it only adds new rows.

---

## Syntax

### 1. Without Column Names

```sql
INSERT INTO table_name
VALUES (value1, value2, value3);
```

**Points to Remember:**
- Column names are **not specified**.
- Values must be provided for **all columns** in the table.
- Values must be in the **same order** as the columns are defined.
- If the number of values does not match the number of columns, the query will fail.

---

### 2. With Column Names (Recommended)

```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```

**Points to Remember:**
- Column names are **explicitly specified**.
- Values are inserted according to the specified column names.
- Only the required columns need to be mentioned.
- The order of the columns can be changed because SQL maps values to the specified column names.
- This is the **recommended syntax** for real-world projects.

---

## Important Rules

- String values must be enclosed in **single quotes (`' '`)**.
- Numeric values are written **without quotes**.
- `NULL` can be inserted if the column allows `NULL` values.
- Duplicate records can be inserted unless constraints like **PRIMARY KEY** or **UNIQUE** are present.


