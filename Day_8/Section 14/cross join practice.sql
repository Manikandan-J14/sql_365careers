/*
Use a CROSS JOIN to return a list with all possible combinations 
between managers from the dept_manager table and department number 9.
*/
select dm.*,d.*
from dept_manager dm cross join departments d
where d.dept_no = 'd009';

/*
Return a list with the first 10 employees with all the departments they can be assigned to.
Hint: Don’t use LIMIT; use a WHERE clause
*/
select e.*,d.*
from employees e cross join departments d
where e.emp_no < 10011
order by e.emp_no,d.dept_no;

