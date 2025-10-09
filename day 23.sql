use dummy;

#View
#Updateble View
create view vi_view as (select customernumber , city , state , creditlimit from customers);
select* from vi_view;

#Cross Filter Direction      
#Bi Direction  (Updateble)
select* from vi_view;          #Virul Table
select * from customers;       #Main Table
update customers set state = "Vishal" where customernumber = 103;
update vi_view set state = null where customernumber = 103;

#Non Updateble View
create algorithm = temptable view vp_view(customernumber , city , state , creditlimit) as
(select customernumber , city , state , creditlimit from customers);
select * from vp_view;

#Single Direction
select * from customers;
select * from vp_view;
update customers set state = "MP" where customernumber = 119;
update vp_view set state = null where customernumber = 119;                   #Error 1288
