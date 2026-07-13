SELECT 
    *
FROM
    employees
WHERE
    last_name = 'DENIS'
        AND (gender = 'm' OR gender = 'f');