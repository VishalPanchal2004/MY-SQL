use dummy;

select * from customers;
select * from orders;
select * from payments;

select c.customernumber , c.customername , c.country , o.ordernumber , o.status , p.amount 
from customers c inner join orders o on c.customernumber = o.customernumber inner join 
payments p on o.customernumber = p.customernumber where p.amount > 2000 order by amount desc;
