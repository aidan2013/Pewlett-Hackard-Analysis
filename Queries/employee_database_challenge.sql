SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt

WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

-- retrieve the number of titles from the Unique Titles table.

SELECT COUNT(u.emp_no) , u.title
INTO retiring_titles
FROM unique_titles as u
GROUP BY u.title
ORDER BY u.count DESC;

-- write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program

SELECT DISTINCT ON (e.emp_no)e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees as e 
INNER JOIN dept_emp as de
on (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01'AND '1965-12-31')
ORDER BY e.emp_no;