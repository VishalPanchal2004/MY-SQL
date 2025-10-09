use cybrom;
show tables;
select* from info;


update info set name = "pankaj" where id = 2;
set sql_safe_updates = 0;                
describe info;

# change datatype outer structure
alter table info modify column name varchar(30);

alter table info modify column name varchar(30) not null;

# column vise rename
alter table info rename column mo_number to telephone;

# table wise
rename tables name to names;
select* from info;

#add new column
alter table info add column field varchar(20) not null;
describe info;

#New Column Value put
insert into info (field) values ("bank") , ("Govt");                   #error 1364 field name doestn't have a default value 
update info set field = "bank" where id = 1;
select* from info;

#Drop column
alter table info drop column mobile_number;
select* from info;








