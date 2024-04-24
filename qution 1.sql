create database student;
use  student;

create table Student(
roll_no int auto_increment,
s_name varchar(50),
branch varchar(50),
primary key (roll_no)
);

insert into Student(s_name,branch)
values ('Jay','Computer Science'),('Suhani','Electronic and Com'),('Kriti','Electronic and Com');


create table exam(
roll_no int ,
s_code varchar(50),
marks int,
p_code varchar(50),
foreign key (roll_no) references employee(roll_no)
);

insert into exam(roll_no,s_code,marks,p_code)
values(1,'CS11',50,'CS'),(1,'CS12',60,'CS'),(2,'EC101',66,'EC'),(2,'EC102',70,'EC'),(3,'EC101',45,'EC'),(3,'EC102',50,'EC');