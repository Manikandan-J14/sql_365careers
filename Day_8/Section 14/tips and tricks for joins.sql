SELECT 
    d.dept_name,avg(salary)
FROM
departments d
        JOIN
    dept_manager m ON  m.dept_no = d.dept_no
        JOIN
salaries s on m.emp_no =s.emp_no
group by dept_name;

/*
How many male and how many female managers do we have in the ‘employees’ database?
*/
select e.gender,count(gender) as gender_count
from employees e join dept_manager m on e.emp_no = m.emp_no
group by gender;

