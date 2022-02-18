-- Not Retirement eligibility
SELECT DISTINCT ON (e.emp_no) e.first_name, e.last_name, e.emp_no, d.dept_name, de.to_date
INTO not_retirement_eligible
FROM employees as e
JOIN dept_emp as de
on (e.emp_no = de.emp_no)
JOIN departments as d
on (de.dept_no = d.dept_no)
WHERE (e.birth_date NOT BETWEEN '1952-01-01' AND '1955-12-31')
AND (e.hire_date NOT BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no DESC;

SELECT * FROM not_retirement_eligible

SELECT COUNT(ne.emp_no), ti.title
into ineligible_dep_count
FROM not_retirement_eligible as ne
JOIN titles as ti
on (ne.emp_no = ti.emp_no)
GROUP BY ti.title
ORDER by ne.count DESC;

SELECT * FROM ineligible_dep_count