

# within create table
unique key (email_address);

# using the alter method
alter table customers
	add unique key (email_address);

# i like the alter method more

# indexes

# dropping unique key

alter table customers
	drop index email_address; # no parenth
    
# unique keys act as indexes, so we have to use index, weird
