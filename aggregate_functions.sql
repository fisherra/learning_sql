# aggregate functions

use employees;

# count, sum, min, max, avg

SELECT 
    COUNT(first_name)
FROM
    employees;

# notice the strange distinct syntax

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;

    
SELECT 
    SUM(emp_no)
FROM
    employees;
    
SELECT 
    MIN(hire_date)
FROM
    employees;
    
SELECT 
    MAX(hire_date)
FROM
    employees;

SELECT 
    AVG(emp_no)
FROM
    employees;
    
# aggregate functions ignore null unless told not to 

