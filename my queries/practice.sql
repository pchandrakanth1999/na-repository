-- ***** and distinct practice

select * from customers_data

SELECT distinct lastname from customers_data

select count( lastname) from customers_data

select count (distinct firstname) from customers_data

select count(*) as distinctfirstname from (select distinct firstname from customers_data)
-- =============================================================================================
-- > < >= <= <> between like in 

select * from customers_data where yearlyincome = 70000

select * from customers_data where yearlyincome > 70000

select * from customers_data where yearlyincome < 70000

select * from customers_data where yearlyincome >= 70000

select * from customers_data where yearlyincome <= 70000

select * from customers_data where yearlyincome <> 70000

select * from customers_data where yearlyincome between 1 and 90000

select * from customers_data where englisheducation like '%lors'

select * from customers_data where englisheducation like 'Bache%'

select * from customers_data where englisheducation like '%igh%'

select * from customers_data where englisheducation in ('Bachelors','Partial College')
-- =============================================================================================
-- order by asc, desc
select * from customers_data order by yearlyincome

select * from customers_data order by yearlyincome desc

select * from customers_data order by yearlyincome asc  ,totalchildren desc
-- =============================================================================================


