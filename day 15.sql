use dummy;
select * from customers;
select * from orders;
 
select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber;

#AND
select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber where country = "USA" and "Germny";

select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber where country = "USA"and status = "on hold";

#IN
select c.customernumber , c.customername , c.city , c.country ,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber where country in("USA" , "Germany" , "Norway");

#NOT IN
select c.customernumber , c.customername , c.city , c.country ,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber where country not in("USA" , "Germany" , "Norway");


select c.customernumber , c.customername  , c.country ,
 o.ordernumber, o.status  from customers as c inner join orders as o on c.customernumber = o.customernumber where country in ("USA" , "Germany" , "Norway")
 and status = "shipped"  order by 
creditlimit desc limit 1 offset 1 ;


#Between 
select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber
where creditlimit between 50000 and 100000 order by creditlimit desc;

#NOT BETWEEN
select c.customernumber , c.customername , c.city , c.country , c.state,
o.ordernumber , o.status from customers as c inner join orders as o on c.customernumber = o.customernumber
where creditlimit not between 50000 and 100000 order by creditlimit desc;


select * from customers where country = "USA" and creditlimit > 50000 order by creditlimit desc ;
