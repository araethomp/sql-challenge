--List the following details of each employee: 
--employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON (e.emp_no = s.emp_no);


--List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name

SELECT e.first_name, e.last_name, dm.dept_no, dm.emp_no, dpt.dept_name
FROM employees AS e
JOIN dept_manager AS dm
ON (e.emp_no = dm.emp_no)
JOIN departments AS dpt
ON (dpt.dept_no = dm.dept_no);


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT e.first_name, e.last_name, de.emp_no, dpt.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN departments AS dpt
ON (de.dept_no = dpt.dept_no);


--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_no = 'd007';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT e.first_name, e.last_name, e.emp_no, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
JOIN departments AS d 
ON (de.dept_no = d.dept_no)
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005'
;


--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name)  
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;





