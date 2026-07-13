/*
1.How many departments are there in the “employees” database? 
Use the ‘dept_emp’ table to answer the question.
*/
select count(distinct dept_no) from dept_emp;

/*
What is the total amount of money spent on salaries for all contracts starting after the 1st of January 1997?
*/
select sum(salary) from salaries where from_date > '1997-01-01';

/*
1. Which is the lowest employee number in the database?
2. Which is the highest employee number in the database?
*/
select min(emp_no) from employees;
select max(emp_no) from employees;

/*
What is the average annual salary paid to employees who started after the 1st of January 1997?
*/
select avg(salary) from salaries where from_date > '1997-01-01';