DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE dept_emp;
DESCRIBE titles;
DESCRIBE salaries;

/* Query to show department and the name of the current manager for the department */

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Deparment Manager'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate();

/*find the name of all departments currently managed by women*/
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Deparment Manager'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate()  
  AND e.gender = 'F'; 

/*find the current titles of employees currently working in the Customer Service department*/

SELECT t.title AS 'Title', count(*) AS 'Count'
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no 
JOIN titles AS t
  ON t.emp_no = e.emp_no 
JOIN departments AS d
  ON d.dept_no = de.dept_no 
WHERE d.dept_name = 'Customer Service' 
  AND t.to_date > curdate() 
  AND de.to_date > curdate()
GROUP BY t.title;

/*find the current salary of all current managers*/

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Deparment Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN salaries AS s
  ON s.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate() 
  AND s.to_date > curdate();

/*bonus - find the names of all the current employees, their department, and their current manager's name*/

SELECT concat(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', concat(dme.first_name, ' ', dme.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
  ON d.dept_no = dm.dept_no
JOIN employees AS dme
  ON dme.emp_no = dm.emp_no
WHERE dm.to_date > curdate()
  AND de.to_date > curdate();
  

