#interchanging the tables order..
select d.dept_no,m.emp_no,d.dept_name
from departments_dup d 
left join dept_manager_dup m
on  m.dept_no = d.dept_no  
order by d.dept_no;

select * from departments_dup;
select * from dept_manager_dup;

#to obtain only left part..
select m.dept_no,m.emp_no,d.dept_name
from dept_manager_dup m
left join 
departments_dup d on m.dept_no = d.dept_no 
where dept_name is null
order by m.dept_no;

/*
Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch.
 See if the output contains a manager with that name.  
Hint: Create an output containing information corresponding to the following fields:
 ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. Order by 'dept_no' descending, and then by 'emp_no'.
 */
 SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no, m.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager m ON m.emp_no = e.emp_no
WHERE
    last_name = 'Markovitch'
ORDER BY m.dept_no , e.emp_no DESC;
 
