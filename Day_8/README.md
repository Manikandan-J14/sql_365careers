### 🔗 Day 8 – SQL JOINs & Set Operations

Topics Covered:

JOINs:
- INNER JOIN
  - Returns rows where matching values exist in both tables.
- LEFT JOIN (LEFT OUTER JOIN)
  - Returns all rows from the left table, with matching rows from the right table (or NULL if no match).
- RIGHT JOIN (RIGHT OUTER JOIN)
  - Returns all rows from the right table, with matching rows from the left table (or NULL if no match).
- CROSS JOIN
  - Returns the Cartesian product of two tables.
- JOIN with Aliases
  - Using shorter table names for cleaner queries.
- JOIN with Multiple Tables
  - Chaining joins to combine data from more than two tables.
- Filtering joined results with WHERE and ON.

Set Operations:
- UNION
  - Combines results from two or more SELECT statements, removing duplicates.
  - Each SELECT must have the same number and type of columns.
- UNION ALL
  - Similar to UNION, but keeps duplicates.
  - Faster than UNION since it skips the deduplication step.

Key Takeaways:
- JOINs merge columns from different tables; UNIONs stack rows from multiple queries.
- INNER JOIN is most common, but LEFT/RIGHT JOIN are essential for preserving unmatched rows.
- Use UNION when you want distinct results; use UNION ALL when duplicates are meaningful.
- Always ensure matching column count and compatible data types when using set operations.
