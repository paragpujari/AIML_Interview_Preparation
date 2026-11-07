-------------------------------------------------------------------TOP-----------------------------------------------------------------------------------------
/*
	TOP	----->	It is used to fetch top 'n' records from the database table.

	Syntax:

	SELECT TOP n col1, col2,....,coln FROM table_name;
*/
------------------------------------------------------------------Solved Examples------------------------------------------------------------------------------
---1.	Display the top 5 employees based on salary in descending order
SELECT TOP 5 * FROM Employees WHERE salary IS NOT NULL ORDER BY salary DESC
---2.	Display the 3 products with the highest prices
SELECT TOP 3 * FROM products WHERE price IS NOT NULL ORDER BY price DESC
---3.	Retrieve the top 5 customers based on customer ID in ascending order
SELECT TOP 5 * FROM customers ORDER BY customer_id ASC
---4.	Retrieve the top 3 highest order amounts
SELECT TOP 3 * FROM orders ORDER BY order_amount DESC
---5.	Retrieve the top 5 recently hired employees
SELECT TOP 5 * FROM Employees WHERE Hire_date IS NOT NULL ORDER BY Hire_Date DESC

------------------------------------------------------------SQL Coding Interview Questions---------------------------------------------------------------------
---1.	Retrieve the top 3 employees with the highest salaries
SELECT TOP 3 * FROM Employees WHERE salary IS NOT NULL ORDER BY salary DESC
---2.	Retrieve the top 5 employees with the lowest salaries
SELECT TOP 5 * FROM Employees WHERE salary IS NOT NULL ORDER BY salary ASC
---3.	Display the top 3 most expensive products
SELECT TOP 3 * FROM products WHERE price IS NOT NULL ORDER BY price DESC
---4.	Retrieve the top 5 orders with the highest order amounts
SELECT TOP 5 * FROM orders WHERE order_amount IS NOT NULL ORDER BY order_amount DESC
---5.	Display the top 3 customers based on customer ID in descending order
SELECT TOP 3 * FROM customers ORDER BY customer_id DESC
---6.	Retrieve the top 5 employees based on the latest hire dates
SELECT TOP 5 * FROM Employees WHERE Hire_Date IS NOT NULL ORDER BY Hire_Date DESC
---7.	Display the top 2 highest-paid employees
SELECT TOP 2 * FROM Employees WHERE salary IS NOT NULL ORDER BY salary DESC
---8.	Retrieve the top 4 cheapest products
SELECT TOP 4 * FROM products WHERE price IS NOT NULL ORDER BY price
---9.	Display the top 5 most recent orders based on order date
SELECT TOP 5 * FROM orders ORDER BY order_date DESC
---10.	Retrieve the top 3 highest payment IDs
SELECT TOP 3 * FROM Payments1 ORDER BY payment_id DESC

-----------------------------------------------------Analytical Scenario Based Questions-----------------------------------------------------------------------
---1.	An HR manager wants to identify the highest-paid employees for the annual compensation review.Write a SQL query to retrieve the top 5 employees with the highest salaries.
SELECT TOP 5 * FROM Employees WHERE salary IS NOT NULL ORDER BY salary DESC
---2.	An e-commerce company wants to identify its premium products for a promotional campaign.Write a SQL query to retrieve the top 3 most expensive products.
SELECT TOP 3 * FROM products ORDER BY price DESC
---3.	A business analyst wants to identify the 5 largest individual orders to investigate high-value transactions.Write a SQL query to retrieve the top 5 orders based on order amount in descending order.
SELECT TOP 5 * FROM orders ORDER BY order_amount DESC
---4.	The HR department wants to identify the 5 newest employees who recently joined the organization.Write a SQL query to retrieve the top 5 employees based on their hiring dates, starting with the latest hire.
SELECT TOP 5 * FROM Employees WHERE Hire_Date IS NOT NULL ORDER BY Hire_Date DESC
---5.	The finance team wants to review the 5 most recent payment records based on payment IDs.Write a SQL query to retrieve the top 5 payment records in descending order of payment ID.
SELECT TOP 5 * FROM Payments1 ORDER BY payment_id DESC