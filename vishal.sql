create database vishal;
use vishal;

create table customer(cus_id int not null auto_increment,
cus_name varchar(20) not null,
age int,
gender varchar(20),
mob_num bigint not null,
address varchar(20),
primary key(cus_id));

create table order1(order_id int auto_increment primary key,
product_name varchar(20),
cus_id int,
order_date date,
order_stuts varcharacter(20) default"pending",
foreign key(cus_id) references customer(cus_id));

describe  customer;
describe order1;
drop table customer;
drop table order1;

#Relationship Break
select* from customer;
alter table order1 drop foreign key order1_ibfk_1;
alter table order1 drop key cus_id;

#Copuy Format
create table customer_1 as select*from customer;
describe customer_1;
drop table customer;
rename table customer_1 to  customer;