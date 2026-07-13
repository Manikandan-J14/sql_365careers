/*
Exercise #1:
Write a query containing a window function to obtain all salary values that employee number 10560 has ever signed a contract for.
Order and display the obtained salary values from highest to lowest.
*/
SELECT
	emp_no,salary,
	ROW_NUMBER() OVER w AS row_num
FROM
	salaries
WHERE emp_no = 10560
WINDOW w AS (PARTITION BY emp_no ORDER BY salary DESC);

/*
Exercise #2:
Write a query that upon execution, displays the number of salary contracts that each manager has ever 
signed while working in the company.
*/
SELECT 
    dm.emp_no, (COUNT(salary)) AS no_of_salary_contracts
FROM
    dept_manager dm
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY emp_no
ORDER BY emp_no;

/*
Exercise #3:
Write a query that upon execution retrieves a result set containing all salary values 
that employee 10560 has ever signed a contract for. Use a window function to rank all salary values
 from highest to lowest in a way that equal salary values bear the same rank and that 
 gaps in the obtained ranks for subsequent rows are allowed.
 */
select
	e.emp_no,salary,rank() over w as rank_num
from 
	employees e join salaries s on s.emp_no = e.emp_no
where e.emp_no = 10560
window w as (partition by emp_no order by salary desc);

/*
