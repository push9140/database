create table Teachers_db
(
SR int identity(1,1),
Name varchar(50) not null,
Mob_no bigint,
Email_id varchar(30) primary key not null,
Post varchar(30),
Experince int
);
insert into Teachers_db values('Mr.Rahul soni',89876789979,'rverma@gmail.com','CS Consults',6),
('Mr.Ashish Maurya',null,'amaurya@gmail.com','Software devloper',4),
('Mr.Vinay Pandey',null,'vvinay@gmail.com','IT Consults',6),
('Mr.Manoj Sachan',7890654769,'mschan@gmail.com','Software',5),
('Mr.Akash chaurasiya',9807654560,'akchaurasiya@gmail.com','IT Consults',7);