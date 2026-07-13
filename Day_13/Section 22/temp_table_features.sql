use employees;
drop temporary table if exists f_highest_salary;
CREATE temporary table f_highest_salary
select s.emp_no,max(salary) as f_highest_salary
from salaries s join employees e on e.emp_no = s.emp_no and e.gender = 'f'
group by s.emp_no
limit 10;

with cte as (select s.emp_no,max(salary) as f_highest_salary
from salaries s join employees e on e.emp_no = s.emp_no and e.gender = 'f'
group by s.emp_no
limit 10)
select * from f_highest_salary union all select * from cte;

with cte as (select s.emp_no,max(salary) as f_highest_salary
from salaries s join employees e on e.emp_no = s.emp_no and e.gender = 'f'
group by s.emp_no
limit 10)
select * from f_highest_salary f1 join cte c;

DROP TABLE IF EXISTS f_highest_salary;

# wont work for varying tables with moments for eg(date,time)