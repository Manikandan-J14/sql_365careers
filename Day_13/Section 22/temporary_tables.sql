use employees;
CREATE temporary table f_highest_salary
select s.emp_no,max(salary) as f_highest_salary
from salaries s join employees e on e.emp_no = s.emp_no and e.gender = 'f'
group by s.emp_no;

drop temporary table if exists f_highest_salary;
drop table if exists f_highest_salary;