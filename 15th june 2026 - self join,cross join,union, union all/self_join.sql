CREATE TABLE Self_employees (
    emp_id INT,
    emp_name VARCHAR(50),
    manager_id INT
);
INSERT INTO Self_employees VALUES
(1, 'Ravi', NULL),
(2, 'Suresh', 1),
(3, 'Priya', 1),
(4, 'Kiran', 2),
(5, 'Anu', 2),
(6, 'John', 3);

Select * from Self_employees

1		Ravi	null	
2		Suresh	

--Joining  table with iself
Select 
	t1.emp_name as empName,
	t2.emp_name as manager
FROM Self_employees t1
LEFT JOIN Self_employees t2
ON t1.manager_id=t2.emp_id


1	"Ravi"		null
2	"Suresh"	1
3	"Priya"		1
4	"Kiran"		2
5	"Anu"		2
6	"John"		3


1=1

2	"Suresh"	1		1	"Ravi"		null
3	"Priya"		1		1	"Ravi"		null
4	"Kiran"		2		2	"Suresh"	1



---cross join -reurns evry row from first table with every row from second table

create table subjects(subject_id int,subject_name varchar(50
));
insert into subjects values(101,'Maths'),(102,'English')

Select * from students
Select * from subjects

create table students(s_id int ,s_name varchar(50))

insert into students values(111,'Ravi'),(102,'Priya'),(103,'Raju')


Select *
FROM students s
CROSS JOIN subjects su
Cross JOIN Self_employees se

red
blue

S
M
L
XL

hyd_emp
ban_emp
chn_emp

create table hyd_emp(emp_id int ,emp_name varchar(50))
create table ban_emp(emp_id int ,emp_name varchar(50))
create table chn_emp(emp_id int ,emp_name varchar(50))

Insert into chn_emp values(7,'DDD'),(8,'FFF'),(6,'GGG')

Select * from ban_emp



--Stored Procedure:
collection of sql statements

Create OR REPLACE PROCEDURE GetEMPS()
LANGUAGE SQL AS
$$
   	Update ban_emp
	   SET emp_id=7
	   Where emp_name='GGG'
$$


Call GetEMPS()


CREATE OR REPLACE PROCEDURE GetEMPS(INOUT c REFCURSOR)
LANGUAGE plpgsql
AS
$$
BEGIN
    OPEN c FOR
    SELECT * FROM hyd_emp
    UNION ALL
    SELECT * FROM ban_emp
    UNION ALL
    SELECT * FROM chn_emp;
END;
$$;



BEGIN;

CALL GetEMPS('emp_cur');

FETCH ALL FROM emp_cur;

COMMIT;

SELECT * FROM GetEMPS();

CREATE OR REPLACE FUNCTION getemp()
RETURNS TABLE
(
    emp_id INT,
    emp_name VARCHAR(100)
)
LANGUAGE SQL
AS
$$
    SELECT * FROM hyd_emp
    UNION ALL
    SELECT * FROM ban_emp
    UNION ALL
    SELECT * FROM chn_emp;
$$;













