-- 25/08/2026 Tuesday

/*
CTE stands Common Table Expression.
CTE store the result of a sql query on a temporary basis.
CTEs are available during the execution of a sql query.

It improves readability.
you can use CTE to run your logic multiple times and also it can work like alternative


*/

-- CTE
use ads;
-- CTAS. --> create table as select statement
create table city_t2 as select * from world.city;

select * from city_t2;

select * from city_t2 as c where population =(select max(population) from city_t2 where district = c.district);

with district_max as 
( select district,max(population) as d_population 
from city_t2 
group by district)

select * from district_max as dm join city_t2 as c 
on c.district=dm.district and c.population=dm.d_population;

with cte as 
( select max(population )  from city_t2 
where population < 
(select max(population) from city_t2)) 

,cte2 as 
(select max(population )  from city_t2 
where population < 
(select * from cte)) 

select * from city_t2 where population = (select * from cte2);







