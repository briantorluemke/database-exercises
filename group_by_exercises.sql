use employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e'
GROUP BY last_name;

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name ASC;

SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name ASC;

SELECT gender, COUNT(*)
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
GROUP BY gender
ORDER BY gender;