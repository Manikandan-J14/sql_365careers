/*
Exercise #1 :
Write a query that upon execution, assigns a row number to all managers we have information 
for in the "employees" database (regardless of their department).
Let the numbering disregard the department the managers have worked in. 
Also, let it start from the value of 1. Assign that value to the manager with the lowest employee number.
*/
select emp_no,dept_no,ROW_NUMBER() OVER(order by emp_no) AS row_num from dept_manager;

/*
Exercise #2:
Write a query that upon execution, assigns a sequential number for each employee number 
registered in the "employees" table. 
Partition the data by the employee's first name and order it by their last name in ascending order (for each partition).
*/
select emp_no,first_name,last_name,row_number()over(partition by first_name order by last_name) as row_num from employees;
