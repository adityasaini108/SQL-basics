-- 25/07/2026
use world;
select name,indepyear,indepyear+100,ifnull(indepyear,0) from country;
select name,indepyear,lifeexpectancy,coalesce(indepyear,lifeexpectancy,name) from country;

-- case statement
-- if(condition,true,false)
-- if (condition,true,if(condition2,true2,false))

select name,population,indepyear,if (indepyear>1947,'After india','before india') from country;

select name,population,indepyear,
if (indepyear>1947,'After india',
				if(indepyear>1920,'just before india','before india')) from country;

-- Another Method
select name,population,indepyear,
case
	when indepyear>1947   then 'after india'
    when indepyear>=1919  then 'only after 1919'
    else 'else condition'
end 
from country;    

-- cn name,pop   create a col name as categry 2<p<5 avg pop ,5<p large pop,else pop	
select name,population,
case 
	when 500000<population   then 'large population'
	when 200000<population<500000  then 'average population'
     
    else 'low population'
end as category
from country;    

-- get the continent name,no of countruies with the category of the continent col
 --  no of con>10 small 15<no of cn avg con 25<no of cn large scale continent 

select continent,count(name),
case
    when count(name)>25   then 'large population'
	when count(name)>15  then   'avg continent'
    when count(name)>10  then   'small continent'
    
    else 'extreme small'
end as continentcolumn
from country group by continent;    

-- Subquery (A query withon a query) /  Inner query /  Nested query



