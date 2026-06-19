select * from employee_data

1. Count employees department-wise
select department,count(*)
from employee_data 
group by department

2. Count employees city-wise
select city,count(*) 
from employee_data 
group by city

3. Find average salary by department
select department,avg(salary) as avg_salary 
from employee_data 
group by department

4. Find maximum salary in each department
select department,max(salary) as max_salary
from employee_data
group by department

5. Find employees joined after '2023-01-01'
select first_name, join_date
from employee_data
where join_date > date '2023-01-01'

6. Extract joining year from join_date
Select first_name,EXTRACT(Year FROM join_date) as only_join_year
From employee_data


7. Create email using emp_id+firstname + '@cc.com'
select first_name, concat(emp_id,first_name,'@cc.com')
from employee_data

8. Create salary category using CASE:
   salary > 100000 → High
   salary between 50000 and 100000 → Medium
   otherwise → Low
 select first_name,salary,
 case 
 when salary > 100000 then 'high'
 when salary between 500000 and 100000 then 'medium'
 else 'low'
 end as salary_category
 from employee_data

9. Find departments having more than 4 employees
select department,count(*)
from employee_data
group by department
having count(*) > 4

10. Find cities where average salary > 60000
select city, avg(salary) as avg_sal
from employee_data
--where salary > 60000
group by city
having avg(salary) > 60000

11. Replace NULL salary with 0 using SQL


12. Create employee code:
    first 3 letters of first_name + emp_id
	

13. Find cities having more than 3 employees excluding NULL cities

14. Find employees joined in year 2024

15. Find employee count and average salary together department-wise
select department,count(*), avg(salary)
from employee_data
group by department

16. Create age buckets using CASE:
    <30 → Young
    30–40 → Mid
    > 40 → Senior
select first_name, age,
case
when age > 40 then 'senior'
when age between 30 and 40 then 'mid'
else 'young'
end as level_of_emp
from employee_data

17. Extract domain from email column
select first_name,email,
substring(email from position ('@' in email) +1) as domain
from employee_data

select first_name,email,
substring(email, 1,position('@' in email) -1) as domain
from employee_data

18. Find departments whose average salary is greater than overall average salary
select department, avg(salary) as top_avg_salary
from employee_data
group by department
having max(salary) > (select avg(salary) from employee_data)

select * from employee_data
19. Create username:
    first 3 letters of first_name + joining year
select first_name, concat(substring(first_name, 1,3) ,join_date) as user_name
from employee_data

20. Find department-wise:
    employee count
    max salary
    min salary
    avg salary
select department, count(*), max(salary), min(salary),avg(salary)
from employee_data
group by department


