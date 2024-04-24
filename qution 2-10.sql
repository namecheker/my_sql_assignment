create database employ;
use employ;

create table employee(
employee_id int auto_increment,
first_name varchar(50),
last_name varchar(50),
salaray int,
joining_date varchar(50),
department varchar(50),
primary key (employee_id)
);

insert into employee(first_name,last_name,salaray,joining_date,department)
values ('John','Abraham',1000000,'1 Jan 2013','Banking'),('Michael','Clarke','8000000','1 Jan 2013','Insurance'),('Roy','Thomas',7000000,'1 Jan 2013','Banking'),('Tom','Jose',8000000,'1 Feb 2013','Insurance'),('Jerry','Pinto',6500000,'1 Feb 2013','Insurance'),('Philip','Mathhew',750000,'1 Jan 2013','Services'),
('Abhinandan','Tiwari',650000,'1 Feb 2013','Services'),('Aryan','Laddha',6000000,'1 Jan 2013','Insurance');

create table incentive(
emolyee_ref_id int,
incentive_date varchar(50),
incentive_amt varchar(50),
foreign key (emolyee_ref_id) references employee(employee_id)
);

insert into incentive(emolyee_ref_id,incentive_date,incentive_amt)
values (1,'1 Feb 2013','5000'),(2,'1 Feb 2013','3000'),(3,'1 Feb 2013','4000'),(1,'1 Jan 2013','4500'),(2,'1 Jan 2013','3500');

select first_name from employee where first_name='Tom';
select first_name,joining_date,salaray from employee where employee_id='1';

select * from employee order by first_name;
select * from employee order by salaray desc;

select first_name from employee where first_name='J';

select salaray,department from employee order by salaray;

select employee.first_name,incentive.incentive_amt from employee inner join incentive on incentive_amt order by incentive_amt;