select * from dept_manager;
-- IN
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);
-- EXISTS
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS(SELECT 
            *
        FROM
            dept_manager dm WHERE dm.emp_no=e.emp_no)
            order by emp_no;
            
