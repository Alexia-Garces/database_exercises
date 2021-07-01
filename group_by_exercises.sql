-- SQL GROUP BY EXERCISES

-- 2.  In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file. 
USE employees;

SELECT DISTINCT
	title
FROM titles;

-- 3. Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY. The query returned 5 records.

SELECT last_name
FROM employees
WHERE last_name LIKE "e%e"
GROUP BY last_name;

-- 4. Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'. 
-- The query returned 846 rows.

SELECT 
	first_name,
	last_name
FROM employees
WHERE last_name LIKE "e%e"
GROUP BY first_name, last_name;

-- 5. Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code. 
SELECT 
	last_name
FROM employees
WHERE last_name LIKE "%q%" and last_name NOT LIKE "%qu%"
GROUP BY last_name;
	
-- Records returned by query: Chleq, Lindqvist, Qiwen

-- 6. Add a COUNT() to your results (the query above) to find the number of employees with the same last name.

SELECT
	last_name,
	COUNT(last_name) AS count_of_names
FROM employees
WHERE last_name LIKE '%q%' 
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

-- 7. Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names. 

SELECT
	gender,
	COUNT(first_name) AS number_of_employees,
	first_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya')
GROUP BY gender, first_name
ORDER BY first_name;

-- 8. Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? 
SELECT CONCAT
	(
	SUBSTR(LOWER(first_name),1,1),
	SUBSTR(LOWER(last_name),1,4),
	"_",
	DATE_FORMAT((birth_date),'%m'),
	DATE_FORMAT((birth_date),'%y')
	) AS username,
 COUNT('username') as count
FROM employees
GROUP BY username
ORDER BY count desc;
-- BONUS: How many duplicate usernames are there?
SELECT CONCAT
	(
	SUBSTR(LOWER(first_name),1,1),
	SUBSTR(LOWER(last_name),1,4),
	"_",
	DATE_FORMAT((birth_date),'%m'),
	DATE_FORMAT((birth_date),'%y')
	) AS username,
 COUNT('username') as count
FROM employees
GROUP BY username
HAVING count>1;