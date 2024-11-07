REM   Script: Experiment 3
REM   Experiment 3

create table customer(Cust_No number(7) primary key, 
    Cname varchar2(20) not null, 
    Phone_Number number(10), 
    Address varchar2(30), 
    Gender varchar(15), 
    Age number(3));

insert into customer values(010,'Arvind', 9876534561,'Mysore','Male',27);

insert into customer values(011,'Sidhi', 9876879863,Null,'Male',Null);

insert into customer values(012,'Simran', 9877896326,'Delhi',Null,25);

Select * from customer;

Alter table customer add unique (Age);

