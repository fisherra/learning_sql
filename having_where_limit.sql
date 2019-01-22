# having where and limit

SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
    
SELECT 
    *
FROM
    employees
HAVING
 hire_date > '2000-01-01';
    
# having fixes error code 1111

# if you're using an aggregate function, use having


#Select all employees whose average salary is higher than $120,000 per annum.


SELECT
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

# where allows conditions that refer to subsets of individual rows
# applied before groups

# having applied after groups 


# using both at once

SELECT 
    first_name, COUNT(first_name) AS first_name_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;


# if you having an aggreagte and non aggregate you can't use both in having
# where and having have their own uses


#Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.

#Hint: To solve this exercise, use the “dept_emp” table



SELECT 
    emp_no, COUNT(emp_no) AS number_of_contracts
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(emp_no) > 1
ORDER BY emp_no DESC;


# limit

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

# limiting always goes at the end of the query








