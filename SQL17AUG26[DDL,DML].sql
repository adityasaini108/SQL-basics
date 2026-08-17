-- 17/08/2026 Monday

/*
Group by
Joins
Subquery
Windows Functions complete (NTILE) (learn by your selft NTILE)
Functions

Mocks 
Test written and mocks

DDL, DML, DCL, TCL, DQL, [80% complete]

*/

-- DDL (Data defination Langauge)
-- Data ka structure
-- Create

Create Database Testdb6;

use Testdb6;

-- table Structure
create table testdb6.employee1(id int);

select * from testdb6.employee1;

drop table testdb6.employee1; -- drop the table[data is remove and also its structure]
select * from testdb6.employee1;

-- Second time
create table testdb6.employee1(id int);
select * from testdb6.employee1;

-- DDL [ALTER]
alter table testdb6.employee1 add column name varchar(20); -- added acolumn 
alter table testdb6.employee1 drop column id;  -- drop a specific column

select * from testdb6.employee1;

desc testdb6.employee1;
alter table testdb6.employee1 modify column name int;  -- changed the data type

alter table testdb6.employee1 add column empid int; -- add a column
desc testdb6.employee1;

-- to add constraint
alter table testdb6.employee1 add constraint unique(name); -- unique
alter table testdb6.employee1 modify column empid int NOT NULL;  -- not null on a table column
desc testdb6.employee1;

alter table testdb6.employee1 add constraint primary key (empid);   -- primary key
desc testdb6.employee1;

-- rename column and table name
alter table testdb6.employee1 rename column empid to id; -- column rename 
alter table testdb6.employee1 rename to employee2;   -- table rename
desc testdb6.employee2;

-- Truncate  [DDL]
select * from testdb6.employee2;

insert into testdb6.employee2 values(100,80);

truncate testdb6.employee2; -- first it drop the table then recreate the table again (it does not delete the data in table)
select * from testdb6.employee2;


-- DDL [create,drop,alter,truncate]
desc testdb6.employee2;
alter table  testdb6.employee2 drop constraint name;  -- remove unique constraint


select * from testdb6.employee2;

SET SQL_SAFE_UPDATES=0;

insert into testdb6.employee2 values(10,199),(13,200),(11,899),(12,5738),(10,10910);
update testdb6.employee2 set name='899';  -- will make change to every row
update testdb6.employee2 set name='7123' where id=199;
select * from testdb6.employee2;

delete  from testdb6.employee2 where name=10;
select * from testdb6.employee2; 

-- truncate IS DDL BUT DELETE IS DML BCOZ TRUNCATE DELETE AND RECREATE THE TABLE 









