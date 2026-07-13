create index i_hire_date on employees(hire_date);
select * from employees where hire_date > '2000-01-01';
create index i_composite on employees(first_name,last_name);
select * from employees where first_name = 'Georgi' and last_name = 'Facello';

show index from employees from employees;
show index from employees;