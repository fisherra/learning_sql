create database if not exists sales_2;

use sales_2;

create table if not exists sales
	(
		purchase_number int not null auto_increment, 
		date_of_purchase date, 
		customer_id int,
		item_code varchar(10),
	primary key (purchase_number)#,
    #foreign key (customer_id) references customers (customer_id) on delete cascade # remove from customer = remove from sales
	); 

# alter technique
alter table sales
	add foreign key (customer_id) references customers (customer_id) on delete cascade;
    
alter table sales 
	drop foreign key sales_ibfk_1;
    
create table if not exists customers
	(
		customer_id int,
		first_name varchar(255),
		last_name varchar(255),
		email_address varchar(255),
		number_of_complaints int,
	primary key (customer_id)
    );
    
create table if not exists items
	(
		item_id varchar(255),
        item varchar(255),
        unit_price numeric(10,2),
        company_id varchar(255),
	primary key(item_id)
	);

create table if not exists companies
	(
		company_id varchar(255),
		company_name varchar(255),
		headquarters_phone_number int(12),
        primary key (company_id)
    );
    
# foreign key constraints - 


    
    