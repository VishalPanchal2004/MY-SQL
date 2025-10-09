use dummy;

create table emp(emp_id int primary key,
dept varchar(30) not null , salary int not null);

insert into emp (emp_id , dept, salary)
values (1,"IT" , 10000),(2,"FINANCE" , 20000),(3,"HR", 30000),(4,"IT",10000),(5,"HR",20000),(6,"HR",30000);

select* from emp;

#GROUP BY
#DEPT OF SUM TO SALARY
select sum(salary) as total_salary ,dept from emp group by dept;

#HAVING AFTER GROUP BY(GROUP BY + AGGRIGATION COLUM) 
select sum(salary) as total_salary ,dept from emp group by dept having total_salary >25000;               #Having After Group By use 
select sum(salary) as total_salary ,dept from emp group by dept having dept = "HR";

#AVG OF DEPT TO SaLARY
select avg(salary) as avg_salary , dept from emp group by dept;

#AVG TO DEPT IN HR TO SALARY USE TO WHERE (WHERE GROUPBY KE PEHLE)
select avg(salary) as avg_salary , dept from emp where dept  = "HR"  group by dept;                    #Where Before Group By use (Row Level)

#USE TO WHERE + HAVING
select sum(salary) as total_salary ,dept from emp  where salary >25000 group by dept having total_Salary;


