with cte1 as (select * from employees where hire_date > '2000-01-01'),
cte2 as (select s.emp_no,max(salary) from salaries s join cte1 e on s.emp_no = e.emp_no group by s.emp_no)
select 
	* from cte2;