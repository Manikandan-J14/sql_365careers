/*
Exercise #1:
Obtain a result set containing the salary values each manager has signed a contract for.
 To obtain the data, refer to the "employees" database.
Use window functions to add the following two columns to the final output:
- a column containing the row number of each row from the obtained dataset, starting from 1.
- a column containing the sequential row numbers associated to the rows for each manager, 
where their highest salary has been given a number equal to the number of rows in the given partition,
 and their lowest - the number 1.
Finally, while presenting the output, make sure that the data has been ordered by 
the values in the first of the row number columns, and then by the salary values for each partition in ascending order.
*/
select 
	m.emp_no,
	s.salary,
    row_number() over() as row_num1,
    row_number()over(partition by emp_no order by salary asc) as row_num2
 from 
	dept_manager m 
join 
	salaries s on m.emp_no = s.emp_no 
ORDER BY row_num1, emp_no, salary ASC;

/*
Exercise #2:
Obtain a result set containing the salary values each manager has signed a contract for.
To obtain the data, refer to the "employees" database.
Use window functions to add the following two columns to the final output:
- a column containing the row numbers associated to each manager, 
where their highest salary has been given a number equal to the number of rows in the given partition, 
and their lowest - the number 1.
- a column containing the row numbers associated to each manager, 
where their highest salary has been given the number of 1, 
and the lowest - a value equal to the number of rows in the given partition.
Let your output be ordered by the salary values associated to each manager in descending order.
Hint: Please note that you don't need to use an ORDER BY clause in your SELECT statement to retrieve the desired output.
*/
select 
	dm.emp_no,
    s.salary,
    row_number() OVER(partition by emp_no order by salary) as row_num1,
    row_number() OVER(partition by emp_no order by salary desc) as row_num2
from 
	dept_manager dm join salaries s on dm.emp_no=s.emp_no;
    

 
 