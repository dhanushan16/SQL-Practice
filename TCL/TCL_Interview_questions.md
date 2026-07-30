# TCL (Transaction Control Language) - Interview Questions

# COMMIT

## 1. What is COMMIT?
**Answer:**
- `COMMIT` is a **TCL (Transaction Control Language)** command.
- It is used to **permanently save the changes** made by DML commands.
- It ends the current transaction.

---

## 2. Why is COMMIT a TCL command?
**Answer:**
- COMMIT is a TCL command because it controls the transactions created by DML operations.
- It permanently saves the changes made by `INSERT`, `UPDATE`, and `DELETE`.

---

## 3. Which commands work with COMMIT?
**Answer:**
- COMMIT works with DML commands:
  - INSERT
  - UPDATE
  - DELETE

---

## 4. What happens if COMMIT is not executed?
**Answer:**
- The changes remain temporary.
- They can be undone using ROLLBACK.
- If the session ends before COMMIT, the uncommitted changes are rolled back.

---

## 5. Can ROLLBACK be used after COMMIT?
**Answer:**
- No.
- After COMMIT, the changes are permanently saved and cannot be undone.

---

## 6. Does COMMIT remove data from a table?
**Answer:**
- No.
- COMMIT only permanently saves the changes made by DML commands.

---

## 7. Can COMMIT be used after INSERT?
**Answer:**
- Yes.
- It permanently saves the inserted records.

---

## 8. Can COMMIT be used after UPDATE?
**Answer:**
- Yes.
- It permanently saves the updated records.

---

## 9. Can COMMIT be used after DELETE?
**Answer:**
- Yes.
- It permanently saves the deleted records.

---

## 10. Does COMMIT work with DDL commands?
**Answer:**
- COMMIT is not required after DDL commands.
- DDL commands perform an **implicit COMMIT** automatically.

---

## SAVEPOINT

## 11. What is SAVEPOINT?
**Answer:**
- SAVEPOINT is a **TCL command**.
- It creates a checkpoint within the current transaction.
- It helps rollback to a specific point if required.

---

## 12. Why is SAVEPOINT a TCL command?
**Answer:**
- SAVEPOINT controls the transactions created by DML commands.
- It creates checkpoints within a transaction.

---

## 13. Does SAVEPOINT permanently save the changes?
**Answer:**
- No.
- SAVEPOINT only creates a temporary checkpoint.
- Changes become permanent only after COMMIT.

---

## 14. Can multiple SAVEPOINTs be created?
**Answer:**
- Yes.
- Multiple SAVEPOINTs can be created in the same transaction.

---

## 15. Does SAVEPOINT end the transaction?
**Answer:**
- No.
- The transaction continues after creating a SAVEPOINT.

---

## 16. What is the purpose of SAVEPOINT?
**Answer:**
- It creates checkpoints.
- It allows rollback to a specific point without undoing the entire transaction.

---

## 17. Can SAVEPOINT be used with DDL commands?
**Answer:**
- No.
- SAVEPOINT works only with DML transactions.
- DDL performs an implicit COMMIT.

---

## 18. What happens to SAVEPOINT after COMMIT?
**Answer:**
- All SAVEPOINTs are removed automatically.

---

## 19. What happens to SAVEPOINT if a DDL command is executed?
**Answer:**
- DDL performs an implicit COMMIT.
- All SAVEPOINTs are removed.

---

## 20. Can we rollback to a SAVEPOINT after a DDL command?
**Answer:**
- No.
- The SAVEPOINT is removed because DDL performs an implicit COMMIT.

---

# ROLLBACK

## 21. What is ROLLBACK?
**Answer:**
- ROLLBACK is a **TCL command**.
- It undoes the uncommitted changes made by DML commands.

---

## 22. Why is ROLLBACK a TCL command?
**Answer:**
- ROLLBACK controls the transactions created by DML operations.
- It undoes uncommitted DML changes.

---

## 23. What happens when ROLLBACK is executed without a SAVEPOINT?
**Answer:**
- All uncommitted changes in the current transaction are undone.
- The data returns to its previous state.

---

## 24. Can ROLLBACK undo committed changes?
**Answer:**
- No.
- COMMIT permanently saves the changes.

---

## 25. Can ROLLBACK undo DDL commands?
**Answer:**
- No.
- DDL commands perform an implicit COMMIT.

---

## 26. Can ROLLBACK be used after INSERT, UPDATE and DELETE?
**Answer:**
- Yes.
- It can undo the uncommitted changes made by these commands.

---

## 27. What is the difference between ROLLBACK and ROLLBACK TO SAVEPOINT?
**Answer:**
- ROLLBACK undoes the entire transaction.
- ROLLBACK TO SAVEPOINT undoes only the changes made after the specified SAVEPOINT.

---

## 28. Can we execute new DML statements after ROLLBACK?
**Answer:**
- Yes.
- After ROLLBACK, the database returns to its previous state and new DML statements can be executed.

---

## 29. What happens if ROLLBACK is executed when there are no uncommitted changes?
**Answer:**
- ROLLBACK executes successfully.
- No changes are undone because there are no uncommitted transactions.

---

## 30. Can ROLLBACK undo multiple DML statements?
**Answer:**
- Yes.
- It undoes all uncommitted DML operations in the current transaction.

---

## 31. If INSERT is committed and UPDATE is not committed, what will ROLLBACK undo?
**Answer:**
- Only the UPDATE will be undone.
- INSERT remains because it was committed.

---

## 32. Can ROLLBACK undo changes after COMMIT?
**Answer:**
- No.
- COMMIT permanently saves the changes.

---

## 33. What is the difference between COMMIT and ROLLBACK?
**Answer:**
- COMMIT permanently saves changes.
- ROLLBACK undoes uncommitted changes.

---

## 34. Can ROLLBACK be used with SAVEPOINT?
**Answer:**
- Yes.
- Using `ROLLBACK TO savepoint_name`, we can undo changes after a specific SAVEPOINT.

---

## 35. Can ROLLBACK undo a SELECT statement?
**Answer:**
- No.
- SELECT only retrieves data.
- It does not modify the database.

---

## 36. Does ROLLBACK permanently remove data from a table?
**Answer:**
- No.
- It only undoes uncommitted DML changes.

---

## 37. Can COMMIT be executed after ROLLBACK?
**Answer:**
- Yes.
- If no new DML operations are performed after ROLLBACK, COMMIT has nothing new to save.
- If new DML operations are performed, COMMIT permanently saves those changes.

---

## 38. Can ROLLBACK undo only the last DML statement?
**Answer:**
- Not directly.
- To undo only the last DML statement, create a SAVEPOINT before it and use `ROLLBACK TO SAVEPOINT`.

---

# Frequently Asked Interview Differences

## Difference between COMMIT and ROLLBACK

| COMMIT | ROLLBACK |
|--------|----------|
| Permanently saves changes | Undoes uncommitted changes |
| Ends the transaction | Returns data to previous state |
| Cannot be undone | Works only before COMMIT |

---

## Difference between COMMIT and SAVEPOINT

| COMMIT | SAVEPOINT |
|--------|-----------|
| Permanently saves changes | Creates a temporary checkpoint |
| Ends the transaction | Transaction continues |
| Removes SAVEPOINTs | Used for rollback |

---

## Difference between ROLLBACK and SAVEPOINT

| ROLLBACK | SAVEPOINT |
|----------|-----------|
| Undoes changes | Creates a checkpoint |
| Can rollback entire transaction | Marks a rollback point |
| Used to cancel changes | Used with ROLLBACK |
