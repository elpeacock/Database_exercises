-- Update your query for 'Irena', 'Vidya', or 'Maya'. 
-- Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT gender, COUNT(*) 
FROM employees 
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
GROUP BY gender;  

-- Update your queries for employees whose names start and end with 'E'. 
-- Use concat() to combine their first and last name together as a single column in your results.
SELECT concat(first_name, ' ', last_name) as 'full_name'
FROM employees 
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no;

SELECT concat(first_name, ' ', last_name) as 'full name'
FROM employees 
WHERE last_name LIKE 'e%e'
ORDER BY emp_no;

-- For your query of employees born on Christmas and 
-- hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT concat(first_name, ' ', last_name) as 'full name', datediff(NOW(), hire_date) as 'time at company'
FROM employees 
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

-- Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination 
-- of first and last names. You will find there were some duplicate first and last name pairs 
-- in your previous results. Add a count() to your results and use ORDER BY to make it easier to find 
-- employees whose unusual name is shared with others.
SELECT first_name, last_name, count(*) 
FROM employees 
WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%'
GROUP BY first_name, last_name
ORDER BY count(last_name) DESC;


