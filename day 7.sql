use cybrom;
create table docter( doc_id varchar(25) not null,
doc_name varchar(25) not null ,
city varchar(20) default "bhopal",
App_date  date ,
primary key(doc_id));

create table patient( patient_id varchar(25) not null ,
patient_name varchar(25) not null ,
city varchar(25),
mob_n bigint ,
primary key(patient_id));


create table hospital(hospital_id varchar(25) not null,
patient_id varchar(25),
doc_id varchar(25),
mob_num bigint,
primary key(hospital_id),
foreign key(doc_id) references docter (doc_id),
foreign key(patient_id) references patient (patient_id));

describe docter;
describe patient;

drop table docter;
drop table patient;
drop  table hospital;
describe hospital;


