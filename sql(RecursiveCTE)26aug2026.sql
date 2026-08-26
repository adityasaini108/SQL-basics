-- 26/08/2026 wednesday

/*
Recursive CTE -
A recursive Common Table Expression (CTE) is a temporary result set that 
references itself repeatedly to loop through hierarchical or 
sequential data until it returns no more rows
*/
	-- joins,corelated , 
use ads;
create table city3 select id ,name ,population from world.city limit 3;

create table city2 select id ,name ,population from world.city limit 2;
 
select * from city3
union
select * from city2;


select * from city3
union all
select * from city2;


select * from city3
intersect
select * from city2;


select * from city3
except
select * from city2;

select 10
union
select 11;


with cte as 
(select 10 as num )
select * from cte;

with recursive cte as 
(select 10 as num 
union
select num+1 from cte
where num<15)
select * from cte;

create table employe (emp_id int ,emp_name varchar(200), manager_id int);

insert into employe ( emp_id,emp_name, manager_id)
values (1,'john',null),
(2,'Alice',1),
(3,'Bob',1),
(4,'David',2),
(5,'sarah',2),
(6,'mike',3),
(7,'Tom',4);
         
-- NORMAL CTE
with tempcte as 
(select *,emp_name as hierachy from employe where manager_id is null)
select * from tempcte
union
select e.emp_id,e.emp_name,e.manager_id,concat(e.emp_name,'->',tempcte.hierachy) as hierachy
from employe as e join tempcte
on e.manager_id=tempcte.emp_id where e.emp_id=2;

-- USING RECURSIVE CTE
with recursive tempcte as
(select *,emp_name as hierachy from employe where manager_id is null

union


select e.emp_id,e.emp_name,e.manager_id,concat(e.emp_name,'->',tempcte.hierachy) as hierachy
from employe as e join tempcte
on e.manager_id=tempcte.emp_id)
select * from tempcte;

with recursive tempcte as
(select *,1 as level from employe where manager_id is null

union

select e.emp_id,e.emp_name,e.manager_id,level+1 as level
from employe as e join tempcte
on e.manager_id=tempcte.emp_id)
select * from tempcte;




