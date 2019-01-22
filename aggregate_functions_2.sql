# aggregate functions lecture 2

# count() sum() min() max() avg()

# summarizing functions

use employees;

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary)
FROM
    salaries;
    
# count applicable to non-numeric aswell

SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;
    
# unique dates

# count(*) is like length()

# NO SPACES BEFORE THESE PARETHESIS


SELECT 
    COUNT(DISTINCT dept_name)
FROM
    departments;

#### SUM() #####

SELECT 
    SUM(salary)
FROM
    salaries;
    
# * doesnt work wiht sum

#total mney spent on salaries for all contracts starting after 1st jan 1997?


SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


##### max #####

SELECT 
    MAX(salary)
FROM
    salaries;



SELECT 
    MIN(salary)
FROM
    salaries;

SELECT 
    MIN(emp_no)
FROM
    salaries;
    
SELECT 
    MAX(emp_no)
FROM
    salaries;

#### average ####

SELECT 
    AVG(salary)
FROM
    salaries;
    
SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


##### round() ######

SELECT 
    ROUND(AVG(salary))
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
    
##### coalesce #####

# changing results from null to custom

# seems useless to me







