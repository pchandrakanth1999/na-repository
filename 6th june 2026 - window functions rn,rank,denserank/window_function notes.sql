-- FUNCTION_NAME(column_name)
-- OVER(
--      PARTITION BY column
--      ORDER BY column
-- )

-- Function → What calculation?
-- PARTITION BY → Divide into groups/windows
-- ORDER BY → Arrange rows inside window

-- Function + OVER() = Window Function

-- | emp  | dept | salary |
-- | ---- | ---- | ------ |
-- | Ravi | IT   | 50000  |
-- | Sita | IT   | 60000  |
-- | Ram  | HR   | 40000  |
-- | John | HR   | 45000  |
-- | Devi | IT   | 70000  |


-- Aggregate functions:
-- SUM()
-- AVG()
-- MIN()
-- MAX()
-- COUNT()
-----------------------------------------------------------------------------
SELECT emp,
       department,
       salary,
       AVG(salary) OVER(PARTITION BY dept) AS dept_avg
FROM employee_data_data;
-------------------------------------------------------------------------------
Select department,AVG(salary)
FROM employee_data_data
Group by department
--------------------------------------------------------------


SELECT emp,
       department,
       salary,
       SUM(salary) OVER(PARTITION BY dept) AS total_salary
FROM employee_data;

SELECT emp,
       department,
       COUNT(*) OVER(PARTITION BY dept) AS emp_count
FROM employee_data;


SELECT emp,
       salary,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
FROM employee_data;








