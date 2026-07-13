use employees;
commit;

#before insert
delimiter $$
create trigger before_salaries_insert
before insert on salaries for each row
begin
	if new.salary < 0 then
		set new.salary = 0;
	end if;
end $$

select * from salaries where emp_no = 10001;

insert into salaries values(10001,-92891,'2010-06-22','9999-01-01');

delimiter $$
create trigger before_salaries_update
before update on salaries for each row
begin
	if new.salary < 0 then
		set new.salary = old.salary;
	end if;
end $$

update salaries
set salary = 98765
where emp_no = 10001 and from_date='2010-06-22';

select * from salaries where emp_no = 10001 and from_date ='2010-06-22';

update salaries set salary = -50000 where emp_no = 10001 and from_date = '2010-06-22';

select sysdate();
select date_format(sysdate(),'%y-%m-%d') as today;

DELIMITER $$

CREATE TRIGGER trig_ins_dept_mng
AFTER INSERT ON dept_manager
FOR EACH ROW
BEGIN
	DECLARE v_curr_salary int;
    
    SELECT 
		MAX(salary)
	INTO v_curr_salary FROM
		salaries
	WHERE
		emp_no = NEW.emp_no;

	IF v_curr_salary IS NOT NULL THEN
		UPDATE salaries 
		SET 
			to_date = SYSDATE()
		WHERE
			emp_no = NEW.emp_no and to_date = NEW.to_date;

		INSERT INTO salaries 
			VALUES (NEW.emp_no, v_curr_salary + 20000, NEW.from_date, NEW.to_date);
    END IF;
END $$

DELIMITER ;

INSERT INTO dept_manager VALUES ('111534', 'd010', date_format(sysdate(), '%y-%m-%d'), '9999-01-01');
SELECT 
    *
FROM
    dept_manager
WHERE
    emp_no = 111534;
    
SELECT 
    *
FROM
    salaries
WHERE
    emp_no = 111534;
ROLLBACK;

