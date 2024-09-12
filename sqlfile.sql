select TOP(10) * from superstore

select * from  Superstore

--fetching specified column
SELECT ship_mode, customer_name
FROM superstore

--using Aliase and calculate the unit price of each quantity
SELECT top(10) product_name, customer_name as name_, (sales/quantity) as unit_price
FROM Superstore

--using WHERE CLAUSE
SELECT ship_mode, customer_name as name_,product_name as Oja,city,sales,quantity 
FROM Superstore 
WHERE Quantity > 4;

 SELECT ship_mode, customer_name,product_name ,city,sales, max(quantity) as maximum
FROM Superstore 
group by ship_mode,customer_name,product_name,city,sales

SELECT ship_mode, customer_name as name_,product_name as Oja,city,sales,quantity 
FROM Superstore 
WHERE Quantity BETWEEN 2 AND 4;

SELECT ship_mode, customer_name as name_,product_name as Oja,city,sales,quantity 
FROM Superstore 
WHERE Quantity >2 AND Quantity < 5;

--using WHERE CLAUSE AND LIKE OPERATOR
SELECT ship_mode customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE 'A%' and Quantity < 4
SELECT ship_mode customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE '%on' and Quantity < 4

--middle like
SELECT ship_mode customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE City LIKE '_m%'

--Uisng in operator to find the transaction of Ken Black, Joel Eaton, Ryan Crowe
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE Customer_name IN ('Ken Black','Joel Eaton','Ryan Crowe')

--ORDER CLAUSE in DESC
SELECT ship_mode, customer_name, product_name, city, sales, quantity
FROM Superstore
WHERE Customer_name IN ('Ken Black','Joel Eaton','Ryan Crowe')
ORDER BY Quantity desc

--GROUP BY CLAUSE
SELECT City, count(*) as customer_count FROM Superstore
GROUP BY city

SELECT City, count(*) as customer_count FROM Superstore
GROUP BY city
HAVING count(*) > 50;

SELECT city, SUM(sales) AS Total_sales
FROM Superstore
GROUP BY City
ORDER BY Total_sales DESC


SELECT city, SUM(sales) AS Total_sales, MAX(Quantity) as max_quantity, count(*) as 'number of transaction'
FROM Superstore
GROUP BY City
ORDER BY Total_sales DESC
