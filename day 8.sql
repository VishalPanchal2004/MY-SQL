use cybrom;
describe hospital;

alter table hospital drop foreign key hospital_ibfk_1;               #drop relation  
alter table hospital drop key doc_id;                               #drop key referencess

alter table hospital drop foreign key hospital_ibfk_2;
alter table hospital drop key patient_id;


#Copy Structure
select*from docter;
create table docter1 as select * from docter;
drop table docter;
rename table docter1 to docter;

