CREATE TABLE Movie_theater(
	Total_sales SERIAL PRIMARY KEY,
	total_expenses NUMERIC(30,2),
	total_revenue NUMERIC (30,2),
	rent NUMERIC (30,2)
	);
	
CREATE TABLE Customer(
	customer_id SERIAL PRIMARY KEY,
	cust_first_name VARCHAR(100),
	cust_last_name VARCHAR(100),
	address VARCHAR(150),
	payment_info VARCHAR(100),
	email_address VARCHAR(20)
	);
	
CREATE TABLE tick_t(
	ticket_number SERIAL PRIMARY KEY,
	screen_number INTEGER,
	ticket_date DATE,
	showtime INTEGER,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
	);
	
CREATE TABLE Movies(
	Title SERIAL PRIMARY KEY,
	genre TEXT,
	rating VARCHAR(4),
	length_ NUMERIC(6,2),
	theather_number INTEGER
	);
	
--CREATE TABLE concession(
--	daily_sales SERIAL PRIMARY KEY,
--	menu_items VARCHAR(100),
--	price NUMERIC (4,2),
--	weekly INTEGER,
--	Monthly_sales INTEGER,
--	food_cost INTEGER
--);

CREATE TABLE concession(
	daily_sales SERIAL PRIMARY KEY,
	menu_items VARCHAR(100),
	price NUMERIC (4,2),
	weekly INTEGER,
	Monthly_sales INTEGER,
	food_cost INTEGER
);

CREATE TABLE reward_programs(
	total_rewards_points SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	tickets_bought INTEGER,
	per_movie_points  INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE Staff(
	employee_id SERIAL PRIMARY KEY,
	emp_first_name VARCHAR(100),
	emp_last_name VARCHAR(100),
	pay_rate NUMERIC(5,2),
	length_of_employment INTEGER
	);