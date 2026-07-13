/*
Select the department number and name from the ‘departments_dup’ table and add a third column where you name 
the department number (‘dept_no’) as ‘dept_info’. 
If ‘dept_no’ does not have a value, use ‘dept_name’
select dept_no,dept_name,coalesce(dept_no,dept_name) as dept_info from departments_dup;
*/
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;
/*
Retrieve the employee number, date of birth, and first name for all individuals from the employees table. 
Use a function to ensure that their last name is displayed in place of the first name
 if a null value is encountered in the first name for a given record.
 */
 SELECT 
    emp_no, birth_date, COALESCE(first_name, last_name) AS name
FROM
    employees;
/*
Modify the code obtained from the previous exercise in the following way. 
Apply the IFNULL() function to the values from the first and second column, 
so that ‘N/A’ is displayed whenever a department number has no value, and ‘Department name not provided’ is shown 
if there is no value for ‘dept_name’.
*/
SELECT 
    IFNULL(dept_no, 'NA') AS dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;