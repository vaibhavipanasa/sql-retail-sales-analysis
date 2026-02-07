CREATE TABLE customers (
 customer_id INT Primary key,
 customer_name VARCHAR (100) NOT null,
 city VARCHAR(50)
);
CREATE TABLE products (
 product_id INT PRIMARY KEY,
 product_name VARCHAR(100) NOT NULL,
 category VARCHAR(50),
 price DECIMAL(10,2) NOT NULL
);
CREATE TABLE Orders(
 order_id INT PRIMARY KEY,
 customer_id INT NOT NULL,
 order_date DATE NOT NULL,
 foreign key(customer_id) REFERENCES customers(customer_id)
 );
Create TABLE order_items (
 order_item_id INT PRIMARY KEY, 
 order_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 foreign key (product_id) REFERENCES products(product_id)
);
 
 INSERT INTO customers (customer_id, customer_name, city)Values
 (1, 'Ava Johnson','Chicago'),
 (2,'Liam Smith','Dallas'),
 (3, 'Mia Brown' , 'Seattle'),
 (4, 'Noah Davis', 'Chicago'),
 (5, 'Sofia Wilson', 'Boston');
 
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(101,1,'2025-01-05'),
(102,2,'2025-01-10'),
(103,3,'2025-02-12'),
(104,4,'2025-02-18'),
(105,1,'2025-03-02'),
(106,5,'2025-03-15');

INSERT INTO products (product_id, product_name, category, price) VALUES
(1,'Wireless Mouse','Electronics',25.99),
(2,'Notebook','Stationery',3.50),
(3,'Water Bottle','Accessories',12.00),
(4,'Headphones','Electronics',59.99),
(5,'Backpack','Accessories',45.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1,101,1,1),
(2,101,2,3),
(3,102,4,1),
(4,102,3,2),
(5,103,5,1),
(6,103,2,5),
(7,104,1,2),
(8,104,3,1),
(9,105,4,1),
(10,105,5,1),
(11,106,2,10);
 SELECT * FROM customers;
 SELECT * FROM products;
 SELECT * FROM orders;
 SELECT * FROM order_items;


 



