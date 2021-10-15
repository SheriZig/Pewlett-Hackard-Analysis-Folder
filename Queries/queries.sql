--Retirement Eligibillity
SELECT	first_name, last_name
FROM employees
where (birth_date between '1952-01-01' and '1955-12-31')
AND (hire_date between '1985-01-01' and '1988-12-31');

--Count employees retirement eligible
SELECT count(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' and '1955-12-31')
AND (hire_date between '1985-01-01' and '1988-12-31');

--Export list of employees retirement eligible 
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Table with list of retiree names
SELECT * 
FROM retirement_info;