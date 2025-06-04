 --CREATE TABLE sales_data (
    id INT PRIMARY KEY,    
    product_name VARCHAR(255) NOT NULL,    
    category VARCHAR(255) NOT NULL,         
    sales DECIMAL(10, 2) NOT NULL,          
    profit DECIMAL(10, 2) NOT NULL,         
    country VARCHAR(255) NOT NULL           );

  Use INSERT INTO to insert the data into the table you created.
 INSERT INTO sales_data (product_name, category, sales, profit, country) VALUES
('Smartphone', 'Electronics', 1000, 200, 'Kenya'),
('Sofa', 'Furniture', 1500, 300, 'South Sudan'),
('Headphones', 'Electronics', 800, 120, 'Congo'),
('Table', 'Furniture', 950, 180, 'Kenya'),
('Refrigerator', 'Appliances', 2000, 450, 'Congo'),
('T-Shirt', 'Clothing', 600, 150, 'South Sudan'),
('Laptop', 'Electronics', 2500, 600, 'Kenya'),
('Blender', 'Appliances', 700, 100, 'South Sudan'),
('Dress', 'Clothing', 900, 220, 'Congo'),
('Bookshelf', 'Furniture', 1100, 270, 'Kenya');

Question 2:
Write an SQL query to find the total profit by category. Only include categories
where total profit is greater than 500.
 SELECT category,SUM(profit) AS total_profit
 FROM sales_data
 GROUP BY category
 HAVING SUM(profit)>500

Question 3:
Write an SQL query to find total sales per country. Only include countries with
total sales above 2500.
 SELECT country,SUM(sales) AS total_sales
 FROM sales_data
 GROUP BY country
 HAVING SUM(sales)>2500

Question 4:
Write an SQL query to find the average profit per category. Only show
categories with an average profit greater than 200.
 SELECT category,AVG(profit) AS average_profit
 FROM sales_data
 GROUP BY category
 HAVING AVG(profit)>200

Question 5:
Write an SQL query to count the number of products per country. Only include
countries with more than 2 products.
  SELECT country,COUNT(product_name) AS product_per_country
  FROM sales_data
  GROUP BY country
  HAVING  COUNT(product_name)>2