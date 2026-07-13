/*
Exercise #1:
Use a CTE (a Common Table Expression) and a SUM() function in the SELECT statement in a query 
to find out how many salary contracts signed by male employees had a salary value below or equal to the all-time company average.
In this task, a salary contract is defined as any record in the salaries table.
*/
with cte as (
select avg(salary) as avg_salary from salaries)
select
	sum(case when s.salary < c.avg_salary then 1
		else 0 end) as no_m_salaries_abv_avg_sum,
        count(s.salary) as total_no_of_salary_contracts
from
	salaries s join employees e on s.emp_no = e.emp_no and gender = 'm' cross join cte c;
    
/*
Exercise #2:
Use a CTE (a Common Table Expression) and at least one COUNT() function in the SELECT statement of a query 
to determine how many salary contracts signed by male employees had a salary value below or equal to the all-time company salary average.
In this task, a salary contract is defined as any record in the salaries table.
*/
with cte as (
select avg(salary) as avg_salary from salaries)
select
		COUNT(CASE WHEN s.salary < c.avg_salary THEN s.salary ELSE NULL END) AS no_salaries_below_avg_w_count,
        count(s.salary) as total_no_of_salary_contracts
from
	salaries s join employees e on s.emp_no = e.emp_no and gender = 'm' cross join cte c;
    
/*
Exercise #3:
Use MySQL joins (and don’t use a Common Table Expression) in a query to find out how many male employees 
have never signed a contract with a salary value higher than or equal to the all-time company salary average 
(i.e. to obtain the same result as in the previous exercise).
*/
select
		COUNT(CASE WHEN s.salary < a.avg_salary THEN s.salary ELSE NULL END) AS no_salaries_below_avg_w_count,
        count(s.salary) as total_no_of_salary_contracts
from
	salaries s join employees e on s.emp_no = e.emp_no and gender = 'm' join (select avg(salary) as avg_salary from salaries) as a;
    
/*
