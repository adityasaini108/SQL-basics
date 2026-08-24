-- 24/08/2026 Monday

/*
       Views 
 Views are the object work as virtual table 
 A SQL View is a virtual table created from the result of a SELECT query. 
It does not store data physically but displays data stored in underlying tables. 
Views help simplify complex queries, enhance security and present data in a cleaner, customized format.
it is an object which store the query 
It do not store data physically.It access/fetch the data from the base/underlying table

Benefits-
It makes your complex query simple
it helps in data security
we can hide important data without changing the table permission
It 
*/


create database ads;
use ads;
create table employee(id int ,name varchar(20),salary int);
insert into employee values(1,'amar',10000),(2,'shivank',20000);

-- create is used to create view object
-- object data structure

create view emp_view as select id,name from employee;   -- simple View

select * from emp_view;

select salary from emp_view;              -- will give error

-- new row insert 
insert into employee values(3,'abhishek',30000);
select * from emp_view;       -- base table change view also got new data

insert into emp_view values(4,'raj'); -- view insert as per column
select * from emp_view;
select * from employee;

-- materialize and non materialize View

create view emp_view_sum as select sum(salary) from employee;   -- complex View

select * from emp_view_sum;
insert into emp_view_sum values(80000);      -- view is not insertable

-- A view is updateable if there must be a one to on erelationship bwt 
-- the rows in the view and the rows in the underlying table
