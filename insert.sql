# insert statement

use employees;

# insert into table_name (column_1 ... ) 
	# values (value_1 ... ); 
    
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
	values (999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');
    

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

# only insert into and the values are necissary if you're doing a uniform insert


insert into employees values (999903, '1977-09-14', 'Jonathan', 'Creek', 'M', '1999-01-01');


insert into titles (emp_no, title, from_date)
values (999903, 'Senior Engineer', '1997-10-01');

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;
    
# exercise 2 


insert into dept_emp (emp_no, dept_no, from_date, to_date)
values (999903, 'd005', '1997-10-01', '2019-01-01');



SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;


# insert data into a new table


# insert into table_2 (column_1 ... ) 
# select column_1
# from table_1
# where conditions apply

CREATE TABLE department_dup (
    dep_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

insert into department_dup
select * from departments;

SELECT 
    *
FROM
    department_dup;

# MySQL constraints always shows error if don't match


















