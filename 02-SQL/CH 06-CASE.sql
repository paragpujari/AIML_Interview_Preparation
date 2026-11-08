-------------------------------------------------------------CASE Statements-------------------------------------------------------------------------------------------------
/*
	CASE statements ar those statements thae helps in identifying the situtaions and classifying the categories based on the condition.

	Syntax:

	SELECT *,CASE WHEN cond1 THEN stmt1
	              WHEN cond2 THEN stmt2
				  
							 ELSE stmtn
							 END AS [cat_name]
							 FROM table_name;
*/
--------------------------------------------------------------Examples--------------------------------------------------------------------------------------
/*
1. Display employee name, salary, and salary category.

Conditions:
- Salary >= 150000 → High Salary
- Salary >= 100000 → Medium Salary
- Salary < 100000 → Low Salary
- NULL salary → Not Available
*/
SELECT emp_name,salary,CASE WHEN salary >= 150000						THEN	'High Salary'
			  WHEN salary >= 100000 AND salary < 150000	                THEN	'Medium Salary'
			  WHEN salary < 100000						                THEN    'Low Salary'
			  WHEN salary IS NULL                                       THEN    'Not Available'
														                END AS salary_category
			  FROM Employees ORDER BY salary

/*
2.	Display employee name, status, and employment category.

Conditions:
- Active → Currently Working
- Inactive → Not Working
- NULL → Unknown Status
*/
SELECT emp_name,status,CASE WHEN status = 'Active'	THEN	'Currently Working' 
			  WHEN status = 'Inactive'  THEN    'Not Working'
			  WHEN status IS NULL       THEN    'Unknown Status'
			  END AS employment_category
			  FROM Employees 
			  ORDER BY status
/*
3.	Display order ID, customer ID, order amount, and order category.

Conditions:
- Negative amount → Invalid Order
- 0 to 500 → Small Order
- 501 to 2000 → Medium Order
- Above 2000 → Large Order
*/
SELECT order_id,customer_id,order_amount,CASE WHEN order_amount < 0								THEN 'Invalid Order'
                                              WHEN order_amount >= 0 AND order_amount <= 500	THEN 'Small Order'
			                                  WHEN order_amount >= 501 AND order_amount <= 2000 THEN 'Medium Order'
																								ELSE 'Large Order'
																							    END AS Order_Category
			                                                                                    FROM orders 
			                                                                                    ORDER BY order_amount
/*
4.	Display order ID, payment mode, payment status, and transaction category.

Conditions:
- Success → Completed
- Pending → Awaiting Confirmation
- Failed → Transaction Failed
- Other → Unknown
*/
SELECT order_id, payment_mode, payment_status,CASE WHEN payment_status = 'Success'	THEN	'Completed' 
												   WHEN payment_status = 'Pending'	THEN    'Awaiting Confirmation'
												   WHEN payment_status = 'Failed'	THEN    'Transaction Failed' 
												                                    ELSE    'Unknown'
																					END AS transaction_category
																					FROM Payments1
/*
5.	Display product name, category, price, and price segment.

Conditions:
- Price >= 50000 → Premium
- Price >= 10000 → Expensive
- Price >= 1000 → Moderate
- Price < 1000 → Budget
*/
SELECT product_name,category,price,CASE WHEN price >= 50000							THEN	'Premium' 
										WHEN price >= 10000 AND price < 50000		THEN    'Expensive'
										WHEN price >= 1000  AND price < 10000       THEN    'Moderate'
																					ELSE    'Budget'
																					END AS  price_segment
										FROM products ORDER BY price
-----------------------------------------------------------------Coding Interview Questions-----------------------------------------------------------------------------------------
---1.	
/*
Display employee name, department, salary, and salary grade.

Conditions:
- Salary >= 150000 → Grade A
- Salary >= 120000 → Grade B
- Salary >= 80000 → Grade C
- Salary < 80000 → Grade D
- NULL → Not Assigned
*/

SELECT emp_name,department,salary, CASE WHEN salary >= 150000						THEN	'Grade A'
										WHEN salary >= 120000 AND salary < 150000	THEN	'Grade B'
										WHEN salary >= 80000  AND salary < 120000	THEN    'Grade C' 
										WHEN salary <  80000                        THEN    'Grade D' 
										WHEN salary IS NULL                         THEN    'Not Assigned'
										END AS salary_grade
										FROM Employees 
										ORDER BY salary
---2.
/*
	Display employee name, hire date, and experience category.

Conditions:
- Hired before 2023 → Senior Employee
- Hired during 2023 → Experienced Employee
- Hired during 2024 → Intermediate Employee
- Hired during 2026 → New Employee
*/
SELECT emp_name,Hire_Date, CASE WHEN YEAR(Hire_Date) < '2023'	THEN	'Senior Employee' 
								WHEN YEAR(Hire_Date) = '2023'   THEN    'Experienced Employee'
								WHEN YEAR(Hire_Date) = '2024'	THEN	'Intermediate Employee'
								WHEN YEAR(Hire_Date) = '2026'	THEN	'New Employee'
								END AS experience_category
								FROM Employees 
								ORDER BY Hire_Date
---3.
/*
	Display employee name, department ID, and department category.

Conditions:
- 101 → Technology
- 102 → Human Resources
- 103 → Finance
- 104 → Marketing
- NULL or other → Unassigned
*/
SELECT emp_name,dept_id,CASE WHEN dept_id = '101'	THEN	'Technology'	
							 WHEN dept_id = '102'	THEN	'Human Resources'
							 WHEN dept_id = '103'	THEN    'Finance'
							 WHEN dept_id = '104'	THEN    'Marketing'
													ELSE    'Unassigned'
													END AS department_category
							 FROM Employees 
							 ORDER BY dept_id
---4.
/*
	Display customer name, city, and geographical category.

Conditions:
- Mumbai, Pune → West India
- Delhi, Noida → North India
- Bangalore, Chennai → South India
- Kolkata, Guwahati → East India
- Other cities → Other Region
*/
SELECT *, CASE WHEN city IN ('Mumbai','Pune')		THEN	'West India'	
			   WHEN city IN ('Delhi','Noida')		THEN	'North India' 
			   WHEN city IN ('Bangalore','Chennai')	THEN	'South India'
			   WHEN city IN ('Kolkata','Guwahati')	THEN	'East India'
													ELSE    'Other Region'
													END AS geographical_category
													FROM customers 
													ORDER BY city
---5.
/*
	Display order ID, order amount, and order priority.

Conditions:
- Negative amount → Invalid
- 0–500 → Low
- 501–1500 → Medium
- 1501–3000 → High
- Above 3000 → Critical
*/
SELECT order_id, order_amount,CASE WHEN order_amount < 0								THEN	'Invalid'
								   WHEN order_amount >= 0	AND order_amount <= 500		THEN	'Low'	
								   WHEN order_amount >= 501 AND order_amount <= 1500	THEN	'Medium'
								   WHEN order_amount >=1501 AND order_amount <= 3000	THEN	'High'
																						ELSE    'Critical'
																						END AS order_priority
								   FROM orders
								   ORDER BY order_amount
---6.
/*
	Display payment ID, payment mode, payment status, and payment result.
	SELECT * FROM payments1
Conditions:
- Success + UPI → Successful UPI
- Success + Cash → Successful Cash
- Success + Credit Card → Successful Card
- Pending → Awaiting Payment
- Failed → Failed Payment
*/
SELECT payment_id,payment_mode, payment_status, CASE WHEN (payment_status = 'Success' AND payment_mode = 'UPI')			THEN  'Successful UPI'
													 WHEN (payment_status = 'Success' AND payment_mode = 'Cash')		THEN  'Successful Cash'
													 WHEN (payment_status = 'Success' AND payment_mode = 'Credit Card') THEN  'Successful Card'
													 WHEN (payment_status = 'Pending')									THEN  'Awaiting Payment'
													 WHEN (payment_status = 'Failed')									THEN  'Failed Payment'
													 END AS Payment_result
													 FROM Payments1
---7.
/*
	Display product name, category, price, and product segment.

Conditions:
- Electronics + Price >= 50000 → Premium Electronics
- Electronics + Price below 50000 → Standard Electronics
- Furniture → Furniture Product
- Appliances → Home Appliances
- Other → General Product
*/
SELECT product_name,category,price, CASE WHEN (category = 'Electronics' AND price >= 50000)	THEN 'Premium Electronics'
                                         WHEN (category = 'Electronics' AND price < 50000)	THEN 'Standard Electronics'
										 WHEN (category = 'Furniture')						THEN 'Furniture'
										 WHEN (category = 'Appliances')						THEN 'Home Appliances'
																							ELSE 'General Product'
																							END AS product_segment
										 FROM products 
										 ORDER BY price
---8.
/*
	Display employee name, salary, status, and employee classification.

Conditions:
- Active + Salary >= 150000 → Active High Earner
- Active + Salary below 150000 → Active Employee
- Inactive → Inactive Employee
- NULL salary → Salary Not Available
*/
SELECT emp_name,salary,status, CASE WHEN (status = 'Active' AND salary >= 150000)	THEN	'Active High Earner'
									WHEN (status = 'Active'	AND salary < 150000)	THEN    'Active Employee'
									WHEN (status = 'Inactive')						THEN	'Inactive Employee'
																					ELSE    'Salary Not Available'
																					END AS employee_classification
																					FROM Employees 
																					ORDER BY salary
---9.
/*
	Display order ID, order amount, payment status, and final transaction category.

Conditions:
- Negative amount → Invalid Order
- Success + Amount >= 3000 → High Value Completed
- Success + Amount below 3000 → Normal Completed
- Pending → Payment Pending
- Failed → Payment Failed
*/

SELECT o.order_id, o.order_amount, p.payment_status, 
CASE WHEN (o.order_amount < 0)	THEN	'Invalid Order'	
	 WHEN (p.payment_status = 'Success' AND o.order_amount >= 3000)	THEN 'High Value Completed'
	 WHEN (p.payment_status = 'Success'	AND o.order_amount <  3000)	THEN 'Normal Completed'
	 WHEN (p.payment_status = 'Pending')						    THEN 'Payment Pending'
																	ELSE 'Payment Failed'
																	END AS final_transaction_category
FROM orders o
JOIN Payments1 p
ON   o.order_id = p.order_id
ORDER BY 2
---10.
/*
	Display employee name, department, salary, and employee grade.

Conditions:
- IT + Salary >= 150000 → IT Premium
- IT + Salary below 150000 → IT Standard
- HR + Salary >= 60000 → HR Senior
- HR + Salary below 60000 → HR Junior
- Finance → Finance Employee
- Marketing → Marketing Employee
- NULL department → Department Not Assigned
*/
SELECT emp_name,department,salary, CASE WHEN (department = 'IT'	AND salary >= 150000)	THEN	'IT Premium'
										WHEN (department = 'IT'	AND salary <  150000)	THEN	'IT Standard'	
										WHEN (department = 'HR' AND salary >= 60000)	THEN	'HR Senior' 
										WHEN (department = 'HR' AND salary <  60000)	THEN	'HR Junior'	
										WHEN (department = 'Finance')					THEN	'Finance Employee'
										WHEN (department = 'Marketing')					THEN    'Marketing Employee'
																						ELSE    'Department Not Assigned'
																						END AS employee_grade
										FROM Employees 
										ORDER BY salary

------------------------------------------------------------Analytical Scenario Based Questions---------------------------------------------------------------------------------
---1.
/*
A retail company wants to classify customers based on their total order value.

Using the Customers and Orders tables:
(a.) Classify customers with total order value above ₹10,000 as Premium Customers.
(b.) Customers with total order value between ₹5,000 and ₹10,000 as Gold Customers.
(c.) Customers with total order value between ₹1,000 and ₹4,999 as Silver Customers.
(d.) Customers with total order value below ₹1,000 as Bronze Customers.
(e.) Customers without orders should be classified as No Purchase.
(f.) Customers with negative net order value should be identified separately.
*/

;with cte as(
SELECT c.customer_name, SUM(o.order_amount) AS Total_order_value
FROM       customers c
LEFT JOIN  orders    o
ON         c.customer_id = o.customer_id
GROUP BY c.customer_name
)
SELECT *,CASE WHEN Total_order_value > 10000								THEN	'Premium Customers'	
			  WHEN Total_order_value >= 5000 AND Total_order_value <= 10000	THEN	'Gold Customers'
			  WHEN Total_order_value >= 1000 AND Total_order_value <= 4999	THEN	'Silver Customers'
			  WHEN Total_order_value <	1000							    THEN	'Bronze Customers'
			  WHEN Total_order_value IS NULL								THEN	'No Purchase' 
																			ELSE	'Total order value should be identified seperately'
																			END AS  [customer revenue segmentation]
			  FROM cte
