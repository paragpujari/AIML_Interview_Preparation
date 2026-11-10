-------------------------------------------------Aggregate Functions-----------------------------------------------------------------------------------------------
/*
	Aggregate Functions ------>	These are the functions that is used to perform mathematical operations on the data

	Types of Aggregate Functions

	(a.)	SUM	----->	It finds out the sum of all the column values in the database table.

	(b.)	AVG	----->	It finds out the average of all the column values in the database table.

	(c.)	MIN	----->	It finds out the minimum of all the column values in the database table.

	(d.)	MAX	----->	It finds out the maximum of all the column values in the database table.

	(e.)	COUNT ---->	It finds out the count of all the column values in the database table.

			COUNT(*) ----->	It counts the NULL and NOT NULL records in the database table.

			COUNT(values)----->	It counts the NOT NULL records in the database table.
*/
--------------------------------------------------------Solved Examples--------------------------------------------------------------------------------------------
---1.	Find the total salary paid to all employees
SELECT SUM(salary) AS Total_salary FROM Employees
---2.	Find the total number of employee records
SELECT COUNT(*) AS Total_employees FROM Employees
---3.	Find the average salary of employees
SELECT AVG(salary) AS Average_salary FROM Employees
---4.	Find the minimum price among all products
SELECT MIN(price) AS Minimum_price FROM products
---5.	Find the maximum order amount
SELECT MAX(order_amount) AS Maximum_order_amount FROM orders
-------------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------
---1.	Calculate the total salary of all employees
SELECT SUM(salary) AS Total_salary FROM Employees
---2.	Count the total number of employees
SELECT COUNT(*) AS Total_employees FROM Employees
---3.	Calculate the average salary of employees
SELECT AVG(salary) AS Average_salary FROM Employees
---4.	Find the highest salary of all the Employees
SELECT MAX(salary) AS Highest_Salary FROM Employees
---5.	Find the lowest salary of all the Employees
SELECT MIN(salary) AS Lowest_Salary FROM Employees
---6.	Calculate the total order amount for all the orders
SELECT SUM(order_amount) AS Total_order_amount FROM orders
---7.	Count the total number of orders
SELECT COUNT(1) AS Total_orders FROM orders
---8.	Find the average order amount for all orders
SELECT AVG(order_amount) AS Average_order_amount FROM orders
---9.	Find the highest and lowest product prices
SELECT MAX(price) AS Highest_price, MIN(price) AS Lowest_price FROM products
---10.	Count the total number of payment records
SELECT COUNT(*) AS Total_Payments FROM Payments1
----------------------------------------------------Analytical Scenario Based Questions---------------------------------------------------------------------------
---1.	
/*
An HR manager wants to understand the company's salary expenditure.

Write an SQL query to calculate:
- Total salary expenditure.
- Average employee salary.
- Highest employee salary.
- Lowest employee salary.
*/
SELECT 
SUM(salary) AS Total_salary_expenditure		,
AVG(salary) AS Average_salary				,
MAX(salary) AS Maximum_salary				,
MIN(salary) AS Minimum_salary
FROM Employees

---2.	
/*
A sales manager wants to understand the overall sales performance.

Using the Orders table, calculate:
- Total revenue.
- Average order value.
- Highest order amount.
- Lowest order amount.
*/

SELECT 
SUM(order_amount) AS Total_revenue			,
AVG(order_amount) AS Average_order_amount	,
MAX(order_amount) AS Highest_order_amount	,
MIN(order_amount) AS Lowest_order_amount
FROM orders

---3.
/*
An HR team wants to investigate missing salary information.

Using the Employees table, calculate:
- Total employee records.
- Number of employees with non-NULL salaries.
- Number of employees with NULL salaries.
*/
SELECT 
COUNT(*) AS Total_employees_Records					,
COUNT(salary) AS Total_employees_valid_salaries		,
COUNT(*)-COUNT(salary) AS Total_employees_null_salaries
FROM Employees

---4.	
/*
An e-commerce company wants to evaluate its product pricing.

Using the Products table, calculate:
- Average product price.
- Highest product price.
- Lowest product price.
- Total value of all product prices.
*/
SELECT 
AVG(price) AS Average_product_price					,
MAX(price) AS Highest_product_price					,
MIN(price) AS Lowest_product_price					,
SUM(price) AS Total_product_prices
FROM products

---5.
/*
A finance manager wants to understand the payment transaction volume.

Using the Payments1 table, calculate:
- Total payment records.
- Number of payment records with non-NULL payment modes.
- Number of payment records with non-NULL payment statuses.
*/
SELECT 
COUNT(*) AS Total_payment_records					,
COUNT(payment_mode) AS Total_payment_modes		    ,
COUNT(payment_status)	AS Total_payment_status
FROM Payments1