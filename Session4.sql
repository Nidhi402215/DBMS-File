REM   Script: Experiment No -4
REM   Experiment No -4

create table Employee (Emp_Id number(5) primary key, 
    Emp_name varchar2(20), 
    Emp_Age number(3), 
    Emp_Salary number(10));

insert into Employee values(100, 'Manish',20,5000);

insert into Employee values(101, 'Gaurav',21,25000);

insert into Employee values(102, 'Aman',23,50000);

insert into Employee values(103, 'Garima',27,8000);

insert into Employee values(104, 'Simran',25,9000);

insert into Employee values(105, 'Ashish',29,28000);

insert into Employee values(106, 'Sejal',22,22000);

select count(name), max(age) From Employee;

select count(Emp_name), max(Emp_age) From Employee;

select min(Emp_Salary) from Employee;

Select sum(Emp_age) from Employee;

select avg(Emp_Salary) from Employee;

Select * from Employee order by Emp_Salary;

Select * from Employee order by Emp_Salary desc;

Select Emp_name,Emp_salary from Employee where Emp_age<29 and Emp_salary<10000;

