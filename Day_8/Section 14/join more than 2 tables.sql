select e.first_name,e.last_name,e.hire_date,m.from_date,d.dept_name 
from employees e
join 
dept_manager m on m.emp_no = e.emp_no
join departments d on d.dept_no = m.dept_no;
