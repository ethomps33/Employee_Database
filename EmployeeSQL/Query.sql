
--#1 Used INNER JOIN on employee and salaries tables ON emp_no column and created aliases
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary FROM employees e
INNER JOIN salaries s
ON e.emp_no=s.emp_no;

--#2 Selected the columns from employees table to return only rows w/ hire date of 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986'

--#3 Created a table dept_all by INNER JOINING department and 
--dept_manager tables and created aliases
 and SELECT d.dept_no,d.dept_name,man.emp_no
INTO TABLE dept_all
FROM department d
INNER JOIN dept_manager man
ON d.dept_no=man.dept_no;
-- Created new table employee names by INNER JOIN employees and 
--dept_manager and created aliases
SELECT e.last_name, e.first_name, e.emp_no
INTO TABLE employee_names
FROM employees e
INNER JOIN dept_manager man
ON e.emp_no=man.emp_no ;
-- Preformed INNER JOIN on employee_names and dept_all tables to show rows need
SELECT da.dept_no,da.dept_name,da.emp_no, en.last_name, en.first_name  FROM dept_all da
INNER JOIN employee_names en
ON en.emp_no=da.emp_no ;

--#4 Created new table dept_emp_all and INNER JOIN on department table
SELECT d.dept_name,de.emp_no
INTO TABLE dept_emp_all
FROM department d
INNER JOIN dept_emp de
ON d.dept_no=de.dept_no;
--Created a new table emp_dept to use later and INNER JOIN on 
--employee_names table to get intended return
SELECT en.emp_no,en.last_name,en.first_name,dea.dept_name
INTO TABLE emp_dept
FROM employee_names en
INNER JOIN dept_emp_all dea
ON en.emp_no=dea.emp_no

--5 Used WHERE, AND, LIKE to show employees with name Hercules B.
SELECT first_name, last_name, sex FROM employees
WHERE first_name='Hercules'
AND last_name like 'B%'

--6 Used WHERE to find employees in Sales
SELECT * FROM emp_dept
WHERE dept_name='Sales'

--7 Used WHERE to find employees in Sales or Development
SELECT * FROM emp_dept
WHERE dept_name='Sales'
OR dept_name='Development'

--8 Used COUNT and GROUP BY to count how many employees shared the same last name
-- Used ORDER BY to put in descending order by the count
SELECT count(last_name) AS number_of_employees, last_name FROM employees
GROUP BY last_name
ORDER BY number_of_employees DESC

--Epilogue Selected the row with the employee number
SELECT * FROM employees
WHERE emp_no=499942
