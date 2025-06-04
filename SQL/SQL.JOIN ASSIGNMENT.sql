
use Store;

-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Miami');

-- Table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 1200.00),
(102, 2, 'Phone', 800.00),
(103, 2, 'Tablet', 400.00),
(104, 5, 'Monitor', 300.00);

--	List all customers along with the number of orders they’ve placed.
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Find customers who haven’t placed any orders.
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Find orders that were placed by unknown customers (those not in the customer list).
SELECT o.order_id, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- Calculate the total amount spent per customer.
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


