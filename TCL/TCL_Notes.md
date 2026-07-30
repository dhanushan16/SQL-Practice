# TCL (Transaction Control Language)

## What is TCL?

- **TCL (Transaction Control Language)** is used to control transactions performed by DML commands.
- It manages the changes made by **INSERT**, **UPDATE**, and **DELETE**.
- TCL commands help to save, undo, or create checkpoints within a transaction.

---

## TCL Commands

- COMMIT
- ROLLBACK
- SAVEPOINT

---

# COMMIT Command

## Definition

- `COMMIT` is a **TCL (Transaction Control Language)** command.
- It is used to **permanently save the changes** made by DML commands.
- Once `COMMIT` is executed, the changes cannot be undone using `ROLLBACK`.
- `COMMIT` ends the current transaction.

---

## Syntax

```sql
COMMIT;
```

---

## Important Points

- Permanently saves all uncommitted DML changes.
- Ends the current transaction.
- Removes all SAVEPOINTs created in the current transaction.
- After COMMIT, ROLLBACK cannot undo the committed changes.
- Works only with DML transactions.

---

## Key Points to Remember

- COMMIT belongs to **TCL**.
- Permanently saves DML changes.
- Ends the current transaction.
- Removes all SAVEPOINTs.
- ROLLBACK cannot undo committed changes.

---

# ROLLBACK Command

## Definition

- `ROLLBACK` is a **TCL (Transaction Control Language)** command.
- It is used to **undo uncommitted changes** made by DML commands.
- It returns the data to its previous state.
- It can undo the entire transaction or return to a SAVEPOINT.

---

## Syntax

### Rollback Entire Transaction

```sql
ROLLBACK;
```

### Rollback to a SAVEPOINT

```sql
ROLLBACK TO savepoint_name;
```

---

## Important Points

- Undoes uncommitted DML changes.
- Cannot undo committed changes.
- Cannot undo DDL commands because DDL performs an implicit COMMIT.
- Can rollback the entire transaction.
- Can rollback to a specific SAVEPOINT.
- Transaction continues after `ROLLBACK TO SAVEPOINT`.

---

## Key Points to Remember

- ROLLBACK belongs to **TCL**.
- Undoes uncommitted changes.
- Cannot undo committed changes.
- Cannot undo DDL commands.
- Can rollback the entire transaction or to a SAVEPOINT.

---

# SAVEPOINT Command

## Definition

- `SAVEPOINT` is a **TCL (Transaction Control Language)** command.
- It creates a **checkpoint** within the current transaction.
- It allows the transaction to rollback to a specific point without undoing the entire transaction.
- It does not permanently save the changes.

---

## Syntax

```sql
SAVEPOINT savepoint_name;
```

---

## Important Points

- Creates a checkpoint in the current transaction.
- Does not permanently save changes.
- Multiple SAVEPOINTs can be created in a transaction.
- SAVEPOINTs are removed automatically after COMMIT.
- SAVEPOINTs are also removed when a DDL command performs an implicit COMMIT.
- Used together with `ROLLBACK TO savepoint_name`.

---

## Key Points to Remember

- SAVEPOINT belongs to **TCL**.
- Creates a checkpoint.
- Does not end the transaction.
- Does not permanently save changes.
- Used with `ROLLBACK TO SAVEPOINT`.
- Removed after COMMIT.

---

# Difference Between COMMIT and ROLLBACK

| COMMIT | ROLLBACK |
|--------|----------|
| Permanently saves changes | Undoes uncommitted changes |
| Ends the transaction | Does not permanently save changes |
| Cannot be undone | Returns data to previous state |
| Removes all SAVEPOINTs | Can rollback entire transaction or to SAVEPOINT |

---

# Difference Between COMMIT and SAVEPOINT

| COMMIT | SAVEPOINT |
|--------|-----------|
| Permanently saves changes | Creates a temporary checkpoint |
| Ends the transaction | Transaction continues |
| Removes all SAVEPOINTs | Creates a rollback point |
| Changes become permanent | Changes remain temporary |

---

# Difference Between ROLLBACK and SAVEPOINT

| ROLLBACK | SAVEPOINT |
|----------|-----------|
| Undoes uncommitted changes | Creates a checkpoint |
| Can rollback entire transaction | Marks a point for future rollback |
| Can use SAVEPOINT name | Used together with ROLLBACK |
| Does not permanently save changes | Does not permanently save changes |

---

# Transaction Flow

```
DML Operations
      │
      ▼
Temporary Changes
      │
      ├────────► COMMIT
      │             │
      │             ▼
      │     Changes Permanently Saved
      │
      ├────────► SAVEPOINT
      │             │
      │             ▼
      │      Checkpoint Created
      │             │
      │             ▼
      │     ROLLBACK TO SAVEPOINT
      │
      └────────► ROLLBACK
                    │
                    ▼
          Changes Undone
```
