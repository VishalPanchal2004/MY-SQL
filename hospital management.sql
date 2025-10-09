create database hospital_Management;
use hospital_management;

 create table hospital(hospital_id varchar(20) primary key default "101P",
 hospital_name varchar(20)default "Panchal Hospital",
 hospital_Telephone bigint default 7697017264,
 hospital_address varchar(30)default "Arniya Kalan");
 
create table patient (s_no int ,
hospital_id varchar(20),
patient_id varchar(20) not null,
patient_name varchar(20) ,
Dob date not null ,
age int ,
gender varchar(8) ,
Patient_Phone_Number bigint not null,
Emergency_Contact bigint,
Adress varchar(20) not null ,
primary key(patient_id),
foreign key(hospital_id) references hospital(hospital_id));
 
 
create table doctor (s_no int ,
hospital_id varchar(20),
doctor_id int not null,
patient_id varchar(20) not null,
Doctoe_name varchar(20) not null ,
spelization varchar(20) not null,
shift varchar(20) ,
primary key(doctor_id),
foreign key(hospital_id) references hospital(hospital_id),
foreign key(patient_id) references patient(patient_id));

 
create table appoitment(s_no int ,
hospital_id varchar(20),
appoitment_id int primary key,
patient_id varchar(20) not null,
doctor_id int not null ,
appoitment_date date,
stuts varchar(20) default "Pending",
foreign key(hospital_id) references hospital(hospital_id),
foreign key(doctor_id) references doctor(doctor_id),
foreign key(patient_id) references patient(patient_id));


create table billing(UTR bigint not null,
appoitment_id int,
patient_id varchar(20) not null,
hospital_id varchar(20),
doctor_id int,
patient_name varchar(20) not null,
Doctor_name varchar(20) not null,
amount decimal(10,2) not null ,
billing_date date,
payment_stuts varchar(10) default "Paid",
primary key(UTR),
foreign key (appoitment_id) references appoitment (appoitment_id),
foreign key (patient_id) references patient(patient_id),
foreign key(doctor_id) references doctor (doctor_id),
foreign key(hospital_id) references hospital (hospital_id));
drop  table appoitment;
drop table billing;
drop table doctor;
drop table patient;
drop table hospital;

describe hospital;
describe billing;

#APPOITMENT TABLE INSERT VALUE
insert into hospital(hospital_id,hospital_Telephone)
values("101P",7697017264),("102P", 7697017264);
select* from hospital;


alter table billing drop foreign key billing_ibfk_1;
alter table billing drop key appoitment_id;
alter table billing drop foreign key billing_ibfk_2;
alter table billing  drop key patient_id;
alter table appoitment drop foreign key appoitment_ibfk_1;
alter table appoitment drop key hospital_id;