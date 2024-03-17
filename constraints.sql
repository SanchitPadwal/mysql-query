-- constraints -- 
USE Emp;

CREATE table temp1(
    id INT unique
    );
    
INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101); -- give error duplicate entry --

-- ------------------------ --

CREATE TABLE temp2(
        id INT,
        name varchar(50),
        age INT,
        city varchar(50),
        PRIMARY KEY(id,name)   
      );                                            
      
 -- both column make a primary key , combination not same means id and name not same   
 
 CREATE TABLE temp3(
        id INT,
        name varchar(50),
        age INT,
        city varchar(50),
        PRIMARY KEY(id,name)   
      );                                            

-- primary and foreign key -- 

CREATE TABLE Customers(
          ID INT NOT NULL,
          Name varchar(50) NOT NULL,
          Age INT NOT NULL,
          Address CHAR(25),
          PRIMARY KEY(ID) 
          );
          
CREATE TABLE Orders(
         ID INT NOT NULL,
         Date DATETIME,
         Customers_id INT references Customers(ID),
         Amount double,
         PRIMARY KEY(ID)
 );
 
 -- Default ---
 
 CREATE TABLE Emp1(
        id INT,
        Salary INT DEFAULT 25000
  );

INSERT INTO Emp1 (id) VALUES (101); 

SELECT * FROM Emp1;

-- check --

create table city(
    ID int primary key,
    City varchar(50),
    Age int,
    constraint Age_check check (age>=18 & city="pune")
);