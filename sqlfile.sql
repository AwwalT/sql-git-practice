--join query using inner join
--select the table to view the attribute in the entities
SELECT * FROM sales

SELECT * FROM product

SELECT customer, units_sold, product_name, price, s.product_id
FROM sales AS s
JOIN
product AS p ON s.product_id = p.product_id

--Calculate the amount earn in each transaction or order
SELECT customer, units_sold, price, product_name, (units_sold*price) AS sellng_price
FROM sales s
JOIN
product p ON s.product_id = p.product_id

--calculating profit
SELECT customer, units_sold, price, production_cost, (units_sold*price) AS sellng_price, 
(units_sold * production_cost) AS production_price, ((units_sold * price)-(units_sold * production_cost)) AS profit  
FROM sales s
JOIN
product p ON s.product_id = p.product_id

SELECT product_name, SUM((units_sold * price)) AS total_sales_per_product, SUM((units_sold * production_cost)) AS production_cost,
SUM(((units_sold*price)-(units_sold * Production_cost))) AS PROFIT
FROM sales s
JOIN product p ON s.product_id = p.product_id
GROUP BY product_name
ORDER BY PROFIT DESC

--Calculate the profit made from eaxh product
SELECT product_name, SUM(((units_sold * price)-(units_sold * production_cost))) AS PROFIT
FROM sales s
JOIN
product p ON s.product_id = p.product_id
GROUP BY product_name


--LEFT JOIN
SELECT customer, p.product_id, product_name
FROM product p
JOIN 
sales s ON p.product_id = s.product_id

SELECT * FROM student_info

SELECT * FROM department_info

SELECT department_name, student_name, department_info.department_id
FROM department_info
LEFT JOIN student_info
ON department_info.department_id = student_info.department_id

SELECT department_name, student_name, department_info.department_id
FROM department_info
RIGHT JOIN student_info
ON department_info.department_id = student_info.department_id


SELECT department_name, student_name, department_info.department_id
FROM department_info
FULL OUTER JOIN student_info
ON department_info.department_id = student_info.department_id