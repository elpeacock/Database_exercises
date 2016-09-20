SELECT gender, COUNT(gender) 
FROM employees 
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
GROUP BY gender;  

SELECT concat(first_name, ' ', last_name)
FROM employees 
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no;

SELECT concat(first_name, ' ', last_name)
FROM employees 
WHERE last_name LIKE 'e%e'
ORDER BY emp_no;

SELECT concat(first_name, ' ', last_name), datediff(NOW(), hire_date)
FROM employees 
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT first_name, last_name, count(last_name) 
FROM employees 
WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%QU%'
GROUP BY first_name, last_name
ORDER BY count(last_name) DESC;


