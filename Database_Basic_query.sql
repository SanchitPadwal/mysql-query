-- create databse--
create database Emp;

-- use database --
use Emp;

-- create table --
create table Employee(
    EID INT Primary key,
    Ename varchar(50),
    Age INT,
    Address varchar(50));
    
-- insert data into table --     
INSERT into Employee VALUES(1,"VIRAT",26,"DELHI");
INSERT into Employee VALUES(2,"ROHIT",27,"MUMBAI");
INSERT into Employee VALUES(3,"YUVI",30,"PUNJAB");
INSERT into Employee VALUES(4,"MANISH",26,"KOLKATA");
INSERT into Employee VALUES(5,"SIRAJ",29,"BENGALURU");

SELECT * FROM Employee;
     
show databases;    
use COLLEGE;
show tables;



    
drop database IF EXISTS comp;     