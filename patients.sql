create database city_hospital;
use city_hospital;
create table Patients(
Patient_id int,
Patient_name varchar(20),
Age int,
Gender enum('M','F'),
Admissiondate date
);

Alter table Patients
Add column DoctorAssigned varchar(50);

Alter table patients
modify column Patient_name varchar(100);

Rename table Patients to Patients_info;

Truncate table patients_info;

Drop table patients_info;


create database Bookstore;

USE Bookstore;

CREATE TABLE Books(
Book_id int Primary key
);

CREATE TABLE Orders(
Order_id int primary key,
Book_id int,
foreign key(Book_id) References Books(Book_id)
);

Alter table Books
ADD ISBN int;

Alter table Books
Add constraint unique_ISBN UNIQUE(ISBN); 

DELETE FROM Orders
WHERE Order_id = 101;

truncate table Orders;

CREATE database University;

Create table department(
department_id int,
department_name varchar(20)
);

select distinct department_name
from department;

Alter table department
Add column email varchar(30);

Alter table department
Add column Courses varchar(10);

Alter table department
drop email;

Alter table department
drop Courses;

create table students(
 email varchar(20),
 courses varchar(10),
 gpa int
 );
 
 insert into students(email,courses,gpa) values ('abc@gmail.com','CSE',8);
 
 insert into students(email,courses,gpa) values ('bcd@gmail.com','ECE',7);
 
 insert into students(email,courses,gpa) values ('cde@gmail.com','EEE',5),('sds@gmail.com','IT',8);
 
 SELECT *
FROM Students
WHERE email IS NULL;

SELECT *
FROM Students
WHERE email IS NOT NULL;

SELECT *
FROM Students
WHERE courses IN ('EEE', 'CSE', 'IT');

SELECT *
FROM Students
WHERE gpa BETWEEN 5 AND 7
;

SELECT *
FROM Students
WHERE gpa NOT BETWEEN 5 AND 7;









 




