--List the employeed number, last name, first name, sex, and salary of each employee.
--Join employee table and salaries table on emp_no.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
on e.emp_no = s.emp_no
ORDER BY emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' and '12/31/1986'
ORDER BY hire_date;

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
--Join dept_managers and employees tables on emp_no.
--Join dept_managers and departments tables on emp_no.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name 
FROM dept_managers as m
JOIN employees as e
ON m.emp_no = e.emp_no
JOIN departments as d
ON m.dept_no = d.dept_no;


--List the department number for each employee along with that employee's employee number, last name, first name, and department name. 
--Join employess and dept_emp tables on emp_no.
--Join dept_emp and departments tables on dept_no.
SELECT d.dept_no, e.emp_no, , e.last_name, e.first_name, d.dept_name
FROM employee as e
JOIN dept_employees 
ON e.emp_no = dept_employees.emp_no
JOIN departments as d
ON dept_employees.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
--Join employees table and dept_employess table on emp_no.
SELECT e.emp_no, e.last_name, e.first_name
FROM employee as e
JOIN dept_employees
ON e.emp_no = dept_employees.emp_no
WHERE dept_no = 'd007';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--Join employees table and dept_employees table on emp_no.
--Join dept_employees table to departments table on dept_name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee as e
JOIN dept_employees
ON e.emp_no = dept_employees.emp_no
JOIN departments as d
ON dept_employees.dept_no = d.dept_no
WHERE dept_name = 'Sales' and dept_name = 'Development'
ORDER BY dept_name;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) as "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESCENDING;

