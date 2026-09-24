# SQL Security Investigation

## Project Overview

In this project, I used SQL to query a database and gather information about login attempts and employee data. I used different filtering conditions to narrow the results and identify information relevant to specific security-related questions and requests.

## Scenario

In this scenario, there were failed login attempts after business hours. I used SQL to extract the data that matched these failed login attempts so the activity could be further investigated. I also used SQL to efficiently search the database and review login records from specific dates and locations that needed to be investigated. Filtering the database allowed me to identify activity from unexpected locations that could require further investigation. I also searched employee records by department and used filters to fine-tune the results and focus on information relevant to the investigation.

## Skills Demonstrated

- Used `SELECT` statements to retrieve data from database tables.
- Used `WHERE` clauses to filter records based on specific conditions.
- Used `AND` and `OR` operators to combine multiple filtering conditions.
- Used `NOT LIKE` and the `%` wildcard to filter data based on patterns.
- Used the `<>` operator to exclude records that matched a specific value.
- Applied SQL filtering techniques to analyze login activity and employee data during a security investigation.

## SQL Investigation

### 1. Failed Login Attempts After Business Hours

I used this query to retrieve all columns for login attempts that occurred after 18:00 and were unsuccessful. This helped narrow the results to failed login activity that occurred after business hours and could require further investigation.

```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = FALSE;
```

### 2. Login Activity on Specific Dates

I used this query to retrieve login attempt records from the `log_in_attempts` table that occurred on either May 8, 2022, or May 9, 2022. This allowed me to focus on login activity from the specific dates relevant to the investigation.

```sql
SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-08'
OR login_date = '2022-05-09';
```

### 3. Login Attempts Outside Mexico

I used this query to retrieve login attempt records from the `log_in_attempts` table where the location did not begin with `MEX`. This allowed me to exclude login activity from Mexico and focus on activity from other locations.

```sql
SELECT *
FROM log_in_attempts
WHERE location NOT LIKE 'MEX%';
```

### 4. Marketing Department Employees

I used this query to retrieve employee records from the `employees` table where the department was Marketing. This allowed me to narrow the results to employees in a specific department.

```sql
SELECT *
FROM employees
WHERE department = 'Marketing';
```

### 5. Finance or Sales Department Employees

I used this query to retrieve employee records from the `employees` table where the department was either Finance or Sales. I used the `OR` operator because an employee only needed to belong to one of the two departments to be included in the results.

```sql
SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';
```

### 6. Employees Outside Information Technology

I used this query to retrieve employee records from the `employees` table where the department was not Information Technology. The `<>` operator excluded employees who belonged to the Information Technology department.

```sql
SELECT *
FROM employees
WHERE department <> 'Information Technology';
```

## Security Relevance

Being able to quickly filter a large database can help during a security investigation by allowing me to retrieve relevant information in a timely manner. This can help identify activity that requires further investigation and provide the information needed to respond to potential security threats.

Instead of manually reviewing thousands of records, SQL filtering can retrieve the relevant data within seconds. This allows an analyst to focus on the information related to the investigation and respond more efficiently.

## Project Files

- `README.md` — Documentation of the investigation, SQL techniques used, and security relevance.
- `queries.sql` — SQL queries used to investigate login activity and filter employee data.

## Disclaimer

This project was completed as an educational cybersecurity exercise. The scenario and data are simulated and do not represent a real security incident.
