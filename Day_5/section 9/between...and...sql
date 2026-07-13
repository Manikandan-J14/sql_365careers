SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1987-01-01' AND '1987-02-01';
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1987-01-01' AND '1987-02-01';