USE SQL_Basics
--------------------------------------------------------------SELECT statements----------------------------------------------------------------------------------
/*
	SELECT ----------> It is used to fetch the records from the database table.

	Syntax:

	SELECT * FROM table_name;	--------->	It fetches all the records from the database table.

	SELECT col1,col2,...coln FROM table_name ---------> Ut fetches the records from certain columns in the database table.
*/
-------------------------------------------------------------Solved Examples--------------------------------------------------------------------------------------
---1.	Display all columns and records from the Employees table
SELECT * FROM Employees
---2.	Display only employee names and their departments
SELECT emp_name,department FROM Employees
---3.	Display customer names and their respective cities
SELECT customer_name,city FROM customers
---4.	Display product names, categories and prices
SELECT product_name,category,price FROM products
---5.	Display order IDs, customer IDs, order dates and order amounts
SELECT order_id,customer_id,order_date,order_amount FROM orders

---------------------------------------------------Coding Interview Questions-------------------------------------------------------------------------------------
---1. Write a SQL query to display all employee records from the Employees table.
SELECT * FROM Employees
---2. Write a SQL query to retrieve employee names, salaries and cities from the Employees table.
SELECT emp_name,salary,city FROM Employees
---3. Write a SQL query to display employee IDs, employee names and email addresses.
SELECT emp_id, emp_name,email FROM Employees
---4. Write a SQL query to retrieve department IDs and department names from the Departments table.
SELECT dept_id,dept_name FROM Departments
---5. Write a SQL query to display customer IDs, customer names and cities from the customers table.
SELECT customer_id, customer_name,city FROM customers
---6. Write a SQL query to retrieve order IDs, order dates and order amounts from the Orders table.
SELECT order_id,order_date,order_amount FROM orders
---7. Write a SQL query to display product names, categories and prices from the products table.
SELECT product_name,category,price FROM products
---8. Write a SQL query to retrieve payment IDs, order IDs and payment modes from the Payments1 table.
SELECT payment_id,order_id,payment_mode FROM Payments1
---9. Write a SQL query to display employee names, hire dates and birth dates from the Employees table.
SELECT emp_name,Hire_Date,birth_date FROM Employees
---10. Write a SQL query to retrieve employee IDs, names, departments, salaries, cities, employment status and department IDs.
SELECT emp_id,emp_name,department,salary,city,status,dept_id FROM Employees

-------------------------------------------------------Analytical Scenario-Based Questions---------------------------------------------------------------------
/*
1. Employee Information Reporting

A company wants to prepare a basic employee information report for its HR department.

Write a SQL query to retrieve employee names, departments, salaries, cities, hire dates and employment statuses from the Employees table.
*/
SELECT emp_name,department,salary,city,Hire_Date,status FROM Employees
/*
2. Customer Database Reporting

An e-commerce company wants to prepare a customer master report for its business operations team.

Write a SQL query to retrieve customer IDs, customer names and city information from the customers table.
*/
SELECT customer_id,customer_name,city FROM customers
/*
3. Sales Transaction Reporting

A sales manager wants to review the company's order transaction records for business reporting.

Write a SQL query to retrieve order IDs, customer IDs, order dates and order amounts from the Orders table.
*/
SELECT order_id,customer_id,order_date,order_amount FROM orders
/*
4. Product Catalogue Reporting

An e-commerce company wants to generate a product catalogue containing product information for its internal business team.

Write a SQL query to retrieve product IDs, product names, categories and prices from the products table.
*/
SELECT product_id,product_name,category,price FROM products
/*
5. Payment Information Reporting

A finance department wants to prepare a payment information report to understand the recorded payment transactions.

Write a SQL query to retrieve payment IDs, order IDs, payment modes and payment statuses from the Payments1 table.
*/
SELECT payment_id,order_id,payment_mode,payment_status FROM Payments1