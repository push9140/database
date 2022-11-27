create table student_db
(
SR int identity(101,1),
NAME varchar(50) not null,
MOBNO bigint,
EMAIL_ID varchar(100) unique,
COURSE varchar(50),
BRANCH varchar(50),
YEAR varchar(50),
Total_fee money,
Reg_Date Date
);
select * from student_db
insert into student_db values('SHIVAM SHARMA',9887766556,'shivam@gmail.com','B.Tech','C.S',
'First',12000,'2022-10-20');
insert into student_db values('SHIVAM SINGH',null,'shivam10singh@gmail.com','B.tech','I.T',
'First',13000,'2022-10-23');
insert into student_db values('SHIVANI YADAV',null,'01shivani@gmail.com','Diploma','C.S',
'First',16000,'2022-10-26');
insert into student_db values('RAVI VERMA',6778877778,'raviverma@gmail.com','Diploma','I.T',
'First',15000,'2022-09-23');
insert into student_db values('AMIT SINGH',78877665545,'amit@gmail.com','BCA',null,
'Second',15000,'2022-10-21');
insert into student_db values('POOJA',9678565445,'pooja123@gmail.com','BCA',null,
'Third',16000,'2022-10-28');
insert into student_db values('AYUSHI SINGH',null,'908ayushi@gmail.com','Diploma','I.T',
'Second',11000,'2022-10-28');
insert into student_db values('VINAY SINGH',875645321,'101vinay@gmail.com','B.tech','C.S',
'Second',18000,'2022-10-23');
insert into student_db values('SANDEEP DUBEY',9123300400,'008sandeep@gmail.com','BCA',null,
'Third',18000,'2022-09-28');
insert into student_db values('HIMANSHU RAI',8100987660,'678himanshu@gmail.com','B.tech','I.T',
'Third',15000,'2022-10-20');
select * from student_db

select NAME,MOBNO,EMAIL_ID from student_db

select * from student_db where YEAR='First' or YEAR='Second'
select * from student_db where course in ('Diploma(c.s)'
,'diploma(i.t)') or year in('First','Second')

select max(Total_fee) from student_db
select avg(Total_fee) from student_db

select * from student_db order by Total_fee desc
select * from student_db where name like'[s-z]%'
select * from student_db where Reg_Date between '2022-10-20' and '2022-10-25'
select * from student_db where name like 'SHIVAM%'
