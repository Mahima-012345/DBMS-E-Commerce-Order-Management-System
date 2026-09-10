create database e_commerce;
use e_commerce;

create table CUSTOMER(
customer_id int primary key,
customer_name varchar(20) not null,
email varchar(50) unique,
phone_no varchar(10) unique,
address varchar(50) not null,
reg_date date);

desc customer;

insert into customer(customer_id, customer_name, email, phone_no, address, reg_date)
 values(101, 'Abinaya','abinaya@gmail.com','803948475','58 Abi Nagar Coimbatore', '2025-03-28'),
(102, 'Anugraha','anu@gmail.com','903849576','54A XYZ Nagar Karur', '2026-03-01'),
(103, 'Brindha','brindha@gmail.com','953948756', '84 ABC Colony Chennai', '2026-05-18'),
(104, 'Bhuvana','bhuvi@gmail.com','903948450', '44B/1 Railway Colony Dindugal','2026-04-01'),
(105, 'Clara','clara@gmail.com','903778456', '78C UNO Road Salem','2026-05-18'),
(106, 'Susan','susan@gmail.com','903948956','1D/5 Pirivu Road Coimbatore', '2026-03-18'),
(107, 'Josephine','joe@gmail.com','900484756', '99B Anna Nagar Chennai', '2026-03-07'),
(108, 'Agnes','agnes@gmail.com','903944806', '90C Sun Nagar Ramnad', '2026-01-09'),
(109, 'Kaviya','kaviya@gmail.com','907008756', '84/C Friends Road Theni','2026-06-28'),
(110,'Priya','priya@gmail.com','903987456','99B/4 HIJ Colony Thanjavur', '2026-08-28');

select * from customer;
