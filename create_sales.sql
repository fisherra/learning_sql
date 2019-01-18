
# creating a database

create database if not exists sales; 
#create schema if not exists sales; 

# sql code is not case sensitive 

use sales; 
# selects the sales database as default

# data types
	# strings - char (short), varchar (long), enum (basically factors)
	# integers - tinyint, smallint, mediumint, int, bigint (differences in storage)
	# fixed - decimal(5,3) = 10.523 = numeric
	# float - float(5,3) = 10.523, double = longer and more storage
	# date / time / date-time / binary / factors, timestamp is exact moment
		# timestamp good for finding differences in time, and timezones
	# blog - binary large objects (.doc, .jpeg, etc)

# data must be written in quotes

create table if not exists sales
	(
	# column_1 data_type constraints,
	purchase_number int not null primary key auto_increment, # int = data type, not null primary key, 1,2,3,...
    date_of_purchase date not null, # date, can't be zero
    customer_id int, #int only
    item_code varchar(10) not null #10 number, cant be zero
	); 

create table if not exists customers
	(
    customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int
    );
    
# created tables must have at least 1 column





# next up, constraints


# use select to find change database

# database_object . sql_object



use sales;

select * from customers;

# or you can do 

select * from sales.customers;

select * from sales;

select * from sales.sales;

# a query is a command written in sql to retrieve / insert / update 
# query is like the script of sql

# to delete an object, use the drop statement from ddl 

drop table sales; 

# primary key constraint - 
 
# constraints are specific rules or limits, i.e. not null

# auto increment can only be used with primary_key, index, or unique_key

# different way of making a primary key 

create table if not exists sales
	(
		# column_1 data_type constraints,
		purchase_number int not null auto_increment, 
		date_of_purchase date not null, 
		customer_id int,
		item_code varchar(10) not null,
	primary key(purchase_number)
	); 








