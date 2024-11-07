REM   Script: Experiment 01
REM   Experiment 01 

-- Creating table Employee
create table Employee(Emp_No number(5) primary key , 
    Ename varchar2(10) Not null, 
    Job varchar2(10), 
    Mgr number(6), 
    Salary number(10));

-- Add a column Commission to the employee table
Alter table Employee  
add commission number(10);

-- Insert any 5 records into the table 
insert into Employee values(101, 'Chaya','Trading',3,10000,5000);

insert into Employee values(102, 'Harman','Clerk',5,1000,1000);

insert into Employee values(103, 'Aman','Designing',7,10000,5000);

insert into Employee values(104, 'Rohit','Director',9,100000,4000);

insert into Employee values(105, 'Shubham','Clerk',3,1000,800);

select* from Employee;

-- Update the column details of the job for the employee103 and mention the job as trading
Update Employee  
set job='Trading' where Emp_No =103;

-- Rename the column of Employee table using using alter command Mgr to Mgr_no
ALTER TABLE Employee 
RENAME COLUMN Mgr to Mgr_no;

-- Delete the employee whose Emp_no is 105
Delete from employee where Emp_No=105;

