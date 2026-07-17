use world;

-- GROUP BY CLAUSE
select distinct(continent) from country;
select continent from country group by continent;

select distinct(continent) , count(name) from country; -- will not run
select continent ,count(name) from country group by continent;

select * from city where district='zuid-holland';
select count(name) from city where district='zuid-holland';

select  district ,count(name),sum(population) from city group by district;
select count(name) from city where countrycode='AFG' ;
select countrycode,count(name) from city group by countrycode;

-- count() does not count null values skip them(NOTE)

-- count the no of country whichc have the life ex from 70.1 to 83.5
-- get the total population of the countries who got their their indep after 1990
-- count the no of countries which are not slaved by any community
-- get the total countries and the total surfacearea for each region
-- get the total countries in each countinent
-- get the total country for each region for each continent

 select count(name) from country where lifeexpectancy>70.1 and lifeexpectancy<83.5;
 select sum(population) from country where indepyear>1990;
 select count(name) from country where indepyear is  NULL;
 select region,count(name),sum(surfacearea) from country group by region;
 select continent,count(name) from country group by continent;
 select continent,region,count(name) from country group by continent,region;

use world;
select continent,count(name) from country group by continent having count(name)>10;
select continent , count(name) from country where continent like 'A%' group by continent having count(name)>10;


