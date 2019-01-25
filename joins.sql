### JOINS ###


## inner join 

#SELECT 
 #   table_1.column_name, table_2.column_name
#FROM
#   table_1
#        JOIN
#   table_2 ON table_1.column_name = table_2.column_name;

# using aliases

#SELECT 
#    t1.column_name, t2.column_name
#FROM
#    table_1 t1
#        JOIN
#    table_2 t2 ON t1.column_name = t2.column_name;

SELECT 
    m.dept_no, m.emp_no, d.dep_name
FROM
    dept_manager_dup m
        INNER JOIN
    department_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# only values that are in both tables

# exercise - a list containing infromation about all manager's 
# employee numbers, first and last name, department number, hire date

SELECT 
    m.emp_no, m.dept_no, m.from_date, e.first_name, e.last_name
FROM
    dept_manager_dup m
        INNER JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.dept_no;


# left join - keep obs from table 1, pull wanted from table 2

SELECT 
    m.emp_no, m.dept_no, m.from_date, e.first_name, e.last_name
FROM
    dept_manager_dup m
        LEFT JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.dept_no;

# ORDER WHICH YOU JOIN MATTERS

SELECT 
    m.emp_no, m.dept_no, m.from_date, e.first_name, e.last_name
FROM
    dept_manager_dup m
        LEFT JOIN
    employees e ON e.emp_no = m.emp_no
ORDER BY m.dept_no;

# with a left join always take first selection from first table in the join








    
