	CREATE TABLE customers 
	(customer_id int not null PRIMARY KEY,
	customer_name varchar(50) not null, email varchar(50) not null,
	customer_address varchar(25) not null,
	customer_email varchar (50) not null);
						
	CREATE TABLE menu(
	meal_id int  not null PRIMARY KEY,
	restuarant_meal varchar(50) not null,
	item_description varchar(100) not null);
	
	CREATE TABLE orders (
	order_id varchar(25) not null PRIMARY KEY,
	customer_id int not null,order_quantity int,
	order_date date not null,
	price numeric(10,2) not null, meal_id int,
	
	foreign key(customer_id) references customers
		(customer_id),
	foreign key(meal_id) references menu
		(meal_id));
	
	CREATE TABLE restuarant_location(
	location_id int  not null PRIMARY KEY,
	restuarant_city varchar(50) not null,
	restuarant_state varchar (50) not null);
	
	CREATE TABLE restuarant_address(
	restuarant_zip int PRIMARY KEY,
	restuarant_name varchar (50) not null,
	restuarant_address_line1 varchar (50) not null,
	restuarant_address_line2 varchar (50) not null,
	location_id int not null,
	
	foreign key (location_id) 
	references restuarant_location(location_id));
	
	
						
						