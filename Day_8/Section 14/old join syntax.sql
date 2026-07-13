-- WHERE
select m.dept_no,m.emp_no,d.dept_name
from dept_manager_dup m,departments_dup d
where d.dept_no = m.dept_no
order by m.dept_no;
-- WHERE
select m.emp_no,e.first_name,e.last_name,m.dept_no,e.hire_date
from employees e,dept_manager m
where e.emp_no = m.emp_no;

