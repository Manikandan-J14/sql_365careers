SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;


/*Retrieve the job title and the number of employees having it, as recorded in the titles table. Name the second column emps_with_same_job_title.
Apply the query only to individuals with open-ended contracts, which are recorded in the titles table with to_date of the January 1, 9999.*/

SELECT 
    title, COUNT(title) AS emps_with_same_job_title
FROM
    titles
WHERE
    to_date = '9999-01-01'
GROUP BY title
ORDER BY to_date;