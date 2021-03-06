--RETIREMENT TITLES
-- List of retirement employees and their titles
SELECT  e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date

INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE birth_date between '1952-01-01' and '1955-12-31'
ORDER BY emp_no;

--UNIQUE TITLES
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--RETIRING TITLES
--Number of employees by most recent job title about to retire
SELECT COUNT(emp_no) as count,title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count desc

--MENTORSHIP_ELIGIBILITY
--Current employees born 1965 
SELECT DISTINCT ON (emp_no)
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	e.birth_date,
	d.from_date,
	d.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees e
JOIN dept_emp d
ON e.emp_no = d.emp_no
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01' and 
e.birth_date between '1965-01-01' and '1965-12-31'
ORDER BY e.emp_no;
