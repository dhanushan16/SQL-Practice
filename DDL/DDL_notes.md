# DDL (Data Definition Language)

## Definition

- **DDL (Data Definition Language)** is used to define and modify the structure of database objects such as tables, views, and indexes.
- DDL commands deal with the structure of database objects rather than the data stored in them.

---

# CREATE Command

## Definition

- **CREATE** is a **DDL (Data Definition Language)** command.
- It is used to create new database objects such as tables, views, and indexes.
- It creates only the structure of a table.
- Data is added later using the **INSERT** command.

---

## Syntax

```sql
CREATE TABLE table_name (
    column1 datatype(size),
    column2 datatype(size),
    column3 datatype(size)
);
```

---

## Important Points

- Creates only the table structure; no data is inserted.
- Data is inserted using the **INSERT** command.
- A table must contain at least one column.
- Table names must be unique within the same schema.
- Two columns in the same table cannot have the same name.
- A table name and a column name can be the same.
- A string value cannot be inserted into a numeric column.
- After creating a table, a `SELECT` statement returns **0 rows** because no records have been inserted.
- Each `CREATE TABLE` statement creates only one table.
- A table can be created from another table using **CTAS (CREATE TABLE AS SELECT)**.
- `VARCHAR2` is the Oracle standard variable-length character datatype.

---

## Internal Process of CREATE TABLE

When a `CREATE TABLE` statement is executed:

1. SQL checks the syntax.
2. It verifies that the table does not already exist.
3. Metadata is stored in the data dictionary.
4. Storage is allocated.
5. The table structure is created.

---

## Verifying Table Creation

The table creation can be verified using:

- `DESC table_name`
- `SELECT * FROM table_name`

If no records have been inserted, the `SELECT` statement returns **0 rows** because only the table structure exists.

---

## CTAS (CREATE TABLE AS SELECT)

- CTAS is used to create a new table from an existing table.
- It can copy both the structure and the data of the existing table.
- Using the condition `WHERE 1 = 2` copies only the table structure because the condition always returns no rows.

---

# ALTER Command

## Definition

- **ALTER** is a **DDL (Data Definition Language)** command.
- It is used to modify the structure of an existing table.
- It alters an existing table; it does not create a new table.

---

## Syntax

```sql
ALTER TABLE table_name
operation;
```

---

## ADD

### Purpose

- Used to add a new column to an existing table.
- If a **DEFAULT** value is not specified, the new column contains **NULL** for the existing rows.
- If a **DEFAULT** value is specified, that value is stored in the new column for the existing rows.

---

## MODIFY

### Purpose

- Used to change the datatype or size of an existing column.
- Existing values are not affected if they are compatible with the new definition.
- If the existing data is incompatible with the new datatype or size, the database may throw an error.

---

## DROP COLUMN

### Purpose

- Used to remove a specific column from an existing table.
- The column and all the data stored in that column are permanently removed.
- Other columns in the table remain unaffected.

---

## RENAME

### Purpose

- Used to rename an existing table or an existing column.
- Only the name is changed.
- The table structure and the existing data remain unchanged.
- After renaming, the old table name or column name can no longer be used.

---

## DEFAULT

### Purpose

- Used to assign a predefined value to a column.
- If no value is provided during insertion, the default value is automatically assigned.
- Helps avoid unnecessary **NULL** values.
- Improves data consistency.

---

## Important Points

- ALTER modifies the structure of an existing table.
- It does not create a new table.
- Duplicate column names are not allowed.
- ALTER generally does not delete existing rows; only the table structure is modified.
- Always check the existing data before reducing a column's size or changing its datatype, as incompatible data may cause an error.

---

# DROP Command

## Definition

- **DROP** is a **DDL (Data Definition Language)** command.
- It is used to permanently delete a database object such as a table, database, view, or index.
- It deletes both the structure and the data of the database object.

---

## Syntax

```sql
DROP TABLE table_name;
```

---

## Important Points

- Deletes both the table structure and all the records stored in the table.
- The table name is also removed from the database.
- After `DROP TABLE`, the table no longer exists.
- `INSERT`, `UPDATE`, `DELETE`, and `SELECT` operations cannot be performed on the dropped table.
- To use the table again, it must be recreated using the `CREATE TABLE` command.
- `DROP TABLE` is used when the table is no longer required.
- `DROP` permanently removes the table unless a backup or recovery mechanism is available.

---

# TRUNCATE Command

## Definition

- **TRUNCATE** is a **DDL (Data Definition Language)** command.
- It is used to remove all the records (rows) from a table.
- It deletes only the data and does not delete the table structure.
- The table remains in the database and can be used again.

---

## Syntax

```sql
TRUNCATE TABLE table_name;
```

---

## Important Points

- Removes all the records (rows) from the table.
- Does not delete the table structure.
- The table name, column names, data types, and constraints remain unchanged.
- After `TRUNCATE`, the table becomes empty.
- New records can be inserted into the table after truncating it.
- `TRUNCATE` removes all rows; it cannot remove specific rows based on a condition.
- `TRUNCATE` is faster than deleting rows one by one because it removes all the records at once.
