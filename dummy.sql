use dummy;
show tables;
describe customers;
describe employees;
describe orders;
select* from customers;

select* from customers where city = "nantes";
select customernumber ,city , state from customers where city = "nantes";


#Sequential by deafult Assending
select * from customers;
select customernumber , customername  contactlastname
from customers order by customername;

#Desending 
select customernumber , customername  contactlastname
from customers order by customername desc;

#Numeric Value
select customernumber , customername  contactlastname , creditlimit
from customers order by creditlimit desc;

#Limit & Offset.....
#Fetch a customer top 3 creditlimit ?
select* from customers order by creditlimit desc
limit 3;

#Fetch a customers 
select* from customers order by creditlimit desc
limit 1 offset 4;

# 3 to 7 fetch tha top value 
select* from customers order by creditlimit desc
limit 4 offset 7;


#update inher structure
update customers set phone = 7697017264
where customernumber = 103;
select * from customers;


update customers set phone = 7697017264
where addressline2 = "level3";
select* from customers;
set sql_safe_updates = 0;