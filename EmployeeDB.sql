Departments
-
dept_no int pk FK >- Dept_Emp.dep_no
dept_name varchar

Employees
-
emp_no init pk FK >- Salaries.emp_no
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date

Dept_Managers 
-
dept_no varchar pk fk - Departments.dept_no
emp_no int fk - Employees.emp_no
from_date date
to_date date

Dept_Emp
-
emp_no int pk FK >- Salaries.emp_no
dep_no int pk FK >- Dept_Managers.dept_no
from_date date
to_date date

Salaries
-
emp_no int pk
salary int
from_date date
to_date date

Titles
-
emp_no pk int fk - Employees.emp_no
title varchar
from_date date
to_date date