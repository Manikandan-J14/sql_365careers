with cte1 as (
select avg(salary) as avg_salary from salaries),
cte2 as (select s.emp_no,max(s.salary) as f_highest_salary
from salaries s join employees e on e.emp_no = s.emp_no and e.gender = 'f'
group by s.emp_no)
select
	sum(case when c2.f_highest_salary > c1.avg_salary then 1
		else 0 end) as no_f_salaries_abv_avg,
        count(e.emp_no) as total_no_of_salary_contracts,
        concat(round((sum(case when c2.f_highest_salary > c1.avg_salary then 1
		else 0 end)/count(e.emp_no))*100,2),'%') as'% percentage'
        
from
	 employees e join cte2 c2 on c2.emp_no = e.emp_no  cross join cte1 c1;