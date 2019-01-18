# insert a default value to a field 

alter table customers
	change column number_of_complaints number_of_complaints int default 0; 
    
# change what name new_name data_type constraints 

# lets check if it worked

# insert into customers (first_name, last_name, gender)
# 	 values ('Peter', 'Figaro', 'M');

select * from customers;

# now drop the constraint 

alter table customers
	alter column number_of_complaints drop default;
    
# not null constraint







