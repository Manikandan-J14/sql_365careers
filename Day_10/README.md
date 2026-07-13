### 🧩 Section 18 – Advanced SQL: Functions, User-Defined Functions & Stored Procedures

Topics Covered:

1. Built-in Functions:
- String functions: CONCAT(), SUBSTRING(), LENGTH(), UPPER(), LOWER(), TRIM()
- Numeric functions: ROUND(), CEIL(), FLOOR(), ABS()
- Date/Time functions: NOW(), CURDATE(), DATEDIFF(), DATE_ADD()
- Aggregate functions: COUNT(), SUM(), AVG(), MIN(), MAX()

2. Nested Functions (Function inside Function):
- Using one function as input to another for advanced calculations.
- Examples:
  - UPPER(SUBSTRING(first_name,1,3))
  - ROUND(AVG(salary),2)

3. User-Defined Functions (UDFs):
- Creating reusable functions using CREATE FUNCTION.
- Accepting parameters and returning values.
- Used for repetitive calculations like bonuses, discounts, or score computations.
- Can be used in SELECT, WHERE, ORDER BY, and even nested within other functions.

4. Stored Procedures:
- Creating procedures using CREATE PROCEDURE.
- Accepting input parameters (IN, OUT, INOUT).
- Encapsulating multiple SQL statements for reusable logic.
- Using CALL to execute procedures.
- Implementing transaction control inside procedures (COMMIT/ROLLBACK).
- Optional: Using loops, conditions, and cursors inside procedures.

5. Key Takeaways:
- Nested functions enable powerful inline calculations.
- UDFs improve modularity and reusability of SQL code.
- Stored procedures allow encapsulation of complex logic for repeated tasks.
- Understanding these concepts is essential for database programming, automation, and backend development.
- Helps in creating scalable and maintainable database applications.

