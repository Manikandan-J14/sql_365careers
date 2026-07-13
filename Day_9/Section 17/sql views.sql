select * from dept_emp;

SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS num
FROM
    dept_emp
GROUP BY emp_no
HAVING num > 1;

create or replace view v_dept_emp_latest_date as
select emp_no,max(from_date) as from_date,max(to_date) as to_date
from dept_emp group by emp_no;


