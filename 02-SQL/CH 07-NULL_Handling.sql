---------------------------------------------------------------NULL Handling-------------------------------------------------------------------------------------------------------
/*
	NULL refers to the missing or unknown values.

	NULL Handling refers to the technique of handling all the unknown values.

	Functions:--

	ISNULL()	-------->	It replaces the NULL value with another value.

	COALESCE()  -------->	It replaces the NULL values with the first NON NULL Value.

	NULLIF()	-------->	It returns NULL if both the expressions are true.
*/
---------------------------------------------------------------Solved Examples-----------------------------------------------------------------------------------------------------
---1.	Display employees whose salary is NULL
SELECT * FROM Employees WHERE salary IS NULL
---2.	Display employees whose salary is NOT NULL
SELECT * FROM Employees WHERE salary IS NOT NULL
---3.	Display employees whose department is NULL
SELECT * FROM Employees WHERE department IS NULL
---4.	Replace NULL salary with 0 using COALESCE()
SELECT *,COALESCE(salary,0) AS new_salary FROM Employees
---5.	Replace NULL department with 'Not Assigned'
SELECT *,COALESCE(department,'Not Assigned') as new_department FROM Employees
SELECT *,ISNULL(department,'Not Assigned') as new_department FROM Employees
---6.   Avoid division by zero
SELECT (10/0) as res
-------------To avoid Divide by zero error-------------
SELECT NULLIF(0,0)
SELECT (10/NULLIF(0,0)) as res
---7.	Replace zero salary with NULL
SELECT emp_name,salary,NULLIF(salary,0) as new_salary FROM Employees
---8. Compare two different values
SELECT NULLIF(100,150) AS res
---9.	Convert 0 into NULL
SELECT NULLIF(0,0) as res
----------------------------------------------------------Coding interview questions-----------------------------------------------------------------------------------------------
---1.	Display all employees whose salary is NULL
SELECT * FROM Employees WHERE salary IS NULL
---2.	Display all employees whose salary is NOT NULL
SELECT * FROM Employees WHERE salary IS NOT NULL
---3.	Display employees whose department is NULL
SELECT * FROM Employees WHERE department IS NULL
---4.	Display employees whose city is NULL
SELECT * FROM Employees WHERE city IS NULL
---5.	Display employees whose salary and department are both NULL
SELECT * FROM Employees WHERE salary IS NULL AND department IS NULL
---6.	Display employees whose salary or department is NULL
SELECT * FROM Employees WHERE (salary IS NULL) OR (department IS NULL)
---7.	Display employee names and replace NULL salaries with 0 using COALESCE()
SELECT emp_name,salary, COALESCE(salary,0) as new_salary FROM Employees
---8.	Display employee names and replace NULL departments with 'Unassigned'
SELECT emp_name,department,ISNULL(department,'Unassigned') as new_department FROM Employees
---9.	Display employees whose salary is NOT NULL and city is NOT NULL
SELECT * FROM Employees WHERE (salary IS NOT NULL) AND (city IS NOT NULL)
---10.	Display all employee records after replacing NULL salary with 0, NULL department with 'Not Assigned', and NULL city with 'Unknown'
SELECT emp_name,salary,ISNULL(salary,0) as new_salary,department,COALESCE(department,'Not Assigned') as new_department,ISNULL(city, 'Unknown') as new_city FROM Employees
---11.	Write a query to convert salary 0 into NULL
SELECT emp_name,salary,NULLIF(salary,0) as new_salary FROM Employees
---12.	Display employee name and salary, converting salary 0
SELECT emp_name,salary,NULLIF(salary,0) as new_salary FROM Employees
---13.	Write a query to compare salary with 50000
SELECT emp_name,salary,NULLIF(salary,50000) as new_salary FROM Employees ORDER BY salary
---14.	Write a query to calculate salary divided by commission while avoiding division by zero
SELECT emp_name,salary,(salary/NULLIF(0,0)) AS new_salary FROM Employees ORDER BY salary
---15.	A company stores employee performance ratings. Some employees have rating 0, which represents missing data. Write a query to convert rating 0 into NULL using NULLIF()
SELECT *,0 as Ratings,NULLIF(0,0) as new_Ratings FROM Employees ORDER BY salary
--------------------------------------------Analytical Scenario Based Questions----------------------------------------------------------------------------------------
---1.	
/*
A company maintains employee salary information in an SQL database. Due to incomplete HR records, some employees have NULL salaries.

The HR department wants to identify incomplete salary records before generating the monthly payroll report.

-Identify employees whose salary information is missing.
-Count the total number of employees with NULL salaries.
-Calculate the total number of employees with available salaries.
-Display employee names and replace NULL salaries with 0.
-Calculate the percentage of employees whose salary information is missing.
*/
--- Identify employees whose salary information is missing
SELECT * FROM Employees WHERE salary IS NULL
--- Count the total number of employees with NULL salaries.
SELECT COUNT(1) AS Total_employees FROM Employees WHERE salary IS NULL
---	Calculate the total number of employees with available salaries
SELECT COUNT(1) AS Total_employees FROM Employees WHERE salary IS NOT NULL
--- Display employee names and replace NULL salaries with 0
SELECT emp_name,salary,COALESCE(salary,0) AS new_salary FROM Employees
--- Calculate the percentage of employees whose salary information is missing
SELECT 
SUM(CASE WHEN salary IS NULL THEN 1 ELSE 0 END) AS Missing_salary,
COUNT(1) AS Total_salary,
CONVERT(DECIMAL(10,2),SUM(CASE WHEN salary IS NULL THEN 1 ELSE 0 END)*100.0)/NULLIF(COUNT(1),0) as missing_salary_perc
FROM Employees 