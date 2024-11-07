REM   Script: Experiment No 2
REM   Experiment No 2

Create table department(Dept_No number(4) primary key,  
    Dname varchar2(10),  
    D_loc varchar2(20));

Alter table department   
add designation varchar2(30);

insert into department values(01,'Designing','Mumbai',Null);

insert into department values(02,'Testing','Banglore',Null);

insert into department values(03,'Training','Tamil Nadu',Null);

insert into department values(06,'Printing','Banglore',Null);

insert into department values(09,'Executive','Lucknow',Null);

select* from department;

select Dname from department;

Update department set designation = 'Accountant' where Dept_No = 09;

Alter table department  DROP COLUMN designation;

