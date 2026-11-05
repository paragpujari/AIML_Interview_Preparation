-----------------------------------------------------------WHERE----------------------------------------------------------------------------------------------------
/*
	WHERE ---------> It helps in filtering the records based on certain conditions

	Syntax:---

	SELECT * FROM table_name WHERE condition;
*/
---------------------------------------------------------Examples---------------------------------------------------------------------------------------------------
---1.	Display employees working in the IT department
SELECT * FROM Employees WHERE department IN ('IT')
---2.	Display employees whose salary is greater than 100000
SELECT * FROM Employees WHERE salary > 100000
---3.	Display customers belonging to Delhi
SELECT * FROM customers WHERE city IN ('Delhi')
---4.	Display orders having an order amount greater than 2000
SELECT * FROM orders WHERE order_amount > 2000 
---5.	Display payments having a Failed payment status
SELECT * FROM Payments1 WHERE payment_status = 'Failed'
-------------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------
---1. Write a SQL query to retrieve employees whose department is IT.
SELECT * FROM Employees WHERE department IN ('IT')
---2. Write a SQL query to retrieve employees whose salary is greater than 80000.
SELECT * FROM Employees WHERE salary > 80000
---3. Write a SQL query to retrieve employees whose city is Mumbai.
SELECT * FROM Employees WHERE city = 'Mumbai'
---4. Write a SQL query to retrieve employees whose employment status is Active.
SELECT * FROM Employees WHERE status = 'Active'
---5. Write a SQL query to retrieve customers belonging to Bangalore.
SELECT * FROM customers WHERE city = 'Bangalore'
---6. Write a SQL query to retrieve orders whose order amount is less than 1000.
SELECT * FROM orders WHERE order_amount < 1000
---7. Write a SQL query to retrieve orders placed by customer ID 101.
SELECT * FROM orders WHERE customer_id = '101'
---8. Write a SQL query to retrieve products belonging to the Electronics category.
SELECT * FROM products WHERE category = 'Electronics'
---9. Write a SQL query to retrieve products whose price is greater than 10000.
SELECT * FROM products WHERE price > 10000
---10. Write a SQL query to retrieve payments having Pending status.
SELECT * FROM Payments1 WHERE payment_status = 'Pending'
--------------------------------------------------Analytical Scenario Based Questions------------------------------------------------------------------------------
---11.	The HR department wants to identify employees earning more than ₹1,00,000.Write a SQL query to retrieve employees whose salary exceeds 100000
SELECT * FROM Employees WHERE salary > 100000
---12.	The HR team wants to prepare a list of employees who are currently inactive. Write a SQL query to retrieve employees whose status is Inactive.
SELECT * FROM Employees WHERE status = 'Inactive'
---13.	A sales manager wants to identify high-value transactions exceeding ₹2,000.Write a SQL query to retrieve orders whose order amount exceeds 2000
SELECT * FROM orders WHERE order_amount > 2000
---14.	An e-commerce company wants to identify expensive products priced above ₹10,000. Write a SQL query to retrieve products whose price exceeds 10000.
SELECT * FROM products WHERE price > 10000
---15.	The finance department wants to identify transactions that have not yet been successfully completed and are currently marked Pending.Write a SQL query to retrieve payments whose payment status is Pending.
SELECT * FROM Payments1 WHERE payment_status = 'Pending'