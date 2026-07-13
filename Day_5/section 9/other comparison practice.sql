# Retrieve a list with data about all female employees who were hired in the year 2000 or after.

SELECT 
    *
FROM
    employees
WHERE
     gender = 'f' and hire_date > '2000-01-01';