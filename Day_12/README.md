### 🧩 Section 20 – Advanced SQL: Window Functions

Topics Covered:

- Window Functions:  
  - ROW_NUMBER(): Assigns a unique sequential integer to rows within a partition of a result set.  
  - RANK(): Assigns the same rank to rows with equal values.  
  - DENSE_RANK(): Similar to RANK() but without gaps in ranking values.  
  - LAG() and LEAD(): Access data from a previous or subsequent row in the same result set.  
  - PARTITION BY: Divides the result set into partitions to which the window function is applied.

- Window Functions with JOINs:  
  - Combine data from multiple tables and apply window functions across the joined result.  
  - Useful for ranking, cumulative sums, or calculating running totals across related datasets.  

Key Takeaways:
- Window functions allow advanced analytical calculations across related rows in a table.  
- Using window functions with JOINs enables cross-table analysis, ranking, and trend calculations.  
- Functions like ROW_NUMBER(), RANK(), and LAG/LEAD are essential for reporting, ranking, and trend analysis.
