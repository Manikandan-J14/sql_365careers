SELECT 
    *
FROM
    departments;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
    
SELECT 
    *
FROM
    departments_dup;

insert into departments_dup
(
	dept_no,
    dept_name
)
select * from departments;

select * from departments_dup order by dept_no;