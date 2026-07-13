# Change the “Business Analysis” department name to “Data Analysis”.

select * from departments;
update departments
set dept_name = 'Data Analaysis'
where dept_no = 'd010';
