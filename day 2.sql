# creating

create  database cybrom;
use cybrom ;                   # to move into the database
show tables;                   # to show the tables eithin the database
create table info (id int, name varchar(20), age int, cit char(20));
select * from info ;           # to query the result set
describe info ;                # description outer structure


#inserting

insert into info(id,name,age,cit) 
values(1,"vishal",21,"Bhopal");



insert into info(id,name,age,cit) 
values(2,"Panchal",21,"Indore");


