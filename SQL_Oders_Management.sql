-- Create customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Create products table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    order_date DATE
);

DROP TABLE customers;
DROP TABLE products;
DROP TABLE orders;


-- Insert sample customers
INSERT INTO customers (name, email) VALUES
('Assad', 'assadkhurshid91@gmail.com'),
('sunny', 'sunny@gmail.com');

-- Insert sample products
INSERT INTO products (name, price) VALUES
('T-shirt', 10.00),
('Mug', 5.00);

-- Insert sample orders
INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 2, '2024-01-01'),
(2, 2, 1, '2024-01-02');


DELETE FROM orders 
DELETE FROM customers 
DELETE FROM Products


--🧾 Show all customers:
SELECT * FROM customers;

--🛒 Show all products:
SELECT * FROM products;

--🔍 Find all orders with customer and product names:
SELECT 
  o.order_id,
  c.name AS customer_name,
  p.name AS product_name,
  o.quantity,
  o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

--📦 Show orders where quantity > 1:
SELECT * FROM orders WHERE quantity > 1;


--💰 Total amount spent in each order:
SELECT 
  o.order_id,
  c.name,
  p.name,
  o.quantity,
  (o.quantity * p.price) AS total_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;





