-------------------------------------------------------ORDER BY-----------------------------------------------------------------------------------------------------
/*
	ORDER BY ------->	It is used to arrange all the elements in the database table in ascending or descending order

	By default the elements in the database table are arranged in ascending order
*/
------------------------------------------------------Five Solved Examples------------------------------------------------------------------------------------------
---1.	Display all employees sorted by salary from lowest to highest
SELECT * FROM Employees ORDER BY salary
---2.	Display all employees sorted by salary from highest to lowest
SELECT * FROM Employees ORDER BY salary DESC
---3.	Display all employees by department alphabetically. Within each department, arrange employees by salary from highest to lowest
SELECT * FROM Employees ORDER BY department ASC,salary DESC
---4.	Display all products from the most expensive to the least expensive
SELECT * FROM products ORDER BY price DESC
---5.	Display all orders by order date from oldest to newest. If multiple orders have the same date, arrange them by order amount from highest to lowest
SELECT * FROM orders ORDER BY order_date ASC,order_amount DESC

-------------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------
---1. Employees: Display all employees sorted by their names alphabetically (A to Z).
SELECT * FROM Employees ORDER BY emp_name ASC
---2. Employees: Display all employees sorted by hire date from newest to oldest.
SELECT * FROM Employees ORDER BY Hire_Date DESC
---3. Employees: Display all employees sorted by birth date from oldest to youngest.
SELECT * FROM Employees ORDER BY birth_date ASC
---4. Employees: Display all employees sorted by city alphabetically (A to Z).
SELECT * FROM Employees ORDER BY city ASC
---5. Employees: Display all employees sorted first by department in ascending order and then by employee name in descending order.
SELECT * FROM Employees ORDER BY department ASC, emp_name DESC
---6. Orders: Display all orders sorted by order amount from highest to lowest.
SELECT * FROM orders ORDER BY order_amount DESC
---7. Orders: Display all orders sorted by customer ID in ascending order and order date in descending order.
SELECT * FROM orders ORDER BY customer_id ASC,order_date DESC
---8. Products: Display all products sorted by category alphabetically and price from highest to lowest within each category.
SELECT * FROM products ORDER BY category ASC, price DESC
---9. Payments1: Display all payment records sorted by payment status alphabetically (A to Z).
SELECT * FROM Payments1 ORDER BY payment_status ASC
---10. Customers: Display all customers sorted by city in descending alphabetical order (Z to A).
SELECT * FROM customers ORDER BY city DESC

------------------------------------------------Analytical Scenario Based Questions----------------------------------------------------------------------------------
---1.	The HR department wants to review employee salaries to identify the highest-paid employees first. Write a SQL query to display employee ID, employee name, department, and salary, arranged from highest salary to lowest salary.
SELECT emp_id,emp_name,department,salary FROM Employees ORDER BY salary DESC
---2.	The recruitment team wants to review the most recently hired employees. Write a SQL query to display employee details with the newest hire date appearing first.
SELECT * FROM Employees ORDER BY Hire_Date DESC
---3.	The sales department wants to review orders chronologically. For orders placed on the same date, management wants the highest-value order displayed first. Write a SQL query to sort orders by order date ascending and order amount descending.
SELECT * FROM orders ORDER BY order_date ASC,order_amount DESC
---4.	The procurement team wants to compare product prices category-wise, starting with the most expensive product in each category. Write a SQL query to arrange products by category in ascending order and price in descending order.
SELECT * FROM products ORDER BY category ASC, price DESC
---5. The finance department wants to review payment records alphabetically by payment status. Within each payment status, they want the most recent order ID displayed first. Write a SQL query to sort payment records by payment status ascending and order ID descending.
SELECT * FROM Payments1 ORDER BY payment_status ASC, order_id DESC