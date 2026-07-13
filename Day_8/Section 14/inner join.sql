-- JOIN
select m.dept_no,m.emp_no,d.dept_name
from dept_manager_dup m
inner join 
departments_dup d on m.dept_no = d.dept_no 
order by m.dept_no;
