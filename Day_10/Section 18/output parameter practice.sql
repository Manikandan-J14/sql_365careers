/*
Create a procedure called ‘emp_info’ that uses as parameters the first and the last name of an individual,
 and returns their employee number.
 */
drop procedure if exists emp_info;
delimiter $$
use employees $$
create procedure emp_info(in p_first_name varchar(255),in p_last_name varchar(255),out p_emp_no_of_person integer)
begin
	select 
		e.emp_no into p_emp_no_of_person
	from
		employees e
	where e.first_name = p_first_name and last_name = p_last_name;
end $$
delimiter ;
