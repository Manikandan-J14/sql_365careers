delete from dept_manager_dup where emp_no ='110228';

delete from departments_dup where dept_no ='d009';

select * from departments_dup;

insert into dept_manager_dup values('110228','d003','1992-03-21','1999-01-01');
insert into departments_dup values('d009','Customer Service');

select m.dept_no,m.emp_no,d.dept_name
from dept_manager_dup m
left join 
departments_dup d on m.dept_no = d.dept_no 
group by m.dept_no,m.emp_no,d.dept_name
order by dept_no;