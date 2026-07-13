/*
Extract the information about all department managers who were 
hired between the 1st of January 1990 and the 1st of January 1995
*/
SELECT 
    *
FROM
    dept_manager dm
WHERE
    emp_no IN (SELECT 
            emp_no
        FROM
            employees
        WHERE
            '1990-01-01' < hire_date < '1995-01-01');
/*
Select the entire information for all employees whose job title is “Assistant Engineer”. 
Hint: To solve this exercise, use the 'employees' table.
*/
SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.title = 'Assistant Engineer'
                AND e.emp_no = t.emp_no);
                
