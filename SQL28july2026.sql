-- Subquery (A query withon a query) /  Inner query /  Nested query

create database corr_db;
use corr_db;
create table employee_c (id int,name varchar(20),salary int );
insert into employee_c values(1,'a',100),(2,'b',250),(3,'c',400),(4,'d',300);

-- highesr=t salary kya h
select max(salary) from employee_c;

select * from employee_c where salary=400;


select min(SALARY) from employee_c;
select * from employee_c where salary=100;

-- Nested Query
select * from employee_c where salary=(select min(SALARY) from employee_c);

select * from employee_c where salary=( select max(salary) from employee_c );

insert into employee_c values(5,'aman',250);
select * from employee_c where salary = (select salary from employee_c where name='b');


-- get the name of the city where the district of the city is  same for the city abu dhabi
-- get all  the column from the city table where the pop is the maximum
-- get the district and the name of the city where the country code is same for 'herat'
-- get the district where 
 
 
 use world;
select name from city where district = (select district from city where name ='Abu dhabi');
select * from city where population=( select max(population) from city);
select name,district from city where countrycode=( select countrycode from city where name = 'herat');
select district ,name,population from city where countrycode=(select countrycode from city where name='Amsterdam')
order by population;


-- Single Row Subquery
