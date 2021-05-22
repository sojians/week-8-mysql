-- 1. I want to know how many employees with each title were born after 1965-01-01.

select count(*) as 'Employees born after 1965-01-01', t.title as Title
from employees e 
inner join titles t on e.emp_no = t.emp_no 
where e.birth_date > '1965-01-01'
group by t.title;

-- 2. I want to know the average salary per title.

select format(avg(s.salary), 2) as 'Average Salary', t.title as Title
from salaries s
inner join titles t on s.emp_no = t.emp_no
group by t.title;

-- 3. How much money was spent on salary for the marketing department between the years 1990 and 1992?

select sum(s.salary), d.dept_name
from salaries s
inner join dept_emp de on s.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no
where year(s.from_date) >= 1990 and year(s.to_date) <= 1992
and d.dept_name = 'Marketing';

select dept_name
from departments d;

s.from_date < 1990 and s.to_date < 1990 or s.from_date > 1992 and s.to_date > 1992

select from_date, to_date 
from titles;