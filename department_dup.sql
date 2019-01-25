#

use employees;

drop table if exists department_dup;

CREATE TABLE department_dup (
    dept_no CHAR(4) NULL,
    dep_name VARCHAR(40) NULL
);

insert into department_dup ( 
dept_no,
 dep_name
 ) select
	*
from 
	departments;
    
insert into department_dup (dep_name)
values ('Public Relations');

delete from department_dup where dept_no = 'd002';

insert into department_dup(dept_no) values ('d010'), ('d011');




# dept_manager_dup

drop table if exists dept_manager_dup;

create table dept_manager_dup ( 
emp_no int(11) not null, 
dept_no char(4) null, 
from_date date not null, 
to_date date null
);

insert into dept_manager_dup
select * from dept_manager;

insert into dept_manager_dup(emp_no, from_date)
values
(999904, '2017-01-01'),
(999905, '2017-01-01'),
(999906, '2017-01-01'),
(999907, '2017-01-01');

delete from dept_manager_dup
where dept_no = 'd001';

insert into department_dup (dep_name)
values ('Public Relations');

Delete from department_dup where dept_no = 'd002';










