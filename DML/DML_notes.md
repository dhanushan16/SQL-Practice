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


# UPDATE Command

## Definition
- `UPDATE` is a **DML (Data Manipulation Language)** command.
- It is used to **modify or update existing records (rows) in an existing table**.
- It can update one or more column values in a table.
- It does **not insert new records**; it only modifies existing data.

---

## Syntax

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

---

## Important Points

- The `SET` clause is used to specify the column and its new value.
- The `WHERE` clause is used to specify which rows need to be updated.
- If the `WHERE` clause is provided, only the rows that satisfy the condition will be updated.
- If the `WHERE` clause is omitted, all rows in the table will be updated.
- Multiple columns can be updated using a single `UPDATE` statement.
- Column values are separated using commas when updating multiple columns.
- If the `WHERE` condition does not match any row, no rows will be updated.
- `UPDATE` does not create new rows; it only changes existing records.

---

## Updating Multiple Columns

- Multiple columns can be updated in a single `UPDATE` statement.
- Each column and its new value are specified in the `SET` clause.

### Syntax

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

---

## Importance of WHERE Clause

- The `WHERE` clause is used to update specific records.
- It prevents unwanted changes to all rows in the table.
- Omitting the `WHERE` clause updates all records in the table.

---

## Updating Values Using Existing Values

- Existing column values can be used while updating records.
- The new value can be calculated based on the existing value.

---

## NULL Values

- `UPDATE` can be used to set column values as `NULL`.
- A column can store `NULL` values only if it allows NULL values.

---

## Key Points to Remember

- `UPDATE` belongs to **DML**.
- It modifies existing records.
- It does not add or delete records.
- `SET` specifies the new values.
- `WHERE` filters the records to be updated.
- Without `WHERE`, all rows are affected.
- Multiple columns can be updated in one statement.
