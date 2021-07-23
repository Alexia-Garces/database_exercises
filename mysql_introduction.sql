-- Tables Exercises - SQL

-- 3.  Use the employees database

USE employees;

-- 4.  List all the tables in the database

-- The employees database contains the following tables:  current_dept_emp, departments, dept_employees, dept_manager, employees, salaries, and titles.

-- 5.  Explore the employees table. What different data types are present on this table?

DESCRIBE employees;

-- The employee table containse integer, date, varchar, and enum data types

-- 6.  Which table(s) do you think contain a numeric type column?

-- I think the salaries table and the tables with the emp_no. If dates are considered numeric, then all tables except departments have numeric columns.

-- 7.  Which table(s) do you think contain a string type column?
-- String columns can be found on the employees, titlees, and departments table

-- 8. Which table(s) do you think contain a date type column?
-- all tables except the departments table have dates.

-- 9. What is the relationship between the employees and the departments tables?

-- These two tables do not have any columns in common.

-- 10.  Show the SQL that created the dept_manager table.

DESCRIBE dept_manager;

