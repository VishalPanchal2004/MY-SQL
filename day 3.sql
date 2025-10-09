use cybrom;
show tables;
drop tables info;

create table info (id int, name varchar(20) ,city char(20) , dob date , salary decimal (5,2) , 
mobile_number bigint , mo_number varchar(20));

insert into info(id, name, city , dob ,salary , mobile_number ,mo_number)
values (1 , "Vishal Panchal","Bhopal", "2004-12-5", 100.22 , 7697017264 , "+91 9981218363"),(2 , "Vishal Vishwkarma","Bhopal", "2003-11-12", 100.22 
, 7697017264 , "+91 9981218363");


select *from info;



#constrains
# uniuq , not nul , cheak , default
# key =  primery key , forreign key 


create table info1(id int unique , age int not null);
insert into info1(id,age)
values (1, 30),(2,34);
select *from info1;


create table info2(id int not null , age int not null);
insert into info2(id,age)
values (1, 30),(2,34),(1, 40);
select *from info2;

drop table info2;

create table info3(id int unique not null , age int unique);
insert into info3(id,age)
values (1, null),(2,34),(3, 40);
select *from info3;
drop table info3;