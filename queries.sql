-- Retrieve unsuccessful login attempts that occurred after 18:00.

SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = FALSE;

-- Retrieve login attempts that occurred on May 8 or May 9, 2022.

SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-08'
OR login_date = '2022-05-09';

-- Retrieve login attempts from locations that do not begin with MEX.

SELECT *
FROM log_in_attempts
WHERE location NOT LIKE 'MEX%';

-- Retrieve employee records from the Marketing department.

SELECT *
FROM employees
WHERE department = 'Marketing';

-- Retrieve employee records from the Finance or Sales departments.

SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';

-- Retrieve employee records from all departments except Information Technology.

SELECT *
FROM employees
WHERE department <> 'Information Technology';
