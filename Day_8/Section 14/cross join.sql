-- BEST PRACTICE
select dm.*,d.* 
from dept_manager dm
cross join 
departments d
order by dm.emp_no,d.dept_no;
select * from dept_manager;
select * from departments;
-- WAY 2
select dm.*,d.* 
from dept_manager dm, departments d
order by dm.emp_no,d.dept_no;
-- WAY 3
select dm.*,d.* 
from dept_manager dm
join 
departments d
order by dm.emp_no,d.dept_no;
-- more than 2 tables
select e.*,d.* 
from dept_manager dm
cross join 
departments d
join employees e on dm.emp_no = e.emp_no
WHERE d.dept_no != dm.dept_no
order by dm.emp_no,d.dept_no;
