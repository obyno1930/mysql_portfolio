	CREATE TABLE customers (customer_id int not null PRIMARY KEY,
						   customer_name varchar(50) not null,
						   email varchar(50) not null,
						   phone varchar(25) not null);
		
						
	CREATE TABLE product(
	product_id varchar (25) not null PRIMARY KEY,
	product_name varchar(50) not null,
	description varchar(100) not null,
	product_category varchar (50) not null,
	unit_price numeric(10,2) not null);
	
	CREATE TABLE orders (order_id varchar(25) not null PRIMARY KEY,
					customer_id int not null, order_date date 
					not null, product_id varchar(25) not null,
					quantity int not null, delivery_status varchar(20)
					not null,
			foreign key(customer_id) references customers(customer_id),
			foreign key(product_id) references product(product_id));
						
	ALTER TABLE product
ADD unit_cost numeric(10,2)

UPDATE product
SET unit_cost = (0.95 * unit_price)


	CREATE TABLE payment(
	payment_id varchar(25) not null PRIMARY KEY,
	order_id varchar(25) not null,
	payment_date date not null,
	foreign key (order_id) references orders(order_id));
	
	CREATE TABLE credit_card(
			card_number numeric(15,0) NOT NULL,
			customer_id int NOT NULL,
			card_expiry_date date NOT NULL,
			bank_name varchar (100) NOT NULL,
			FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

select * from orders
select * from payment
select * from product

--maximum price
select product_name, max(unit_price) as maximumprice
from product
group by product_name
order by maximumprice desc
limit 1

--minimum price
select product_name, min(unit_price) as minimumprice
from product
group by product_name
order by minimumprice desc
limit 1

--Total orders in each month 2022

alter table orders
add years int
update orders

set years = extract(years)
						