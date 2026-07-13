select * from departments_dup order by dept_no;
commit;

update departments_dup
set dept_no = 'd011',dept_name = 'Quality Control';

rollback;
commit;