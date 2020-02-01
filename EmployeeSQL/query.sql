-- Queries

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;

-- List employees who were hired in 1986.
SELECT * FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager dm
  INNER JOIN departments d ON dm.dept_no = d.dept_no
  	INNER JOIN employees e ON dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: employee number, last name,
-- first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
  INNER JOIN dept_emp de ON e.emp_no = de.emp_no
  	INNER JOIN departments d ON de.dept_no = d.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
