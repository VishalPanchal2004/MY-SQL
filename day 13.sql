create database join1;


create table table1(id int);
create table table2(id int);


insert into table1(id) values (1) , (2) , (2) , (3) , (4) , (null) , (null);
insert into table2(id) values (1) ,(1) , (2) , (2) , (2) , (null);


select * from table1;
select* from table2;

#inner join
select * from table1 inner join table2 on 
table1.id = table2.id;

#Left join
select * from table1 left join table2 on 
table1.id = table2.id;

#Right join
select * from table1 right join table2 on 
table1.id = table2.id;

#Cross join
select * from table1 cross join table2 ;