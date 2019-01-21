# order by and group by

use employees;

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC; #descending

SELECT 
    *
FROM
    employees
ORDER BY last_name , first_name; # multiple column

# group by 

# example - first name count

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

# select something from certain table 
# where condition group them then order them

# using aliases (used to rename output column)


 
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;


/* challenge - two column output - annual salary > 80,000 and 
 second column renamed to employees_with_same_salary
 number of employees with that salary, sort by first column
*/

SELECT 
    salary, COUNT(emp_no) AS employees_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary DESC;











