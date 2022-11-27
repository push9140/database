create table fee_payment
(
Pay_id int identity(1,1),
User_id varchar(50) not null,
Amount money not null,
Mode varchar(30),
Date date
);
insert into fee_payment values('shivam@gmail.com',5000,'CASH','2022-10-23');
insert into fee_payment values('amit@gmail.com',3000,'GPAY','2022-10-23');
insert into fee_payment values('shivam@gmail.com',7000,'PAYTM','2022-10-28');
insert into fee_payment values ('raviverma@gmail.com',5000,'CASH','2022-09-23');
insert into fee_payment values('raviverma@gmail.com',4000,'CASH','2022-10-21');
insert into fee_payment values('amit@gmail.com',7000,'PAYTM','2022-10-28');
insert into fee_payment values('101vinay@gmail.com',4000,'PAYTM','2022-10-28');
select *from  fee_payment
select * fee_payment sum(amount)
select min(Total_fee) as minimum_fee from student_db
select sum(amount) as total_paid from Fee_payment
select amount from fee_payment where amount>6000
select sum(amount) as paid,mode from fee_payment group by mode
select sum(amount),date from fee_payment group by date
use test
