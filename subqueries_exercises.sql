use employees;

SELECT CONCAT(first_name, ' ', last_name) 'Full Name', hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = '101010'
);

SELECT CONCAT(first_name, ' ', last_name) 'Full Name', title
FROM employees e
  JOIN titles t ON e.emp_no = t.emp_no
WHERE first_name IN (
  SELECT first_name
  FROM employees
  WHERE first_name = 'Aamod'
);