use cybrom;
create table info4 (id int not null ,
age int not null check (age >18), name varchar(30) , city varchar(30) default "bhopal");
insert into info4 (id , age , name , city) 
values (1, 34 , "Vishal" , "indore");
select * from info4 ;

insert into info4 (id , age , name )                # default city
values (2, 35 , "aman" );

#primary key

create table info5(id int primary key,
age int not null check (age>18), name varchar(20) , city varchar(20) not null default "Bhopal");
insert into info5 (id , age ,city )
values (1,2,"Indore"), (2,19,"Dewas");
select *from info5;

# primary key coloum level
create table info6(id int primary key auto_increment ,
age int not null check (age>18), name varchar(20) , city varchar(20) not null default "Bhopal");
insert into info6 (age)
values(23) , (34);
select * from info6;
describe info6;

# primary key at table level
create table info7(id int , age int not null  check (age>18) ,primary key (id , age));
describe info7






