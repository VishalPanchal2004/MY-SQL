use cybrom;
create table info8( id int primary key auto_increment,
name varchar(25) not null ,
age int not null check(age>18),
city varchar(25) not null default "Indore",
mob varchar(20) );
insert into info8( name , age , city, mob)
values("A", "20", "Bhopal", "+917697017264");
select * from info8;
show databases;



insert into info8( name , age , mob)
values("b", "25", 7697017264);
describe info8;


# data querify wirh clause
select * from info8; 
select id , city from info8;
select * from info8 where age > 18;
select * from info8 where city = "Bhopal";