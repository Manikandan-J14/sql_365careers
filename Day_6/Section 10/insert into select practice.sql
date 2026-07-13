# to copy data from dept_emp to another table....

CREATE TABLE dept_emp_dup (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no , dept_no)
);
insert into dept_emp_dup
(emp_no,dept_no,from_date,to_date)
select * from dept_emp;

SELECT 
    *
FROM
    dept_emp;
SELECT 
    *
FROM
    dept_emp_dup;