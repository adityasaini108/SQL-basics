-- 18/08/2026  Tuesday

create database tcldb2;
use tcldb2;

create table tcldb2.test(id int,name varchar(20));
insert into tcldb2.test values(18,'abhinav');
select * from tcldb2.test; 

select @@autocommit;   -- by default commit is 1, mean file will be automatically save

start transaction;
insert into tcldb2.test values(19,'raj');
select * from tcldb2.test;   -- two rows here
commit;                 --  you saved the changes in the database

start transaction;
insert into tcldb2.test values(20,'japan');
insert into tcldb2.test values(21,'korea');
update tcldb2.test set name='abacaa';
rollback;                      -- to revert the two lines inserted
select * from tcldb2.test; 

SET SQL_SAFE_UPDATES=0;

start transaction;
insert into tcldb2.test values(22,'uk');
delete from tcldb2.test;
select * from tcldb2.test;
rollback;
select * from tcldb2.test;





  