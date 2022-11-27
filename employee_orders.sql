create table orders
(
order_number int identity(101,1),
cust_id varchar(50),
order_date date,
order_total float,
order_item int,
address int
);
insert into orders values('priya001@gmail.com','2022/12/23',250.85,1,101),
('priya001@gmail.com','2022/12/25',1020,5,101),
('singhsiya@gmail.com','2022/10/25',120.5,2,105),
('981rohankr@gmail.com','2022/12/20',150.5,1,102),
('priya001@gmail.com','2022/12/28',450.3,2,103),
('priya001@gmail.com','2022/02/26',670,3,103),
('981rohankr@gmail.com','2022/12/22',890,4,102),
('mukhareeak@gmail.com','2022/02/25',1050,5,104),
('mukhareeak@gmail.com','2022/02/27',1300.8,5,106),
('anamika145@gmail.com','2022/02/27',500.9,3,107)