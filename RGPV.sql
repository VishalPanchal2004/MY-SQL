create database RGPV;
use RGPV;
create table info(id int primary key auto_increment unique,
roll_number varchar(15) unique not null,
name varchar(25) not null ,
branch varchar(30),
dob date not null,
city varchar(25) default "Bhopal",
mobile_num bigint ,
telephone varchar(25),
gender char(8),
addmission_year int,
pass_out int);

insert into info(roll_number , name , branch , dob , city , mobile_num , telephone , gender , addmission_year , pass_out)
values ("0124CS211001", "Deepak" , "Computer Science" , "2004-01-07" , "Indore" , 9691131067 , "+91 8878044760" , "male" , 2024 , 2025),
("0124CS211002" , "Sanjay" , "Civil" , "2004-08-02" , "Indore" , 88756990123 , "91 7800554312" , "male" , 2024 , 2025);
 select * from info;
 describe info;
 
 
 drop table info;