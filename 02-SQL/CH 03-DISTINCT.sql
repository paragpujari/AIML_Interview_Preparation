---------------------------------------------------------DISTINCT-------------------------------------------------------------------------------------------------------------
/*
	DISTINCT	------>	It helps in fetching all the unique records from the database table.

	Syntax:--

	SELECT DISTINCT col_name FROM table_name;
*/
---------------------------------------------------------Solved Examples------------------------------------------------------------------------------------------------------
---1.	Display all unique employee departments
SELECT DISTINCT department AS Unique_department FROM Employees WHERE department IS NOT NULL
---2.	Display all unique customer cities
SELECT DISTINCT city AS Unique_customer_city FROM Customers
---3.	Display all unique product categories
SELECT DISTINCT category AS Unique_product_category FROM products
---4.	Display unique employee cities
SELECT DISTINCT city AS Unique_cities FROM Employees 
---5.	Display unique combinations of payment mode and payment status
SELECT DISTINCT payment_mode, payment_status FROM Payments1

-----------------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------------
---1. Display all unique departments available in the Employees table.
SELECT DISTINCT department AS Unique_departments FROM Employees WHERE department IS NOT NULL
---2. Retrieve all unique employee statuses from the Employees table.
SELECT DISTINCT status AS Unique_employee_status FROM Employees
---3. Display all unique cities where employees are located.
SELECT DISTINCT city AS Unique_cities FROM Employees
---4. Retrieve all unique product categories from the Products table.
SELECT DISTINCT category AS Unique_product_category FROM products
---5. Display all unique payment modes available in the Payments1 table.
SELECT DISTINCT payment_mode AS Unique_payment_modes FROM Payments1
---6. Display all unique payment statuses from the Payments1 table.
SELECT DISTINCT payment_status AS Unique_payment_status FROM Payments1
---7. Retrieve all unique combinations of employee department and city.
SELECT DISTINCT department,city FROM Employees
---8. Display all unique combinations of customer city and customer name.
SELECT DISTINCT city,customer_name FROM customers
---9. Retrieve all unique combinations of payment mode and payment status.
SELECT DISTINCT payment_mode, payment_status FROM Payments1
---10. Display all unique combinations of order customer_id and order_date from the Orders table.
SELECT DISTINCT customer_id, order_date FROM orders

--------------------------------------------Analytical Scenario-Based Questions----------------------------------------------------------------------------
---1. You are working as a Data Analyst. The HR team wants to identify how many different departments are represented in the Employees dataset.Write a SQL query using DISTINCT to retrieve all unique department names
SELECT DISTINCT department AS Unique_departments FROM Employees
---2. The marketing team wants to identify the different cities from which customers have registered. Write a SQL query using DISTINCT to retrieve all unique customer cities
SELECT DISTINCT city AS Unique_customer_cities FROM customers
---3. The finance team wants to understand which different payment methods are available in the payment transaction dataset.Write a SQL query using DISTINCT to retrieve all unique payment modes.
SELECT DISTINCT payment_mode AS Unique_payment_modes FROM Payments1
---4. The inventory management team wants to identify all different product categories available in the company's product catalog. Write a SQL query using DISTINCT to retrieve all unique product categories.
SELECT DISTINCT category AS Unique_product_category FROM products
---5. The management team wants to identify unique department-location combinations to understand the company's geographical workforce distribution.Write a SQL query using DISTINCT to retrieve unique combinations of department and city from the Employees table.
SELECT DISTINCT department,city FROM Employees