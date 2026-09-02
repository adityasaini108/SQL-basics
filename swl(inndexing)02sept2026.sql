--  02/09/2026 Wednesday

/*
Indexing->
      Indexing is an object in your database which is used to improve the data retrieval process 
      
*/

use ads;

create table test8 (id int,name varchar(20));
insert into test8 values(1,'a'),(3,'b'),(2,'c'),(5,'d'),(4,'e');

 explain select * from test8 where id=3;      
      
-- BTree data structure
select * from test8;

alter table test8 add primary key (id);

desc test8;

explain select * from test8 where name='a';

drop table test8;

create index name_index on test8(name);
select * from test8;
show indexes from test8;

create table emp (age int,name varchar(20));
create index name_index on emp(age)(name);



















      