use dummy;
select * from customers;
select * from orders;
show tables;

select * from orderdetails;
select* from payments;

describe orderdetails;
describe payments;
describe customers;

#Multiple Table Joining
#On Use Different Colun And Similar Coloumn
select c.customernumber , c.customername , c.country , o.ordernumber , o.status , p.amount 
from customers c inner join orders o on c.customernumber = o.customernumber inner join 
payments p on o.customernumber = p.customernumber order by amount desc;

#Using use Common Column Only Not Different Column
select * from customers inner join orders using(customernumber);

create table table12 (id int);
create table table22(ids int);
insert into table12(id) values (1) ,(2) , (3) , (4) ;
insert into table22(ids) values (1) ,(2) , (3) ,(4);

# Data type same hoga tbhhi different colun se on k use krege
select * from table12 a inner join table22 b
on a.id = b.ids; 

#error
select * from table12 inner join table22
using(id);

select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.ordernumber;