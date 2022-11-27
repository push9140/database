create table fee_payment
(
SR int identity(1,1),
User_id varchar(50) not null,
Amount money not null,
Mode varchar(30),
Date date,
);

insert into fee_payment values('deepak123@gmail.com',3000,'Gpay','2022/10/23');
insert into fee_payment values('priya001@gmail.com',5000,'Paytm','2022/10/25'),
('deepak123@gmail.com',4000,'Cash','2022/10/23'),
('002sohan@gmail.com',3000,'Cash','2022/10/26'),
('deepak123@gmail.com',5000,'cash','2022/10/20'),
('priya001@gmail.com',5000,'Gpay','2022/10/20'),
('981rohankr@gmail.com',8000,'Paytm','2022/10/23'),
('siyaaingh@gmail.com',6000,'Cash','2022/10/20'),
('981rohankr@gmail.com',2000,'cash','2022/10/25'),
('siyasingh@gmail.com',6000,'Paytm','2022/10/26'),
('981rohankr@gmail.com',6000,'Gpay','2022/10/26')
select *from fee_payment