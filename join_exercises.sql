use employees;

# dept name on departments

# SELECT d.dept_name 'Department Name', CONCAT(e.first_name, ' ',e.last_name) 'Department Manager'
# FROM departments as d
#   JOIN dept_manager as dm
#    ON dm.dept_no = d.dept_no
#   JOIN employees as e ON e.emp_no = dm.emp_no;

SELECT d.dept_name 'Department Name', CONCAT(e.first_name, ' ',e.last_name) 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm ON dm.emp_no = e.emp_no
  JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name 'Department Name', CONCAT(e.first_name, ' ',e.last_name) 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm ON dm.emp_no = e.emp_no
  JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT t.title, COUNT(*)
FROM employees as e
  JOIN titles t ON e.emp_no = t.emp_no
  JOIN dept_emp emp ON e.emp_no = emp.emp_no
  JOIN departments d ON emp.dept_no = d.dept_no
WHERE emp.dept_no = 'd009' AND t.to_date = '9999-01-01'
GROUP BY t.title;