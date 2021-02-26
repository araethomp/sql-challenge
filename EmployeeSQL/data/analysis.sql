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





--List the department of each employee with the following information: employee number, last name, first name, and department name.


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
