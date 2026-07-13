drop function if exists f_emp_avg_salary;
delimiter $$
create function f_emp_avg_salary(p_emp_no integer) returns decimal(10,2)
deterministic
begin
declare v_avg_salary decimal(10,2);
begin 
declare v_avg_salary_2 decimal (10,2);
end;
	select 
    # cannot be accesed outside the begin-end block..
		avg(salary) into v_avg_salary_2
	from
		employees e join salaries s on e.emp_no = s.emp_no
	where e.emp_no = p_emp_no;
    return v_avg_salary;
end $$
delimiter ;

select v_avg_salary;