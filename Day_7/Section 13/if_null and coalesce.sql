SELECT * FROM departments_dup;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');

 SELECT
 *
 FROM    
departments_dup
 ORDER BY dept_no ASC;
 
 
 ALTER TABLE employees.departments_dup
 ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;
 
  SELECT
 *
 FROM    
departments_dup
 ORDER BY dept_no ASC;
 
COMMIT;

select dept_no, ifnull(dept_name,'Department not provided') as dept_name
from departments_dup;

select dept_no,dept_name, coalesce(dept_manager,dept_name,'N/A') as dept_manager
from departments_dup ORDER BY dept_no asc;

select dept_no,dept_name, coalesce('dept manager name') as fake_column
from departments_dup;