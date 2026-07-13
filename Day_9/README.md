### 🧩 Day 9 – SQL Subqueries, Self JOIN, and Views

Topics Covered:

Subqueries:
- Single-row subqueries
  - Return one value to be used in a condition (=, <, >).
- Multi-row subqueries
  - Work with operators like IN, ANY, ALL.
- Nested subqueries
  - Subqueries inside subqueries for multi-level filtering.
- Subqueries in SELECT, FROM, and WHERE
  - Filtering with WHERE clauses.
  - Using derived tables in the FROM clause.
  - Calculated values in SELECT.

Self JOIN:
- Joining a table to itself to compare rows within the same table.
- Using table aliases to differentiate instances of the same table.
- Example: Finding employees who have the same manager.

Views:
- Creating virtual tables with CREATE VIEW.
- Benefits:
  - Simplifies complex queries.
  - Provides a security layer by exposing only specific columns/rows.
  - Improves query readability.
- Modifying views with CREATE OR REPLACE VIEW.
- Dropping views with DROP VIEW.

Key Takeaways:
- Subqueries are powerful for filtering and calculating results dynamically.
- Self joins help analyze relationships within the same dataset.
- Views allow abstraction and reusability of SQL logic without duplicating code.
