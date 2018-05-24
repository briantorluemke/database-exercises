use employees;

SELECT *
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name ASC, first_name ASC;

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE hire_date LIKE '199%';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';


# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single
# column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS 'fullName', emp_no
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e';


SELECT DATEDIFF(CURDATE(), hire_date) AS 'daysWorked',
  CONCAT(first_name, ' ', last_name) AS 'fullName'
FROM employees
WHERE  hire_date BETWEEN '1990-01-01' AND '1999-12-31'
       AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;