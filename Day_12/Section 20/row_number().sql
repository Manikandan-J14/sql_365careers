use employees;

SELECT emp_no, salary, ROW_NUMBER() over(partition by emp_no order by salary desc) as row_num from salaries;