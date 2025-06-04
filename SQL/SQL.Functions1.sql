1)
INSERT INTO Sales(id,product_name,quantity,price_per_unit)
VALUES(1,'Laptop',4,25000)

2)
INSERT INTO Sales(id,product_name,quantity,price_per_unit)
VALUES(2,'Desktop',2,10000)

3)
INSERT INTO Sales(id,product_name,quantity,price_per_unit)
VALUES(3,'Television',5,5000)

4)
INSERT INTO Sales(id,product_name,quantity,price_per_unit)
VALUES(4,'Macbook',3,2100)

5)
INSERT INTO Sales(id,product_name,quantity,price_per_unit)
VALUES(5,'Phones',8,1000)


Write a SQL query to count the total number of sales records in the table.

    SELECT COUNT(*) AS Total_sales
    FROM sales

Write a SQL query to count how many products have a quantity greater
than 5.

    SELECT COUNT(product_name) 
    FROM sales
    WHERE quantity>5

Write a SQL query to find the total quantity of products sold.

    SELECT SUM(quantity) AS Total_QTY_sold
    FROM sales

Write a SQL query to calculate the total sales amount across all products.
(Hint: Use quantity * price_per_unit inside the SUM() function.)
  
     SELECT SUM(quantity*price_per_unit) AS Total_sales_amount
     FROM sales


Write a SQL query to calculate the total sales amount for products where the
price_per_unit is greater than 1,000.

     SELECT SUM(quantity*price_per_unit) AS Total_sales_amount
     FROM sales
     WHERE price_per_unit>1000