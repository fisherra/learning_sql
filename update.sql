# commit and rollback

# transaction control language

# update table-name
# set column_1 = value_1, ... 
# where conditions apply

use employees;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parker',
    birth_date = '1993-06-10',
    gender = 'F'
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

# easy peazy

# where clause important or all rows will be updated

SELECT 
    *
FROM
    department_dup;
    
# change all department numbers and names, but commit first
# then rollback

commit;

UPDATE department_dup 
SET 
    dep_no = 'd011',
    dept_name = 'Quality Control';

SELECT 
    *
FROM
    department_dup;

# oh no! i changed all of them cause i forgot my where clause


rollback;


SELECT 
    *
FROM
    department_dup;


