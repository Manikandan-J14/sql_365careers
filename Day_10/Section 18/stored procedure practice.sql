/*
Create a procedure that will provide the average salary of all employees.
Then, call the procedure.
*/
delimiter $$
create procedure avg_salary()
begin
	select avg(salary) from salaries;
end$$
delimiter ;
call employees.avg_salary();