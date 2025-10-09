create database hospital_new;
use hospital_new;

create table hospitaldata(
Hospital_Name varchar(30),
Location varchar(25),
Department varchar(20),
Doctors_Id int,
Patients_Id int,
Admission_Date date,
Discharge_Date date,
Medical_Expenses DECIMAL(12,2));
    
select * from hospitaldata;
describe hospitaldata;
    
#1)  Total Number of Patients 
select  sum(Patients_Id) as Total_Patient from hospitaldata ;
    
#2) Average Number of Doctors per Hospital
select Hospital_Name ,avg(Doctors_Id) as Avg_Doctors from hospitaldata group by Hospital_Name;
    
#3) Top 3 Departments with the Highest Number of Patients 
select Department , sum(Patients_Id) as total_Patients from hospitaldata group by Department order by otal_Patients limit 3;
    
#4) Hospital with the Maximum Medical Expenses
SELECT Hospital_Name, SUM(Medical_Expenses) AS Total_Expenses
FROM HospitalData GROUP BY Hospital_Name ORDER BY Total_Expenses DESC LIMIT 1;

#5) Daily Average Medical Expenses per Hospital
SELECT Hospital_Name , AVG(Medical_Expenses) AS Avg_Daily_Expenses FROM HospitalData group by Hospital_Name;

#6) Total Patients Treated Per City
select Location AS City, SUM(Patients_Id) AS Total_Patients FROM Hospitaldata group by Location;
 
#7) Identify the Department with the Lowest Number of Patients 
select Department , sum(Patients_Id) as Total_Patient from Hospitaldata group by Department order by Total_Patient limit 1;

#8) Monthly Medical Expenses Report 
select date_format(Admission_Date,"%m") as A_Month , SUM(Medical_Expenses) AS Total_Expenses from Hospitaldata 
group by A_Month order by A_Month;

#9) Patient (or record) with the Longest Hospital Stay
#10) Average Length of Stay Per Department
