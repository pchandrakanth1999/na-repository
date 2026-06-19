--Joins
Data base 
Library
books details
students
departmant
issue date
return date
late fee

student_Id	student		phone_no	book_name	City
111			Rahul		111111		Sql			Hyd
222			Priya		222222		Python		Ban
333			Kiran		333333		DSA			CHn
111			Rahul		111111		SD			Hyd
333			Kiran		333333		History		Chn
222			Priya		222222		Physics		Ban


3000*6=18000
3000

Data Redunacy
1.storage 
2.data inconsistency
3.New student in adding student
deletion of data will loose the customer data


Students Table

Student_id		Student_name	Phone	city									
111					Rahul		111111		Ban
222					Kiran		22222		Ban
333					Ramya		33333		CHN
444					Krishna		555555		HYd

books Table:
book_id		Book_name
101			SQL
102			Python
103			History

borrow table:
student_id		book_id
111				102
222				101
333				103

---Show student names and barrowed books
--types of joins
1.inner join
2.outer join
		left outer
		right outer
		full 
3.self
4.cross

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE Orders_new (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO Customers (customer_id, customer_name)
VALUES
(1, 'Ravi'),
(2, 'Priya'),
(3, 'Arjun'),
(4, 'Sneha');

INSERT INTO Orders_new (order_id, customer_id, amount)
VALUES
(101, 1, 500),
(102, 1, 700),
(103, 2, 1000),
(104, 5, 300);
INSERT INTO Orders_new (order_id, customer_id, amount)
VALUES
(105, 1, 800),
(106, 1, 250),
(107, 2, 1200),
(108, 5, 900);

Select * from Customers
cust_id
c_name
Select * from Orders_new
o_id
c_id
amount

--join
--inner join:
Select *
FROM Customers c
INNER JOIN Orders_new o
ON c.customer_id=o.customer_id

1	"Ravi"	101					1	500.00
1	"Ravi"	102					1	700.00
1	"Ravi"	105					1	800.00
1	"Ravi"	106					1	250.00	
2	"Priya"	103					2	1000.00
2	"Priya"	107					2	1200.00


1	"Ravi"
2	"Priya"
3	"Arjun"
4	"Sneha"

"order_id"	"customer_id"	"amount"
101					1	500.00
102					1	700.00
103					2	1000.00
104					5	300.00
105					1	800.00
106					1	250.00
107					2	1200.00
108					5	900.00

1=1
1=1
1=2
1=5
1=1
1=1
1=2
1=5
2=1
2=1
2=2
2=5
2=1
2=1
2=2
2=5
3=


T1
C1
1
2
3
t2
C2
1
2

1 1
2 2

1
2
3

4
5

1
1

1
1
1


ID
1
2

ID 
2
3

ID
1
null

ID
1
null

1=1
1=null
null=1
null=null-->unknow

Select *
FROM Customers c
Left JOIN Orders_new o
ON c.customer_id=o.customer_id


left ==>inner join + all other rows in left table

1	"Ravi"	101					1	500.00
1	"Ravi"	102					1	700.00
1	"Ravi"	105					1	800.00
1	"Ravi"	106					1	250.00	
2	"Priya"	103					2	1000.00
2	"Priya"	107					2	1200.00
3	"Arjun" null				null	null
4	"Sneha" null				null	null

right join=inner join+ all other rows in right table
1	"Ravi"	101					1	500.00
1	"Ravi"	102					1	700.00
1	"Ravi"	105					1	800.00
1	"Ravi"	106					1	250.00	
2	"Priya"	103					2	1000.00
2	"Priya"	107					2	1200.00
null	null			104					5	300.00
null	null			108					5	900.00


===========================================================================================
Select *
FROM Customers c
Right JOIN Orders_new o
ON c.customer_id=o.customer_id
=======================================================================================

full outer =inner join + left over rows in left table + left over rows in right table


1	"Ravi"	101					1	500.00
1	"Ravi"	102					1	700.00
1	"Ravi"	105					1	800.00
1	"Ravi"	106					1	250.00	
2	"Priya"	103					2	1000.00
2	"Priya"	107					2	1200.00
3	"Arjun" null				null	null
4	"Sneha" null				null	null
null	null			104					5	300.00
null	null			108					5	900.00


--Dataset1
1
2
3

2
3
4

IJ:2
LOJ:3
ROJ:3
FOJ:4

--Dataset 2
1

1

IJ:1
LOJ:1
ROJ:1
FOJ:1

--Dataset3
1

2

IJ:0
LOJ:1
ROJ:1
FOJ:2

1	Null

null	2

1   null
null	2


t1
null
null

t2
null


IJ:0
LOJ:2
ROJ:1
FOJ:3

null
null

























