# DCL (Data Control Language)

## What is DCL?

**DCL (Data Control Language)** is used to **control access and permissions** in a database.

It determines **who can access the database** and **what operations they are allowed to perform** on database objects such as tables, views, procedures, etc.

Unlike DDL, DML, DQL, and TCL, DCL is mainly concerned with **database security**.

---

# Why Do We Need DCL?

In a real-world database, multiple users access the same database.

Different users require different levels of access.

For example:

- HR employees should access only employee details.
- Finance employees should access only salary information.
- Developers may be allowed to insert or update records.
- Interns may only have permission to view data.

DCL helps the Database Administrator (DBA) control these permissions.

---

# DCL Commands

There are two main DCL commands:

- GRANT
- REVOKE

---

# GRANT Command

## Definition

The **GRANT** command is a DCL command used to **give permissions (privileges)** to a user or role on a database object.

It allows users to perform operations such as:

- SELECT
- INSERT
- UPDATE
- DELETE

---

## Why Do We Use GRANT?

The GRANT command is used to:

- Give permissions to users.
- Control what operations a user can perform.
- Secure database objects.
- Restrict unauthorized access.

---

## Syntax

```sql
GRANT privilege_name
ON table_name
TO user_name;
```

---

## Syntax Explanation

### GRANT

Command used to give permissions.

---

### privilege_name

Specifies the type of permission being granted.

Examples:

- SELECT
- INSERT
- UPDATE
- DELETE
- ALL

---

### ON

Specifies the database object on which the permission is granted.

Examples:

- Table
- View
- Procedure

---

### table_name

Specifies the name of the database object.

Example:

```text
employee
student
orders
```

---

### TO

Specifies the user or role who receives the permission.

---

### user_name

Specifies the name of the user.

Example:

```text
john
admin
dhanusha
```

---

# GRANT Examples

## Grant SELECT Permission

```sql
GRANT SELECT
ON employee
TO john;
```

Meaning:

John can only retrieve data from the employee table.

---

## Grant INSERT Permission

```sql
GRANT INSERT
ON employee
TO john;
```

Meaning:

John can insert new records.

---

## Grant UPDATE Permission

```sql
GRANT UPDATE
ON employee
TO john;
```

Meaning:

John can modify existing records.

---

## Grant DELETE Permission

```sql
GRANT DELETE
ON employee
TO john;
```

Meaning:

John can delete records.

---

## Grant Multiple Privileges

```sql
GRANT SELECT, INSERT, UPDATE
ON employee
TO john;
```

Meaning:

John receives:

- SELECT
- INSERT
- UPDATE

permissions.

---

## Grant All Privileges

```sql
GRANT ALL
ON employee
TO john;
```

Meaning:

John receives all available privileges on the employee table.

---

# Important Points About GRANT

- GRANT is a DCL command.
- GRANT is used to give permissions.
- It controls user access to database objects.
- Multiple privileges can be granted using commas.
- ALL grants all available privileges.
- GRANT is generally executed by the **Database Administrator (DBA)**, the database owner, or a user having administrative privileges.

---

# REVOKE Command

## Definition

The **REVOKE** command is a DCL command used to **remove or withdraw permissions (privileges)** that were previously granted to a user or role using the GRANT command.

It removes the user's access to the specified database object.

---

## Why Do We Use REVOKE?

REVOKE is used when:

- A user no longer requires access.
- An employee leaves the organization.
- Permissions need to be restricted.
- Previously granted privileges must be removed.

---

## Syntax

```sql
REVOKE privilege_name
ON table_name
FROM user_name;
```

---

## Syntax Explanation

### REVOKE

Command used to withdraw permissions.

---

### privilege_name

Specifies the permission to be removed.

Examples:

- SELECT
- INSERT
- UPDATE
- DELETE
- ALL

---

### ON

Specifies the database object from which the permission is removed.

---

### table_name

Specifies the database object.

---

### FROM

Specifies the user or role from whom the permission is being revoked.

---

### user_name

Specifies the user whose privilege is removed.

---

# REVOKE Examples

## Revoke SELECT Permission

```sql
REVOKE SELECT
ON employee
FROM john;
```

Meaning:

John can no longer retrieve data from the employee table.

---

## Revoke INSERT Permission

```sql
REVOKE INSERT
ON employee
FROM john;
```

Meaning:

John can no longer insert records.

---

## Revoke UPDATE Permission

```sql
REVOKE UPDATE
ON employee
FROM john;
```

Meaning:

John can no longer update records.

---

## Revoke DELETE Permission

```sql
REVOKE DELETE
ON employee
FROM john;
```

Meaning:

John can no longer delete records.

---

## Revoke Multiple Privileges

```sql
REVOKE SELECT, INSERT
ON employee
FROM john;
```

Meaning:

John loses both SELECT and INSERT privileges.

---

## Revoke All Privileges

```sql
REVOKE ALL
ON employee
FROM john;
```

Meaning:

All permissions previously granted on the employee table are removed.

---

# Important Points About REVOKE

- REVOKE is a DCL command.
- REVOKE removes permissions previously granted using GRANT.
- Multiple privileges can be revoked using commas.
- ALL removes all granted privileges.
- REVOKE is generally executed by the **Database Administrator (DBA)**, the database owner, or a user having administrative privileges.

---

# Difference Between GRANT and REVOKE

| GRANT | REVOKE |
|--------|---------|
| Gives permissions to users. | Removes previously granted permissions. |
| Allows users to access database objects. | Withdraws user access to database objects. |
| Uses the **TO** keyword. | Uses the **FROM** keyword. |

---

# Summary

## GRANT

- Used to give permissions.
- Uses the **TO** keyword.
- Allows operations like:
  - SELECT
  - INSERT
  - UPDATE
  - DELETE
  - ALL

---

## REVOKE

- Used to remove permissions.
- Uses the **FROM** keyword.
- Removes privileges previously granted using GRANT.

---

# Important Interview Revision Points

- DCL stands for **Data Control Language**.
- DCL is mainly used for database security.
- DCL controls user permissions.
- There are two DCL commands:
  - GRANT
  - REVOKE
- GRANT gives permissions.
- REVOKE removes permissions.
- GRANT uses **TO**.
- REVOKE uses **FROM**.
- Multiple privileges can be granted or revoked using commas.
- **ALL** grants or revokes all available privileges.
- GRANT and REVOKE are generally executed by the **Database Administrator (DBA)** or the database owner.
