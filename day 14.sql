use dummy;

show tables;

select * from customers;
select * from orders;
describe customers;

select* from customers inner join orders on 
customers.customerNumber = orders.customernumber;

#error ambiguous (customernumber avilable and both number )
select customernumber ,customername , city ,country , orders , stuts  from customers inner join orders on  customers.customernumber = orders.customernumber;


select customers.customernumber , customers.customername , customers.city , customers.country , orders.orderdate , orders.status 
 from customers inner join orders on  customers.customernumber = orders.customernumber;

#ambiguous 
select customernumber , customername , city , country , state,
ordernumber , status from customers inner join orders on customers.customernumber = orders.customernumber;

#Aliasing
select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber;


select* from customers inner join orders on 
customers.customerNumber = orders.customernumber where city = "nashua" and  creditlimit>1000;