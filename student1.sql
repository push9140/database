create table student_db(
Sr int identity(1,1),
Name varchar(50) not null,
Mob_no bigint,
email_id varchar(50) primary key,
total_fee money not null,
age int,
classrom_teacher int,
branch varchar(20),
year varchar(20),
);

insert into student_db values('Deepak Singh',9887787676,'deepak123@gmail.com',15000,20,101,'C.S',
'First'),
('Priya Soni',7887767878,'priya001@gmail.com',10000,23,101,'C.S','First'),
('Sohan khan',null,'002sohan@gmail.com',12000,25,102,'I.T','Second'),
('Rohan kumar',9887787876,'981rohan@gmail.com',16000,20,103,'E.C','Second'),
('Priyanka Dutt',null,'567865priya@gmail.com',15000,18,101,'E.C','third'),
('Siya singh',7876766765,'singhsiya@gmail.com',16000,18,102,'I.T','First'),
('Akankaha Mukharjee',6576788776,'mukharjeeak@gmail.com',15000,20,102,'I.T','First');
select * from student_db
use task_db

select ROW_NUMBER () over (order by student_db.Name desc ) as Sr,
student_db.Name,student_db.Mob_no,fee_payment.Amount,fee_payment.Date,
fee_payment.Mode from fee_payment left join student_db on fee_payment.User_id=student_db.
email_id

select ROW_NUMBER () over (order by sum(amount) desc ) as Sr,
 User_id,sum(amount) as total from Fee_payment group by user_id having sum
(amount) >=12000;

with fee(Sr,total) as
(select row_number() over (order by total_fee desc) as Sr,total_fee as total  from student_db
group by total_fee)
select * from student_db where total_fee=(select total from fee where Sr=3 )

with fee(Sr,total) as
(select row_number() over (order by total_fee desc) as Sr,total_fee as total 
from student_db group by total_fee)
select * from student_db where total_fee in (select total from fee where Sr=3 or Sr=2 )
use task_db
with paidfee(User_id,paid) as
(select User_id,sum(amount) as paid from fee_payment group by User_id)
select student_db.Name,student_db.Mob_no,student_db.email_id,student_db.total_fee,
from student_db left join paidfee on student_db.email_id=paidfee.User_id