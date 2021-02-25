
--#1
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary FROM employees e
INNER JOIN salaries s
ON e.emp_no=s.emp_no;
--#2
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986'
--#3
SELECT d.dept_no,d.dept_name,man.emp_no
INTO TABLE dept_all
FROM department d
INNER JOIN dept_manager man
ON d.dept_no=man.dept_no;

SELECT * FROM employees

SELECT e.last_name, e.first_name, e.emp_no
INTO TABLE employee_names
FROM employees e
INNER JOIN dept_manager man
ON e.emp_no=man.emp_no ;

SELECT da.dept_no,da.dept_name,da.emp_no, en.last_name, en.first_name  FROM dept_all da
INNER JOIN employee_names en
ON en.emp_no=da.emp_no ;

--#4
SELECT d.dept_name,de.emp_no
INTO TABLE dept_emp_all
FROM department d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no;
SELECT * FROM dept_emp_all

SELECT en.emp_no,en.last_name,en.first_name,dea.dept_name
INTO TABLE emp_dept
FROM employee_names en
INNER JOIN dept_emp_all dea
ON en.emp_no=dea.emp_no

--5
SELECT first_name, last_name, sex FROM employees
WHERE first_name='Hercules'
AND last_name like 'B%'

--6
SELECT * FROM emp_dept
WHERE dept_name='Sales'

--7
SELECT * FROM emp_dept
WHERE dept_name='Sales'
OR dept_name='Development'

--8
SELECT count(last_name) AS number_of_employees, last_name FROM employees
GROUP BY last_name
ORDER BY number_of_employees DESC

SELECT * FROM salaries
--Epilogue
SELECT * FROM employees
WHERE emp_no=499942
