#to find same salary many times
SELECT 
    emp_no, (COUNT(salary) - COUNT(DISTINCT salary)) AS diff
FROM
    salaries
GROUP BY emp_no
HAVING diff > 0
ORDER BY emp_no;

select 
	emp_no,salary,rank()over w as rank_num
from 
	salaries
where emp_no = 11839
window w as (partition by emp_no order by salary desc);

select 
	emp_no,salary,dense_rank()over w as rank_num
from 
	salaries
where emp_no = 11839
window w as (partition by emp_no order by salary desc);