-- Exercise Goals
-- * Use CASE statements or IF() function to explore information in the employees database
-- 1. Write a query that returns all employees (emp_no), their department number, their start date, their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not. 
SELECT *,
	CASE 
		WHEN to_date < curdate() THEN 0
		ELSE 1
		END AS is_current_employee
FROM dept_emp;

-- 2. Write a query that returns all employee names (previous and current), and a new column 'alpha_group' that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name. 
SELECT first_name, last_name,
	CASE
	WHEN substring(last_name,1,1) >= 'a' and substring(last_name,1,1) <= 'h' then 'A-H'
	WHEN substring(last_name,1,1) >= 'i' and substring(last_name,1,1) <= 'q' then 'I-Q'
	ELSE 'R-Z'
	END AS alpha_group
FROM employees
ORDER BY alpha_group;

-- 3. How many employees (current or previous) were born in each decade?
SELECT
	CASE
		WHEN birth_date LIKE '195%' THEN '1950s'
		WHEN birth_date LIKE '196%' THEN '1960s'
		ELSE 'other'
	END AS decade_born,
	COUNT(*) AS number_of_employees_born_in_decade
FROM employees
GROUP BY decade_born;

-- BONUS
-- 1. What is the current average salary for each of the following department groups: R&D, Sales & Marketing, Prod & QM, Finance & HR, Customer Service? 
