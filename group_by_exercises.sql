SELECT DISTINCT title
FROM titles
ORDER BY title;

SELECT * FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;

SELECT * FROM employees 
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' 
GROUP BY last_name;