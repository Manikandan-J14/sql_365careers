set @v_emp_no = 11300;
SELECT 
    emp_no, F_EMP_AVG_SALARY(@v_emp_no) AS avg_salary
FROM
    employees
WHERE
    emp_no = @v_emp_no;