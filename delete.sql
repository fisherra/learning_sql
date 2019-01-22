# delete statement

use employees;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
    
# delete from table name 
# where condition applies

DELETE FROM employees 
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
# he's gone

# he's also gone from titles

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
# this is because on delete cascade
# related records will be deleted aswell

# assume we deleted information by mistake, use rollback

#rollback;

# i dont trust commit and rollback

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

# unsafe delete operation

#  delete from table_name 
# no where clause = bad news bears

# exercise - remove the department number 10 record from department table

DELETE FROM departments 
WHERE
    dept_no = 'd009';
    
SELECT 
    *
FROM
    departments;

# drop vs truncate vs delete

# drop makes you lose absolutely everything, no rollbacks

# truncate removes all entries, but the structure remains

# delete removes reccords row by row, retaining the rest, 
	# unles

# auto-increment values are not reset with delete



