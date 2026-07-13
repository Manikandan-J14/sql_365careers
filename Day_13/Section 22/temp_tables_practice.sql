/*
Exercise #1:
Store the highest contract salary values of all male employees in a temporary table called male_max_salaries.
*/
create temporary table male_highest_salary
select s.emp_no,max(salary) as male_highest_salary
from salaries s join employees e on s.emp_no = e.emp_no where gender = 'm'
group by s.emp_no;

/*
Exercise #2:
Write a query that, upon execution, allows you to check the result set contained in the male_max_salaries
temporary table you created in the previous exercise.
*/

select * from male_highest_salary;
 