alter table employees
drop index i_hire_date;

/*
Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.
Then, create an index on the ‘salary’ column of that table, 
and check if it has sped up the search of the same SELECT statement.
*/
select * from salaries where salary > 89000;
create index i_salary on salaries(salary);

