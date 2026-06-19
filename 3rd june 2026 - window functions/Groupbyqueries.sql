Select * --2
from employee_data--1

--How many employees are here in each department?
IT-10
Finace-12

Select count(*)
From employee_data

Select Distinct department
from employee_data

Select department,count(emp_id)--3
from employee_data --1
group by department --2

Select department,count(*)
from employee_data --1
Where city ='Hyderabad'--2
Group by department


--1.Every selected column should either be
--1.inside group by clause
      or
--2.use aggregate function


-- count
-- sum
-- avg
-- min
-- max
--I want to know highest salary of each department, keep in desc order

Select department,max(salary) as max_salary
FROM employee_data
GROUP BY department
ORDER BY max_salary DESC

--show me only departments having more than 6 employees
Select department,count(emp_id)
FROM employee_data
Group BY department
HAVING count(emp_id)>6

--show me only departments having more than 2 employees in hyderabad

Select department,count(*) as cnt--5
from employee_data --1
Where city ='Hyderabad'--2
Group by department--3
Having count(*)=1--4
Order by cnt--6
LIMIT


-- Execution order
-- From
-- where
-- Group by
-- Having
-- Select
-- Order by
-- OFFSET
-- LIMIT







Select department,count(emp_id) as cnt--4
FROM employee_data--1
WHERE count(emp_id) --2
Group BY department--3

Select emp_id,salary
From employee_data
Where 



--Having 
IT-6 
FINACE-5
Sales-10
HR-22

--I want to classify the employess in different catogeries based on their salary
salary>80k--->high range
80k<salary>50k--->medium range
salary<50k--->low range


if sal>80k then=high range
else

Case WHEN===>if else logic in sql

Select emp_id,salary,
		CASE
			WHEN salary>80000 THEN 'high'
			WHEN Salary  between 50000 AND 80000 THEN 'Medium'
			WHEN salary IS NULL THEN 'Not specified'
			ELSE 'LOW'
		END as salary_catagery
FROM employee_data



Insert emp_id,salary,
		CASE
			WHEN salary>80000 THEN 'high'
			WHEN Salary  between 50000 AND 80000 THEN 'Medium'
			WHEN salary IS NULL THEN 'Not specified'
			ELSE 'LOW'
		END as salary_catagery
FROM employee_data

Select * from employee_data

--Date functions:

--I want to create a column on which year the employee has joined 

Select emp_id,EXTRACT(Year FROM last_login) as Date_of_joining
From employee_data


Select current_date

--STRING Methods:

Select first_name,lower(first_name) as upper_Case
FROM employee_data

Select first_name,length(first_name) as char_count
FROM employee_data



--email--based on first name and email should be @cc.com
Select
first_name,CONCAT(first_name,'@cc.com') as new_email
From employee_data



--substring





