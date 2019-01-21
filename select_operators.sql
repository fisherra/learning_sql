use employees;

# and and or operator

SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis'
        AND (gender = 'M' OR gender = 'F');

# and is evaluated before or, always, must use and ( x or y ) 

# in operator 

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
# can swap for 'not in'


# like is for pattern matching

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
    
# underscore also used for pattern matching, single char

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');

# not like is used just as you'd think

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('Mar_');

# my sql is case insensitive, interesting


# between operator - interval with and

SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';



# is not null

SELECT 
    *
FROM
    employees
WHERE
    last_name IS NULL;


# remember can use != and >= <= and oddly <> 

# select distinct - shows unique entries to that table

SELECT DISTINCT
    gender
FROM
    employees;
    


#


