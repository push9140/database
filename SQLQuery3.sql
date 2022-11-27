create table tbl_student
(
Rollno int identity(101,1),
Name varchar(50) not null,
age int check(age>=18) not null,
Course varchar(50) default 'Diploma',
mobile_no bigint not null,
Email_id varchar(100) primary key
)
insert into tbl_student values('Shyam',50,'Diploma(C.S)',89076546798,
'raj97899@gmail.com');
insert into tbl_student (name,mobile_no,Email_id,age) values('Shivank',
647838992,'shi@gmaol.com',45)
