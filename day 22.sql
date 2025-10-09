use dummy;

select * from customers;
create view a_view as (select* from customers 
where country not in ("USA","AUSTRALIA") and creditlimit>=50000);        #updateble

select* from a_view;

create view b_view as(select customername ,city ,state from customers);
select * from b_view;