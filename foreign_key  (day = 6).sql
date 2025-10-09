create database foreign_key;
use foreign_key;
create table student (student_id int not null auto_increment,
name varchar(20) not null,
age int not null , primary key (student_id));
 
 create table course( course_id int not null ,
 course_name varchar(20) , primary key(course_id));
 
 create table enrollment(enrollment_id int not null ,
 student_id int,
 course_id int ,
 enrollment_date date ,
primary key (enrollment_id),
foreign key (student_id) references student(student_id),
foreign key (course_id) references course(course_id));
select* from enrollment;

describe enrollment;
