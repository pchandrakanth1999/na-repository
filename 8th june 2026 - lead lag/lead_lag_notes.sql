CREATE TABLE cricket_scores (
player VARCHAR(30),
team VARCHAR(20),
match_date DATE,
runs INT
);

INSERT INTO cricket_scores VALUES
('Virat','India','2024-01-01',85),
('Rohit','India','2024-01-01',70),
('Gill','India','2024-01-01',85),
('Rahul','India','2024-01-01',45),
('Hardik','India','2024-01-01',60),

('Warner','Australia','2024-01-02',60),
('Smith','Australia','2024-01-02',95),
('Head','Australia','2024-01-02',80),
('Maxwell','Australia','2024-01-02',45),
('Labuschagne','Australia','2024-01-02',75),

('Virat','India','2024-01-10',110),
('Rohit','India','2024-01-10',40),
('Gill','India','2024-01-10',92),
('Rahul','India','2024-01-10',65),
('Hardik','India','2024-01-10',30),

('Warner','Australia','2024-01-12',88),
('Smith','Australia','2024-01-12',55),
('Head','Australia','2024-01-12',102),
('Maxwell','Australia','2024-01-12',67),
('Labuschagne','Australia','2024-01-12',67),

('Babar','Pakistan','2024-01-15',95),
('Rizwan','Pakistan','2024-01-15',82),
('Afridi','Pakistan','2024-01-15',25),
('Imam','Pakistan','2024-01-15',95),
('Shadab','Pakistan','2024-01-15',40),

('Babar','Pakistan','2024-01-25',70),
('Rizwan','Pakistan','2024-01-25',105),
('Afridi','Pakistan','2024-01-25',15),
('Imam','Pakistan','2024-01-25',55),
('Shadab','Pakistan','2024-01-25',62);

Select * from cricket_scores

====================================================================================================
--Row_Number()-it create a column and assign sequential values
--Rank-----
---dense_rank()
==================================================================================================
--Lag()
--show current match score and previous match score for every player
70		null
110		70
======================================================================================
--show current match score and previous match score for every player
Select player,match_date,runs,
		LAG(runs) OVER(Partition By player Order BY  match_date) as previous_runs
FROM cricket_scores
================================================================================
--show current match score and next match score for every player
Select player,match_date,runs,
		LEAD(runs) OVER(Partition By player Order BY  match_date) as next_match_runs
FROM cricket_scores
==================================================================================
--find how much runs increased or decreased compared to previous innigs of particular player
Select player,match_date,runs,
		runs-LAG(runs) OVER(Partition By player Order BY  match_date) as improvement
FROM cricket_scores
=====================================================================================
--Find matches where players scored better than previuos match

WITH t1 as
(Select player,match_date,runs,
		LAG(runs) OVER(Partition By player Order BY  match_date) as previous_runs
From cricket_scores
)
Select * from t1
Where runs>previous_runs
====================================================================================
--show current match score and previous match score for every player
Select player,match_date,runs,
		LAG(runs,2) OVER(Partition By player Order BY  match_date) as previous_runs
FROM cricket_scores

=====================================================================================================
--DDL
--DML
--DQl
	--Select
	--Where
	--group by
	--having
	-- Aggregate function
	-- limit 
	-- offset
	-- window function-over, partition by,rownumber,rank,dense rank,lead lag
	--CASE
	--Subqueries,CTEs
	--Distnct
	--String functions
	--Date functions
	--Execution order
	--joins
	
	
	



















