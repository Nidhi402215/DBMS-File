REM   Script: session2
REM   session2

create table student (student_id number (4) primary key,  
    s_name varchar2(40)not null,  
    address1 varchar2(300),  
    gender varchar2(15),  
    course varchar2(8));

create table course  
   ( dept_no number(2)primary key,  
    d_name varchar2(30),  
    location varchar2(10));

INSERT INTO Student VALUES (1, 'gauri', 'world street', 'female', 'MCA');

INSERT INTO Student  VALUES (2, 'kashish', 'gurgoan', 'Female', 'MCA');

INSERT INTO Student  VALUES (3, 'bhumi', 'delhi', 'female', 'MBA');

INSERT INTO Student  VALUES (4, 'lalita', 'sainik colony', 'Female', 'M.TECH');

INSERT INTO Student  VALUES (5, 'nona', 'sainik colony', 'female', 'M.TECH');

INSERT INTO Course VALUES (10, 'MCA', 'Building A');

INSERT INTO Course VALUES (20, 'MBA', 'Building B');

INSERT INTO Course VALUES (30, 'BCA', 'Building C');

INSERT INTO Course VALUES (40, 'MCA', 'Building D');

INSERT INTO Course VALUES (50, 'BCA', 'Building E');

Select * from student;

select student_id,course from student;

select d_name, location from course;

Select s_name from student where student_id = '1' or student_id = '4' or student_id = '5';

SELECT S_Name FROM Student WHERE S_Name LIKE 'S%';

