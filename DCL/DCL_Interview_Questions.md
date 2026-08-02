# DCL Interview Questions

## DCL Basics

### 1. What is DCL?

### 2. What does DCL stand for?

### 3. Why do we use DCL?

### 4. What are the DCL commands?

### 5. How is DCL different from DDL, DML, DQL, and TCL?

### 6. Who generally executes DCL commands?

### 7. What is a privilege in SQL?

### 8. What is a database object?

---

# GRANT Command

### 9. What is the GRANT command?

### 10. Why do we use the GRANT command?

### 11. What is the syntax of the GRANT command?

### 12. What does the `privilege_name` represent in the GRANT statement?

### 13. What does the `ON` keyword specify in the GRANT command?

### 14. What does the `TO` keyword specify in the GRANT command?

### 15. Can multiple privileges be granted using a single GRANT statement?

### 16. How do you grant only SELECT permission to a user?

### 17. How do you grant INSERT permission to a user?

### 18. How do you grant UPDATE permission to a user?

### 19. How do you grant DELETE permission to a user?

### 20. How do you grant multiple privileges to a user?

### 21. How do you grant all privileges to a user?

### 22. Which privileges can be granted using the GRANT command?

### 23. Can GRANT be executed by a normal user?

---

# REVOKE Command

### 24. What is the REVOKE command?

### 25. Why do we use the REVOKE command?

### 26. What is the syntax of the REVOKE command?

### 27. What does the `FROM` keyword specify in the REVOKE command?

### 28. Can multiple privileges be revoked using a single REVOKE statement?

### 29. How do you revoke SELECT permission from a user?

### 30. How do you revoke INSERT permission from a user?

### 31. How do you revoke UPDATE permission from a user?

### 32. How do you revoke DELETE permission from a user?

### 33. How do you revoke multiple privileges from a user?

### 34. How do you revoke all privileges from a user?

### 35. Can REVOKE remove permissions that were never granted?

---

# Difference Between GRANT and REVOKE

### 36. What is the difference between GRANT and REVOKE?

### 37. Which keyword is used in the GRANT command to specify the recipient?

### 38. Which keyword is used in the REVOKE command to specify the user?

### 39. Which command gives permissions?

### 40. Which command removes permissions?

---

# Scenario-Based Interview Questions

### 41. How will you give only SELECT permission to the user `john` on the `employee` table?

### 42. How will you give SELECT, INSERT, and UPDATE permissions to the user `john`?

### 43. How will you give all privileges to the user `john`?

### 44. How will you remove only UPDATE permission from the user `john`?

### 45. How will you remove SELECT and INSERT permissions from the user `john`?

### 46. How will you remove all privileges from the user `john`?

### 47. An employee has left the company. Which DCL command will you use and why?

### 48. A new employee joins the HR department and should only view employee records. Which DCL command will you use?

---

# Important Interview Revision Points

- DCL stands for **Data Control Language**.
- DCL is used to control user permissions and database security.
- The two DCL commands are:
  - GRANT
  - REVOKE
- GRANT is used to give permissions.
- REVOKE is used to remove previously granted permissions.
- GRANT uses the **TO** keyword.
- REVOKE uses the **FROM** keyword.
- Common privileges include:
  - SELECT
  - INSERT
  - UPDATE
  - DELETE
  - ALL
- GRANT and REVOKE are generally executed by the **Database Administrator (DBA)**, the database owner, or a user with administrative privileges.
