/*
Create a view that will extract the average salary of all managers registered in the database.
Round this value to the nearest cent.
If you have worked correctly, after executing the view from the “Schemas” section in Workbench, 
you should obtain the value of 66924.27.
*/
CREATE OR REPLACE VIEW view_avg_manager_salary AS
    SELECT 
        m.emp_no, ROUND(AVG(salary), 2) AS avg_salary
    FROM
        salaries s
            JOIN
        dept_manager m ON s.emp_no = m.emp_no;
        
SELECT 
    *
FROM
    employees.view_avg_manager_salary;