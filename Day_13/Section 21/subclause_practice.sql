/*
Exercise #1:
Use two common table expressions and a SUM() function in the SELECT statement of a query 
to obtain the number of male employees whose highest salaries have been below the all-time average.
*/
with cte1 as (select avg(salary) as avg_salary from salaries),
cte2 as (select s.emp_no,max(salary) as max_salary from salaries s join employees e on s.emp_no = e.emp_no where gender = 'm' group by s.emp_no)
select 
	sum(case when c2.max_salary < c1.avg_salary then 1
		else 0 end) as no_m_salaries_abv_avg,
        count(e.emp_no) as total_no_of_salary_contracts
	from
	 employees e join cte2 c2 on c2.emp_no = e.emp_no  cross join cte1 c1;

