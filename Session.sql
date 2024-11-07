REM   Script: File 1
REM   Codings on client_master072, product_master072 and salesman_master072

create table client_master072(ClientNo varchar2(6) primary key, 
Name varchar2(30) not null, 
City varchar2(10), 
Pincode number(10), 
State varchar2(20), 
Baldue number(10) 
);

desc client_master072


insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000);

insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00002','Mamta Muzumdar','Madras',780001,'Tamil Nadu',0);

insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00003','Chhaya Bankar','Mumbai',400057,'Maharashtra',5000);

insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00004','Ashwini Joshi','Banglore',560001,'Karnataka',0);

insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000);

insert into client_master072(ClientNo,Name,City,Pincode,State,Baldue)values 
('C00006','Deepak Sharma','Manglore',560050,'Karnataka',0);

select* from client_master072;

create table product_master072(ProductNo varchar2(10) primary key, 
Description varchar2(30), 
ProfitPercent number(2,1), 
UnitMeasure varchar2(19), 
QtyOnHand number(5), 
ReorderLvl number(2), 
SellPrice number(5), 
CostPrice number(5));

desc product_master072


insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P00001','T-Shirts',5,'Piece',200,50,350,250);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P0345','Shirts',6,'Piece',150,50,500,350);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P06734','Cotton Jeans',5,'Piece',100,20,600,450);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P07865','Jeans',5,'Piece',100,20,750,500);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P07868','Trousers',2,'Piece',150,50,850,550);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P07885','Pull Overs',2.5,'Piece',80,30,700,450);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P07965','Denim Shirts',4,'Piece',100,40,350,250);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P07975','Lycra Tops',5,'Piece',70,30,300,175);

insert into product_master072 (ProductNo,Description,ProfitPercent,UnitMeasure,QtyOnHand,ReorderLvl,SellPrice,CostPrice)values 
('P08865','Skirts',5,'Piece',75,30,450,300);

Select * from product_master072;

CREATE TABLE salesman_master072 ( 
    SalesmanNo VARCHAR2(10) PRIMARY KEY, 
    Name VARCHAR2(30) NOT NULL, 
    Address1 VARCHAR2(15), 
    Address2 VARCHAR2(30), 
    City VARCHAR2(30), 
    Pincode NUMBER(10), 
    State VARCHAR2(25), 
    SalAmt NUMBER(10), 
    TgtToGet NUMBER(10), 
    YtdSales NUMBER(10), 
    Remarks VARCHAR2(10) 
);

INSERT INTO salesman_master072 VALUES 
('S00001', 
 'Aman', 
 'A/14', 
 'Worli', 
 'Mumbai', 
 400002, 
 'Maharashtra', 
 3000, 
 100, 
 50, 
 'Good');

INSERT INTO salesman_master072 (SalesmanNo, Name, Address1, Address2, City, Pincode, State, SalAmt, TgtToGet, YtdSales, Remarks) VALUES 
('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 3000, 200, 100, 'Good');

INSERT INTO salesman_master072 (SalesmanNo, Name, Address1, Address2, City, Pincode, State, SalAmt, TgtToGet, YtdSales, Remarks) VALUES 
('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 3000, 200, 100, 'Good');

INSERT INTO salesman_master072 (SalesmanNo, Name, Address1, Address2, City, Pincode, State, SalAmt, TgtToGet, YtdSales, Remarks) VALUES 
('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

select * from salesman_master072;

-- Find out the names of all the clients
Select name from client_master072;

-- Retrieve the entire contents of the client_master072 table
Select * from client_master072;

-- Retrieve the list of names ,city and the state of the clients
Select name,city,state from client_master072;

-- List the various products available from the product_master072 table
Select description from product_master072;

-- List all the clients who are located in Mumbai
Select name from client_master072 where city='Mumbai';

-- Find the name of salesmen who have salary equal to Rs. 3000
Select name from salesman_master072 where SalAmt=3000;

-- Change the city of ClientNo 'C00005' to 'Banglore'
Update Client_Master072 set city='Banglore' where clientno ='C00005';

Select* from Client_Master072;

-- Change the BalDue of ClientNo 'C00001' to Rs.1000
Update Client_Master072 set BalDue=1000 where clientno ='C00001';

Select* from Client_Master072;

-- Change the CostPrice of the 'Trousers' to Rs.950
Update Product_Master072 set CostPrice=950 where description ='Trouser';

Select* from Product_Master072;

-- Change the city of the salesman to Pune 
Update salesman_master072 set city='Pune';

Select* from salesman_master072;

-- Delete all the salesmen from Salesman_master072 whose salary are equal to Rs. 3500
Delete from salesman_master072 where SalAmt=3500;

Select* from salesman_master072;

-- Delete all the products from product master where quantity on hand is equal to 100
Delete from product_master072 where QtyOnHand =100;

Select* from product_master072;

-- Delete from Client_master072 where the column state holds the value 'Tamil Nadu'
Delete from client_master072 where state ='Tamil Nadu';

Select* from Client_master072;

-- Add a column called 'Telephone' of datatype 'number' and size = '10' to client_master072 table
Alter table Client_master072 add Telephone number(10);

Select* from Client_master072;

-- Change the size of SellPrice column in Product_master072 to10,2
ALTER TABLE product_master072 modify SellPrice number(10,2);

Desc product_master072


-- Change the name of  the Salesman_Master072 table to sman_mast072
Alter table salesman_master072 
Rename to sman_mast072;

Select* from sman_mast072;

-- Destroy the client_master072 along with its data
Drop table Client_master072;

