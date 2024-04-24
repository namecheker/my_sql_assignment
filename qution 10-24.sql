create database sales;
use sales;

create table salesperson(
s_no int,
sname varchar(50),
city varchar(50),
comm varchar(50),
primary key (s_no)
);
insert into salesperson (s_no,sname,city,comm)
values(1001,'Peel','London','.12'),(1002,'Serres','San Jordan','.13'),(1004,'Motika','London','.11'),(1007,'Raffkin','Barcelona','.15'),(1003,'Axelord','New York','.1');


create table customer(
cnm int,
cname varchar(50),
city varchar(50),
rating int,
s_no int,
primary key (cnm),
foreign key (s_no) references salesperson(s_no)
);

insert into customer(cnm,cname,city,rating,s_no)
values(201,'Hoffmann','London',100,1001),(202,'Giovanne','Roe',200,1003),(203,'Liu','San Jose',300,1002),(204,'Grass','Barcelona',100,1002),(206,'Clemens','London',300,1007),(207,'Pereira','Roe',100,1004);

select sname,city,comm from salesperson where city='London' and  comm> .12 ;

select sname,city from salesperson where city='London' or city='Barcelona' ;

select sname,comm from salesperson where comm between 0.10 and 0.12 ;

select cname,rating from customer where rating > 100;
-- question 18 --
select * from sales.salepeople;
select ord_date,purch_amt,ord_no from orders where salesman_id=5001;
select pro_id,pro_name,pro_price,pro_com from item_mast where pro_price between 200 and 600;
select pro_price from item mast where pro_com=16 and (select avg());
select pro_name,pro_price from item_mast;
select pro_price,pro_name from item_mast where pro_price >=250 order by pro_name and pro_price desc ;
select avg(pro_price) from item_mast;