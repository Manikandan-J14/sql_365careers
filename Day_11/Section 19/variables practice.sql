/*
Create a variable named var1 containing the text value 'Diana'. Display the value contained in var1.
*/
set @var1 = 'Diana';
select @var1;
/*
Create a variable named v_emp_no containing the integer 10004.
 Retrieve the employee number, first name, last name, and hire date of the employee with the employee number stored in v_emp_no. 
To obtain the desired output, use the data from the employees table.
*/
set @v_emp_no = 10004;
select emp_no, first_name,last_name,hire_date from employees where emp_no = @v_emp_no;