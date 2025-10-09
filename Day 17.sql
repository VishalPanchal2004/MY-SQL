use dummy;
select * from customers;
select * from orders;
select * from orderdetails;
select * from payments;

select c.customernumber , c.customername , c.country , p.amount, p.paymentdate , o.orderdate , o.status ,
od.quantityordered* od.priceeach from customers c inner join payments p using(customernumber) inner join orders o 
using(customernumber) inner join orderdetails od using(ordernumber) order by amount desc;


# Alising use to name change 
select c.customernumber , c.customername , c.country , p.amount, p.paymentdate , o.orderdate , o.status ,
(od.quantityordered* od.priceeach) as total from customers c inner join payments p using(customernumber) inner join orders o 
using(customernumber) inner join orderdetails od   using(ordernumber) order by amount desc;

select* from customers c left join orders o on c.customernumber = o.customernumber;

select * from customers c inner join orders o on c.customernumber = o.customernumber;

# join By Default inner join 
select * from customers c inner join orders o on c.customernumber = o.customernumber;


