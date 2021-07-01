-- 1. Create a file named where_exercises.sql. Make sure to use the employees database. 
USE employees;
DESCRIBE employees;

-- 2. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. This query returned 709 records.

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'VIDYA', 'Maya');

-- 3. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. This query returned 709 records and matches Q2. 

SELECT *
FROM employees
WHERE first_name = 'Irena'
	OR first_name = 'VIDYA'
	OR first_name = 'Maya'; 
	
-- 4. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. This query returned 441 records.

SELECT *
FROM employees
WHERE first_name = 'Irena' AND gender = 'M'
	OR first_name = 'VIDYA' AND gender = 'M'
	OR first_name = 'Maya' AND gender = 'M';
	
-- 5.  Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.  This query returned 5731 records.

SELECT *
FROM employees
WHERE last_name LIKE 'n%';

-- 6.  Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?
SELECT *
FROM employees
WHERE last_name LIKE '%e' or 'e%'
ORDER BY last_name;
-- 24292 employees names start or end with the letter e.

SELECT *
FROM employees
WHERE last_name LIKE '%e' AND last_name NOT LIKE 'e%'
ORDER BY last_name;

-- 23393 employees end with the letter e but do not stert with the letter E.nter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          