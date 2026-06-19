Select * 
from 
cricket_score

---I want to give a unique sequential numbers for each row
================================================================================================
WITH t1 as
(Select *,Row_number() Over(Order By runs DESC) as rn
From cricket_score)
	
Select *
from t1
Where rn=3
-----------------------------------------------------------------------------------------
	
Select *
from 
	(Select *,Row_number() Over(Order By runs DESC) as rn
	From cricket_score) as t1
Where rn=3



t1
player_name		team	match_date		score	rn








--I want who is at 3rd place
--CTE 

WITH ranked as
(Select *,Row_number() Over(Order By runs DESC) as rn
From cricket_score) --inner query
Select * 
from ranked --outer query
Where rn=3

t1
c1 c2 c3




(Select *,Row_number() Over(Order By runs DESC) as rn
From cricket_score)

--RowNumber()
(Select *,Row_number() Over(Order By runs DESC) as rn
From cricket_score)

--Numbering reatart per team

Select *,Row_number() Over(Partition by team Order By runs DESC) as rn,
		Rank() Over(Partition by team Order By runs DESC) as rank,
		Dense_Rank() Over(Partition by team Order By runs DESC) as denserank			
From cricket_score

---I want 2nd higest scorer in each team
============================================================================================================
Select * 
FROM
	(Select * ,dense_rank() Over(partition by team Order by runs DESC) as d_rank
	From cricket_score) as t1
Where d_rank=2
===========================================================================================================
WITH t1 as
	(Select * ,dense_rank() Over(partition by team Order by runs DESC) as d_rank
	From cricket_score)
Select * from t1
Where d_rank=2
==========================================================================================================
----find top 2 players per team
Select * from cricket_score
WITH t2 as
(Select *,row_number() over(partition by team order by runs Desc) as rn
From cricket_score)

Select * from t2
where rn <=2
===========================================================================================================
----find latest match played by each player
--Return only latest match record for every player 

============================================================================================================
---Generate a jersey numbers team-wise
select player_name,team, Row_Number() over(partition by team order by player_name ) as jersey_number
From cricket_score
















(Select *,Rank() Over(Partition by team Order By runs DESC) as rank
From cricket_score)

(Select *,Dense_Rank() Over(Partition by team Order By runs DESC) as dense_rank
From cricket_score)

Select team ,max(runs)
From cricket_score
Group By team
























--Rank
--Dense_rank
--Lag
--Lead